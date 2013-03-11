; -*- mode: emacs-lisp; coding: utf-8 -*-

(when window-system
    ;; If non-nil, always use find-file-other-window to open dropped files.
    (setq dnd-open-file-other-window nil)

    ;; Non-nil if Blink-Cursor mode is enabled.
    (blink-cursor-mode 0)
    )
