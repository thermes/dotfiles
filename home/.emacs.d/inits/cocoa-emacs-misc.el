; -*- mode: emacs-lisp; coding: utf-8 -*-

;; This variable describes the behavior of the command key.
(setq ns-command-modifier (quote meta))

;; This variable describes the behavior of the alternate or option key.
(setq ns-alternate-modifier (quote super))

;; バッファにファイルをドラッグドロップした際、新たにファイルを開くように設定
(define-key global-map [ns-drag-file] 'ns-find-file)

;; システムへ修飾キーを渡さない設定
;; TODO: this setting obsolete?
(setq mac-pass-control-to-system nil)
(setq mac-pass-command-to-system nil)
(setq mac-pass-option-to-system nil)

;; 半透明
(add-to-list 'default-frame-alist '(alpha . 95))

;; PATH
(add-to-list 'exec-path "/usr/local/bin")
(add-to-list 'exec-path "/usr/local/opt/coreutils/libexec/gnubin")
(add-to-list 'exec-path "/Users/thermes/.rbenv/shims")
