;;; 30_auto-complete.el

(when (require 'auto-complete-config nil t)
  (add-to-list 'ac-dictionary-directories "~/.emacs.d/ac-dict")
  (define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
  (ac-config-default))

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 30_auto-complete.el ends here
