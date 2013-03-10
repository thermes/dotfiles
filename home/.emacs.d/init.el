; -*- mode: emacs-lisp; coding: utf-8 -*-
;;; ~/.emacs.d/init.el -- Emacsen initialize file

(add-to-list 'load-path "~/.emacs.d/elisp")

(require 'info)
(add-to-list 'Info-additional-directory-list (expand-file-name "~/.emacs.d/info"))

;; INSTALL
;; (install-elisp "http://svn.coderepos.org/share/lang/elisp/init-loader/init-loader.el")
(require 'init-loader)
(init-loader-load)

;; 00 一般設定
;; 10 起動前実行系
;; 20 関数定義
;; 30 追加機能系
;; 40 メジャーモード
;; 50 マイナーモード
;; 90 起動後実行系
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-names-vector ["#242424" "#e5786d" "#95e454" "#cae682" "#8ac6f2" "#333366" "#ccaa8f" "#f6f3e8"])
 '(custom-safe-themes (quote ("3ec23c5d3a7860cde51f491da4f4a749db19f91e286c0ab5539c1add0218eb74" "42c7f1aa7a3db4ab8efabf1d10c158c2f1414ac57cb207cde815eadad72170d2" default)))
 '(global-hl-line-mode t)
 '(show-paren-mode t))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
