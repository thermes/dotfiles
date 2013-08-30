; -*- mode: emacs-lisp; coding: utf-8 -*-

(autoload 'perl-mode "cperl-mode" "alternate mode for editing Perl programs" t)
;(defalias 'perl-mode 'cperl-mode)
(setq cperl-indent-level 4)
(setq cperl-continued-statement-offset 4)
(setq cperl-comment-column 40)

(setq cperl-indent-parens-as-block t)
(setq cperl-close-paren-offset -4)
(setq cperl-label-offset -4)
(setq cperl-highlight-variables-indiscriminately t)