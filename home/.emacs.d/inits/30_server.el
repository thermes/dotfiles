; -*- mode: emacs-lisp; coding: utf-8 -*-

(when window-system
  (require 'server)
  (unless (server-running-p)
    (server-start)))
