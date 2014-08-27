;;; 30_direx.el

(require 'direx)
(require 'direx-project)

(defun direx:jump-to-project-directory ()
  (interactive)
  (let ((result (ignore-errors
                  (direx-project:jump-to-project-root-other-window)
                  t)))
    (unless result
      (direx:jump-to-directory-other-window))))

(push '(direx:direx-mode :position left :width 30 :dedicated t)
      popwin:special-display-config)

(global-set-key (kbd "C-x C-d") 'direx:jump-to-project-directory)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 30_direx.el ends here
