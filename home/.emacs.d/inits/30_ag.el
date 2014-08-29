;;; 30_ag.el

(require 'ag)
(setq ag-highlight-search t)
(setq ag-reuse-buffers t)

(autoload 'wgrep-ag-setup "wgrep-ag")
(add-hook 'ag-mode-hook 'wgrep-ag-setup)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 30_ag.el ends here
