;;; 10_misc.el

;; unified-diff を用いる
(custom-set-variables '(diff-switches "-u"))

;; GCを減らす
(custom-set-variables '(gc-cons-threshold (* 50 gc-cons-threshold)))

;; 履歴存数を増やす
(custom-set-variables '(history-length 1000))

;; 起動メッセージの非表示
(custom-set-variables '(inhibit-startup-screen t))

;; スタートアップ時のエコー領域メッセージの非表示
(custom-set-variables '(inhibit-startup-echo-area-message -1))

;; カーソルが行頭にあるとき、C-k 1回でその行全体を削除する。
(custom-set-variables '(kill-whole-line t))

;; backup file を作成しない。
(custom-set-variables '(make-backup-files nil))

;;; ログの記録量を増やす
(custom-set-variables '(message-log-max 10000))

;; バッファの最後で next-line を実行しても、新しい行が挿入されない。
(custom-set-variables '(next-line-add-newlines nil))

;; ファイル末の改行がなければ追加
(custom-set-variables '(require-final-newline t))

;; 1行ずつスクロールする。
(custom-set-variables '(scroll-conservatively 1))

;; Non-nil means try to flash the frame to represent a bell.
(custom-set-variables '(visible-bell t))

;; shebangが付いているファイルのパーミッションを保存時に +x にしてくれる
(add-hook 'after-save-hook
          'executable-make-buffer-file-executable-if-script-p)

;; yesで答る部分もyで答えられるように
(defalias 'yes-or-no-p 'y-or-n-p)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 10_misc.el ends here
