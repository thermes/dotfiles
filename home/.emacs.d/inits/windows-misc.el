;;; windows-misc.el

;; ------------------------------------------------------------------------
;; @ setup-cygwin
(setq cygwin-mount-cygwin-bin-directory
      (concat (getenv "CYGWIN_DIR") "\\bin"))
(require 'setup-cygwin)
(require 'shell)
(setq explicit-shell-file-name "zsh.exe")
(setq shell-command-switch "-c")
(setq shell-file-name "zsh.exe")

;; ;; TRAMP
;; (setq exec-path
;; 	(append (list "c:/Program Files/PuTTY") exec-path))
;; (setq tramp-default-method "plink")
;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; windows-misc.el ends here
