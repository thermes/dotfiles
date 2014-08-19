;;; 40_yaml.el

(when (require 'yaml-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
  (add-hook 'yaml-mode-hook
	    '(lambda ()
	       (define-key yaml-mode-map "\C-m" 'newline-and-indent))))

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 40_yaml.el ends here
