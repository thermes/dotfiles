; -*- mode: emacs-lisp; coding: utf-8 -*-

;; Load Custom theme named THEME from its file.
(load-theme 'solarized-dark t)

;; Toggle line highlighting in all buffers (Global Hl-Line mode).
(global-hl-line-mode)

;; Toggle Linum mode in all buffers.
(global-linum-mode t)
(setq linum-format "%4d")

;; Non-nil if Show-Paren mode is enabled.
(show-paren-mode t)
(setq show-paren-style 'mixed)

;; Toggle the tool bar in all graphical frames (Tool Bar mode).
(tool-bar-mode -1)

;; Toggle display of a menu bar on each frame (Menu Bar mode).
(unless window-system
  (menu-bar-mode -1))

(setq jaspace-highlight-tabs t)
