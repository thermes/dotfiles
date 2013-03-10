;;; -*- mode: emacs-lisp; coding: utf-8 -*-
;;; ~/.emacs.d/init.el -- Emacsen initialize file

(add-to-list 'load-path "~/.emacs.d/elisp")

(require 'info)
(add-to-list 'Info-additional-directory-list (expand-file-name "~/.emacs.d/info"))

;; INSTALL
;; (install-elisp "http://svn.coderepos.org/share/lang/elisp/init-loader/init-loader.el")
(require 'init-loader)
(init-loader-load)

;; 00 一般設定;; 10 起動前実行系
;; 20 関数定義
;; 30 追加機能系
;; 40 メジャーモード
;; 50 マイナーモード
;; 90 起動後実行系
