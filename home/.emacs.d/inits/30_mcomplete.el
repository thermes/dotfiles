; -*- mode: emacs-lisp; coding: utf-8 -*-

;; INSTALL
;; (install-elisp "http://homepage1.nifty.com/bmonkey/emacs/elisp/mcomplete.el")
;; (install-elisp "http://www.bookshelf.jp/elc/mcomplete-history.el")

(when (require 'mcomplete nil t)
  (load "mcomplete-history")
  (turn-on-mcomplete-mode))
