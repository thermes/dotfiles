;;; 30_whitespace.el

(require 'whitespace)
(custom-set-variables '(whitespace-style '(face tabs trailing space-before-tab tab-mark)))

(set-face-attribute 'whitespace-tab nil
                    :foreground "#205050"
                    :background nil)
(set-face-attribute 'whitespace-trailing nil
                    :foreground "#a57705"
                    :background nil
                    :underline t)
(global-whitespace-mode 1)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 30_whitespace.el ends here
