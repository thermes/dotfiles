;;; 90_windowsystem.el

(when window-system
  ;; If non-nil, always use find-file-other-window to open dropped files.
  (custom-set-variables '(dnd-open-file-other-window nil))

  ;; Non-nil if Blink-Cursor mode is enabled.
  (blink-cursor-mode 0))

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 90_windowsystem.el ends here
