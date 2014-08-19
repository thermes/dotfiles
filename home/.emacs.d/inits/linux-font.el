;;; linux-font.el

(when (window-system)
  (create-fontset-from-ascii-font "Ricty-12:weight=normal:slant=normal"
                                  nil
                                  "ricty")
  (dolist (target '(japanese-jisx0208
                    japanese-jisx0212
                    japanese-jisx0213.2004-1
                    japanese-jisx0213-2
                    katakana-jisx0201))
    (set-fontset-font "fontset-ricty"
                      target
                      (font-spec :family "Ricty")
                      nil 'append))
  (add-to-list 'default-frame-alist '(font . "fontset-ricty")))

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; linux-font.el ends here
