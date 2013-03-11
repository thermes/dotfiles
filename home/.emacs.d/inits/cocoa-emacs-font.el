; -*- mode: emacs-lisp; coding: utf-8 -*-

(create-fontset-from-ascii-font
 "Ricty-14:weight=normal:slant=normal" nil "ricty")
(set-fontset-font "fontset-ricty"
		  'unicode
		  (font-spec :family "Ricty" :size 14))
(add-to-list 'default-frame-alist '(font . "fontset-ricty"))
