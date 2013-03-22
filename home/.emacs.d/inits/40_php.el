; -*- mode: emacs-lisp; coding: utf-8 -*-

(when (require 'php-mode nil t)
  (add-to-list 'auto-mode-alist
	       '("\\.php[34]?\\'\\|\\.phtml\\'" . php-mode)))
