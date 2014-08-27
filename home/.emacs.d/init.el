;;; ~/.emacs.d/init.el -- Emacsen initialize file

;; Cask
(unless (require 'cask nil t)
  (require 'cask "~/.cask/cask.el"))
(cask-initialize)

(require 'exec-path-from-shell)
(exec-path-from-shell-initialize)

;; local
(let ((default-directory "~/.emacs.d/elisp"))
  (add-to-list 'load-path default-directory)
  (normal-top-level-add-subdirs-to-load-path))

;; run init-loader
(require 'init-loader)
(custom-set-variables '(init-loader-show-log-after-init 'error-only))
(init-loader-load)

;; 00 一般設定
;; 10 起動前実行系
;; 20 関数定義
;; 30 追加機能系
;; 40 メジャーモード
;; 50 マイナーモード
;; 90 起動後実行系


;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; init.el ends here
