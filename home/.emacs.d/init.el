; -*- mode: emacs-lisp; coding: utf-8 -*-
;;; ~/.emacs.d/init.el -- Emacsen initialize file

;; package.el & MELPA
(require 'package)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("tromey" . "http://tromey.com/elpa/"))
(package-initialize)
(require 'melpa)

;; el-get
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")
(unless (require 'el-get nil t)
  (url-retrieve
   "https://raw.github.com/dimitri/el-get/master/el-get-install.el"
   (lambda (s)
     (goto-char (point-max))
     (eval-print-last-sexp))))
(el-get 'sync)

;; Cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; local
(let ((default-directory "~/.emacs.d/elisp"))
  (add-to-list 'load-path default-directory)
  (normal-top-level-add-subdirs-to-load-path))

(require 'info)
(add-to-list 'Info-additional-directory-list (expand-file-name "~/.emacs.d/info"))

;; run init-loader
(require 'init-loader)
(init-loader-load)

;; 00 一般設定
;; 10 起動前実行系
;; 20 関数定義
;; 30 追加機能系
;; 40 メジャーモード
;; 50 マイナーモード
;; 90 起動後実行系
