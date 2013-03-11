; -*- mode: emacs-lisp; coding: utf-8 -*-
;;; ~/.emacs.d/init.el -- Emacsen initialize file

(require 'package)

; Add package-archives
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/")) ; ついでにmarmaladeも追加

; Initialize
(package-initialize)

; melpa.el
(require 'melpa)


(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (goto-char (point-max))
    (eval-print-last-sexp)))
(el-get 'sync)




(add-to-list 'load-path "~/.emacs.d/elisp")

(require 'info)
(add-to-list 'Info-additional-directory-list (expand-file-name "~/.emacs.d/info"))

(require 'init-loader)
(init-loader-load)

;; 00 一般設定
;; 10 起動前実行系
;; 20 関数定義
;; 30 追加機能系
;; 40 メジャーモード
;; 50 マイナーモード
;; 90 起動後実行系
