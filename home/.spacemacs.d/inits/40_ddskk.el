;;; 40_ddskk.el

(setq skk-user-directory "~/.ddskk")

(setq default-input-method "japanese-skk")
(global-set-key (kbd "C-x C-j") 'skk-mode)
(global-set-key (kbd "C-x j") 'skk-auto-fill-mode)

;; SKK 辞書サーバーを走らせているホスト名。
(setq skk-server-host "localhost")
(setq skk-server-portnum 1178)

;; Non-nil であれば、見出し語と送り仮名が一致した候補を優先して表示する。
(setq skk-henkan-strict-okuri-precedence t)

;; Non-nil であれば、▼モードで改行をタイプしても確定するのみで改行しない。
(setq skk-egg-like-newline t)

;; Non-nil であれば、送りありの登録時に、余計な仮名をチェックする。
(setq skk-check-okurigana-on-touroku 'ask)

;; Non-nil であれば、括弧と閉括弧をまとめて挿入する。
;; 例えば、\"「\" を入力したときに \"」\" を自動的に挿入し、両かぎかっこの間に
;; カーソルを移動する。
;; 挿入する文字列は、`skk-auto-paren-string-alist' で指定する。"
(setq skk-auto-insert-paren t)

;; Non-nil であれば、SKK のメッセージとエラーを日本語で表示する。
;; nil であれば、英語で表示する。"
(setq skk-japanese-message-and-error t)

;; Non-nil であれば、複数の SKK による個人辞書の共有を考慮して辞書を更新する。
(setq skk-share-private-jisyo t)

;; Non-nil なら 半角カナと Japanese Roman の入力機能が利用可能になる。
(setq skk-use-jisx0201-input-method t)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 40_ddskk.el ends here
