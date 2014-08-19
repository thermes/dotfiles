;;; 40_perl.el

(autoload 'perl-mode "cperl-mode" "alternate mode for editing Perl programs" t)
(setq cperl-indent-level 4)
(setq cperl-continued-statement-offset 4)
(setq cperl-comment-column 40)

(setq cperl-indent-parens-as-block t)
(setq cperl-close-paren-offset -4)
(setq cperl-label-offset -4)
(setq cperl-highlight-variables-indiscriminately t)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 40_perl.el ends here
