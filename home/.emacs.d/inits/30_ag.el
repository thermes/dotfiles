;;; 30_ag.el

(require 'ag)
(custom-set-variables '(ag-highlight-search t)
                      '(ag-reuse-buffers t))

(autoload 'wgrep-ag-setup "wgrep-ag")
(add-hook 'ag-mode-hook 'wgrep-ag-setup)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 30_ag.el ends here
