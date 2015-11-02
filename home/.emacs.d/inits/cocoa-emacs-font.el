;;; cocoa-emacs-font.el

(when window-system
  (create-fontset-from-ascii-font "Myrica M-14:weight=normal:slant=normal"
                                  nil
                                  "myrica")
  (dolist (target '(japanese-jisx0208
                    japanese-jisx0212
                    japanese-jisx0213.2004-1
                    japanese-jisx0213-2
                    katakana-jisx0201))
    (set-fontset-font "fontset-myrica"
                      target
                      (font-spec :family "Myrica M")
                      nil 'append))
  (add-to-list 'default-frame-alist '(font . "fontset-myrica")))

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; cocoa-emacs-font.el ends here
