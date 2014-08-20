;;; 30_whitespace.el

(require 'whitespace)
(setq whitespace-style
      '(face trailing space-after-tab space-before-tab tab-mark))
(set-face-underline 'whitespace-trailing t)
(global-whitespace-mode 1))

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 30_whitespace.el ends here
