;;; 30_git.el

;; magit
(require 'magit)

;; git-gutter
(when (require 'git-gutter nil t)
  (global-git-gutter-mode t)
  (git-gutter:linum-setup))

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 30_git.el ends here
