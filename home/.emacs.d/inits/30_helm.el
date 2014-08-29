;;; 30_helm.el

;; I'm DDSKK user.
(custom-set-variables '(dired-bind-jump nil))

;; helm
(require 'helm-config)
(helm-mode 1)

(add-to-list 'helm-completing-read-handlers-alist '(find-file . nil))

(define-key global-map (kbd "C-c h") 'helm-mini)
(define-key global-map (kbd "M-x") 'helm-M-x)
(define-key global-map (kbd "M-y") 'helm-show-kill-ring)
(define-key global-map (kbd "C-x C-b") 'helm-buffers-list)

(define-key helm-map (kbd "C-h") 'delete-backward-char)
(define-key helm-find-files-map (kbd "C-h") 'delete-backward-char)

(set-face-attribute 'helm-selection nil
                    :background "#fdf6e3")
(set-face-attribute 'helm-source-header nil
                    :height 1.0)

;; helm-ag
(require 'helm-ag)

;; helm-descbinds
(require 'helm-descbinds)
(helm-descbinds-mode 1)

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 30_helm.el ends here
