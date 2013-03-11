; -*- mode: emacs-lisp; coding: utf-8 -*-

;; Load Custom theme named THEME from its file.
(load-theme 'solarized-dark t)

;; Toggle line highlighting in all buffers (Global Hl-Line mode).
(global-hl-line-mode)

;; Non-nil if Show-Paren mode is enabled.
(show-paren-mode t)
(setq show-paren-style 'mixed)

;; Toggle the tool bar in all graphical frames (Tool Bar mode).
(tool-bar-mode -1)

;; Toggle display of a menu bar on each frame (Menu Bar mode).
(unless window-system
  (menu-bar-mode -1))

;; (if window-system
;;     (progn
;;       ;; カーソル点滅しないように
 

;;      (blink-cursor-mode 0)

;;       ;; highlight the line about point in the current window.
;;       (defface jaspace-highlight-eol-face
;;         '((((class color) (background light)) (:foreground "darkseagreen"))
;;           (((class color) (background dark)) (:foreground "darkcyan")))
;;         "Face used to highlight end-of-line markers when font-lock mode is on.
;; Used only when `jaspace-alternate-eol-string' is non-nil."
;;         :group 'jaspace)

;;       ))
