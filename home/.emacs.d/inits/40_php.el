;;; 40_php.el

(when (require 'php-mode nil t)
  (add-to-list 'auto-mode-alist
	       '("\\.php[34]?\\'\\|\\.phtml\\'" . php-mode)))

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 40_php.el ends here
