; -*- mode: emacs-lisp; coding: utf-8 -*-

;; ruby-mode.el
(autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

;; inf-ruby.el
(autoload 'inf-ruby "inf-ruby" "Run an inferior Ruby process" t)
(autoload 'inf-ruby-setup-keybindings "inf-ruby" "" t)
(eval-after-load 'ruby-mode
  '(add-hook 'ruby-mode-hook 'inf-ruby-setup-keybindings))

;; ruby-end.el
(require 'ruby-end)
(setq ruby-end-insert-newline nil)

(eval-after-load 'ruby-mode
  '(add-hook 'ruby-mode-hook
	     '(lambda ()
		(electric-pair-mode t)
		(electric-indent-mode nil)
		;; (electric-layout-mode nil)
		)))
