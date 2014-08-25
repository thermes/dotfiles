;;; 30_helm.el

;; helm
(require 'helm-config)
(helm-mode 1)

(set-face-attribute 'helm-selection nil
                    :background "#fdf6e3")
(set-face-attribute 'helm-source-header nil
                    :height 1.0)

(global-set-key (kbd "C-c h") 'helm-mini)

(define-key helm-map (kbd "C-h") 'delete-backward-char)

;; helm-ag
(require 'helm-ag)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 30_helm.el ends here
