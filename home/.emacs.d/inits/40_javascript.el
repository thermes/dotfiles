;;; 40_javascript.el

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))
(add-hook 'js-mode-hook 'js2-minor-mode)
(add-to-list 'interpreter-mode-alist '("node" . js2-mode))
(add-hook 'js2-mode-hook '(lambda () (custom-set-variables '(tab-width 4))))

(require 'coffee-mode)
(custom-set-variables '(coffee-tab-width 2))

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 40_javascript.el ends here
