;;; 30_git.el

;; magit
(require 'magit)

;; git-gutter
(if window-system
  (require 'git-gutter-fringe)
  (require 'git-gutter))
(global-git-gutter-mode t)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 30_git.el ends here
