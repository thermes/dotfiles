; -*- mode: emacs-lisp; coding: utf-8 -*-

(create-fontset-from-ascii-font
 "Ricty-14:weight=normal:slant=normal" nil "ricty")
(dolist (target '(japanese-jisx0208
		  japanese-jisx0212
		  japanese-jisx0213.2004-1
		  japanese-jisx0213-2
		  katakana-jisx0201))
  (set-fontset-font "fontset-ricty"
		    target
		    (font-spec :family "Ricty")
		    nil 'append))
(add-to-list 'default-frame-alist '(font . "fontset-ricty"))