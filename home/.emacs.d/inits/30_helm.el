;;; 30_helm.el

;; helm
(require 'helm-config)
(helm-mode 1)

(define-key global-map (kbd "M-x") 'helm-M-x)
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)
(define-key global-map (kbd "C-x b") 'helm-buffers-list)

(define-key helm-map (kbd "C-h") 'delete-backward-char)
(define-key helm-map "[TAB]" 'helm-execute-persistent-action)

;; helm-ag
(require 'helm-ag)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 30_helm.el ends here
