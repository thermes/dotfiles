; -*- mode: emacs-lisp; coding: utf-8 -*-

(require 'php-mode)
(add-to-list 'auto-mode-alist
     	     '("\\.php[34]?\\'\\|\\.phtml\\'" . php-mode))
