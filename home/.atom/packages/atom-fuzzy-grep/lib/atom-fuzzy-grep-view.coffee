{$$, View} = require 'space-pen'
{SelectListView} = require 'atom-space-pen-views'
{BufferedProcess, Point} = require 'atom'
path = require 'path'
Runner = require './runner'
escapeStringRegexp = require 'escape-string-regexp'
fuzzyFilter = null

module.exports =
class GrepView extends SelectListView
  preserveLastSearch: false
  maxItems: 100
  minFilterLength: 3
  showFullPath: false
  runner: null
  lastSearch: ''
  isFileFiltering: false

  initialize: ->
    super
    @filterEditorView.getModel().getBuffer().onDidChange =>
      unless @isFileFiltering
        @grepProject()

    @panel = atom.workspace.addModalPanel(item: this, visible: false)
    @addClass 'atom-fuzzy-grep'
    @runner = new Runner
    @setupConfigs()

  setupConfigs: ->
    atom.config.observe 'atom-fuzzy-grep.minSymbolsToStartSearch', =>
      @minFilterLength = atom.config.get 'atom-fuzzy-grep.minSymbolsToStartSearch'
    atom.config.observe 'atom-fuzzy-grep.maxCandidates', =>
      @maxItems = atom.config.get 'atom-fuzzy-grep.maxCandidates'
    atom.config.observe 'atom-fuzzy-grep.preserveLastSearch', =>
      @preserveLastSearch = atom.config.get('atom-fuzzy-grep.preserveLastSearch') is true
    atom.config.observe 'atom-fuzzy-grep.escapeSelectedText', =>
      @escapeSelectedText = atom.config.get('atom-fuzzy-grep.escapeSelectedText') is true
    atom.config.observe 'atom-fuzzy-grep.showFullPath', =>
      @showFullPath = atom.config.get 'atom-fuzzy-grep.showFullPath'

  getFilterKey: ->
    if @isFileFiltering then 'filePath' else ''

  getFilterQuery: ->
    if @isFileFiltering then @filterEditorView.getText() else ''

  viewForItem: ({filePath, line, content, error})->
    that = @
    if error
      @setError error
      return
    $$ ->
      @li class: 'two-lines', =>
        displayedPath = if that.showFullPath then filePath else path.basename filePath
        @div "#{displayedPath}:#{line+1}", class: 'primary-line file icon icon-file-text', 'data-name': displayedPath
        @div content, class: 'secondary-line'

  confirmed: (item)->
    @lastSearch = @filterEditorView.getText()
    @openFile item.fullPath, item.line, item.column
    @cancelled()

  openFile: (filePath, line, column)->
    if filePath
      atom.workspace.open(filePath).done =>
        @moveCursor line, column

  moveCursor: (line=-1, column=0)->
    return unless line >=0

    if textEditor = atom.workspace.getActiveTextEditor()
      position = new Point(line)
      textEditor.scrollToBufferPosition(position, center: true)
      textEditor.setCursorBufferPosition(position)
      if column > 0
        textEditor.moveRight column
      else
        textEditor.moveToFirstCharacterOfLine()

  cancelled: ->
    @items = []
    @isFileFiltering = false
    @panel.hide()
    @killRunner()

  grepProject: ->
    return if @minFilterLength and @filterEditorView.getText().length < @minFilterLength
    @killRunner()
    @runner.run(@filterEditorView.getText(), @getProjectPath(), @setItems.bind(@))

  killRunner: ->
    @runner?.destroy()

  getProjectPath: ->
    homeDir = process.env.HOME
    editor = atom.workspace.getActiveTextEditor()
    return atom.project.getPaths()[0] || homeDir unless editor
    if editor.getPath()
      atom.project.relativizePath(editor.getPath())[0] || path.dirname(editor.getPath())
    else
      atom.project.getPaths()[0] || homeDir

  setSelection: ->
    editor = atom.workspace.getActiveTextEditor()
    if editor?.getSelectedText()
      text = editor.getSelectedText()
      @filterEditorView.setText(
        if @escapeSelectedText then escapeStringRegexp(text) else text)

  destroy: ->
    @detach()

  toggle: ->
    if @panel?.isVisible()
      @panel?.show()
    else
      @storeFocusedElement()
      @filterEditorView.setText(@lastSearch || '') if @preserveLastSearch
      @panel.show()
      @focusFilterEditor()
      @setSelection()

  toggleLastSearch: ->
    @toggle()
    @filterEditorView.setText(@lastSearch || '')

  toggleFileFilter: ->
    @isFileFiltering = !@isFileFiltering
    if @isFileFiltering
      @tmpSearchString = @filterEditorView.getText()
      @filterEditorView.setText('')
    else
      @filterEditorView.setText(@tmpSearchString)
      @tmpSearchString = ''
