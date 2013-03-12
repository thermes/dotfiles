; -*- mode: emacs-lisp; coding: utf-8 -*-

;; Interactively Do Things (highly recommended, but not strictly required)
;(require 'ido)
;(ido-mode t)

;; Rinari
(when (require 'rinari nil t)
  (global-rinari-mode))
