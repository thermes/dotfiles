;;; 10_misc.el

(custom-set-variables
 ;; カーソルが行頭にあるとき、C-k 1回でその行全体を削除する。
 '(kill-whole-line t)

 ;; ファイル末の改行がなければ追加
 '(require-final-newline t)

 ;; Non-nil means try to flash the frame to represent a bell.
 '(visible-bell t)
 )

;; shebangが付いているファイルのパーミッションを保存時に +x にしてくれる
(add-hook 'after-save-hook
          'executable-make-buffer-file-executable-if-script-p)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 10_misc.el ends here
