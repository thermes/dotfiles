; -*- mode: emacs-lisp; coding: utf-8 -*-

(add-to-list 'load-path "~/.emacs.d/elisp/rhtml")
(when (require 'rhtml-mode nil t)
  (add-hook 'rhtml-mode-hook
	    (lambda () (rinari-launch))))
