;;; 30_flycheck.el

(custom-set-variables '(flycheck-check-syntax-automatically '(mode-enabled save)))

(add-hook 'after-init-hook #'global-flycheck-mode)
(add-hook 'ruby-mode-hook
          '(lambda ()
             (setq flycheck-checker 'ruby-rubocop)
             (flycheck-mode 1)))

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 30_flycheck.el ends here
