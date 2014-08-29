;;; 40_ruby.el

;; ruby-mode.el
(autoload 'ruby-mode "ruby-mode" "Major mode for ruby files" t)
(add-to-list 'auto-mode-alist '("\\.rb$" . ruby-mode))
(add-to-list 'interpreter-mode-alist '("ruby" . ruby-mode))

;; inf-ruby.el
(autoload 'inf-ruby-minor-mode "inf-ruby" "Run an inferior Ruby process" t)
(add-hook 'ruby-mode-hook 'inf-ruby-minor-mode)
(setq inf-ruby-default-implementation "pry")

;; ruby-end.el
(require 'ruby-end)
(custom-set-variables '(ruby-end-insert-newline nil))

(eval-after-load 'ruby-mode
  '(add-hook 'ruby-mode-hook
             '(lambda ()
                (electric-pair-mode t)
                (electric-indent-mode nil)
                )))

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 40_ruby.el ends here
