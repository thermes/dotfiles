;;; 30_wdired.el

(when (require 'wdired nil t)
  (define-key dired-mode-map "r" 'wdired-change-to-wdired-mode))

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 30_wdired.el ends here
