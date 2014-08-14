; -*- mode: emacs-lisp; coding: utf-8 -*-

(when (require 'rhtml-mode nil t)
  (add-hook 'rhtml-mode-hook
	    (lambda () (rinari-launch))))
