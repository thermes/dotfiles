; -*- mode: emacs-lisp; coding: utf-8 -*-
;;; ~/.emacs.d/init.el -- Emacsen initialize file

;; Cask
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; local
(let ((default-directory "~/.emacs.d/elisp"))
  (add-to-list 'load-path default-directory)
  (normal-top-level-add-subdirs-to-load-path))

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
