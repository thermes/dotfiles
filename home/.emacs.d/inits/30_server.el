;;; 30_server.el

(when window-system
  (require 'server)
  (unless (server-running-p)
    (server-start)))

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 30_server.el ends here
