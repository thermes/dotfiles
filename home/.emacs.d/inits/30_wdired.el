; -*- mode: emacs-lisp; coding: utf-8 -*-

(when (require 'wdired nil t)
  (define-key dired-mode-map "r" 'wdired-change-to-wdired-mode))
