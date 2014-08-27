;;; 10_appearance.el

;; Load Custom theme named THEME from its file.
(load-theme 'solarized-dark t)

;; Toggle line highlighting in all buffers (Global Hl-Line mode).
(global-hl-line-mode)

;; カーソル位置の桁数をモードラインに表示する。
(column-number-mode t)

;; カーソル位置の行数をモードラインに表示する。
(line-number-mode t)

;; Non-nil if Show-Paren mode is enabled.
(show-paren-mode t)
(setq show-paren-style 'mixed)

;; Toggle the tool bar in all graphical frames (Tool Bar mode).
(tool-bar-mode -1)

;; Toggle display of a menu bar on each frame (Menu Bar mode).
(unless window-system
  (menu-bar-mode -1))

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 10_appearance.el ends here
