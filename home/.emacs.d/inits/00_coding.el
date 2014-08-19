;;; 00_coding.el

(set-language-environment "Japanese")
(prefer-coding-system 'utf-8)

(when (eq system-type 'darwin)
  (require 'ucs-normalize)
  (set-file-name-coding-system 'utf-8-hfs)
  (setq locale-coding-system 'utf-8-hfs))

(when (eq system-type 'windows-nt)
  (set-file-name-coding-system 'cp932)
  (setq locale-coding-system 'cp932))

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 00_coding.el ends here
