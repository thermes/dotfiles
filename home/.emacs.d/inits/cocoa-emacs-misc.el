;;; cocoa-emacs-misc.el

;; バッファにファイルをドラッグドロップした際、新たにファイルを開くように設定
(define-key global-map [ns-drag-file] 'ns-find-file)

;; システムへ修飾キーを渡さない設定
;; TODO: this setting obsolete?
(setq mac-pass-control-to-system nil)
(setq mac-pass-command-to-system nil)
(setq mac-pass-option-to-system nil)

;; 半透明
(add-to-list 'default-frame-alist '(alpha . 95))

;; PATH
(add-to-list 'exec-path "/usr/local/bin")
(add-to-list 'exec-path "/usr/local/opt/coreutils/libexec/gnubin")
(add-to-list 'exec-path "/Users/thermes/.rbenv/shims")

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; cocoa-emacs-misc.el ends here
