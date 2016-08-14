;;; 30_dash.el

(setq dash-at-point-mode-alist
      (delete (assoc 'enh-ruby-mode dash-at-point-mode-alist) dash-at-point-mode-alist))
(add-to-list 'dash-at-point-mode-alist
             '(enh-ruby-mode . "ruby-ja,ruby,rubygems,rails"))
;; '(enh-ruby-mode . "ruby,ruby-ja,rubygems,rails"))

;; Local Variables:
;; coding: utf-8
;; indent-tabs-mode: nil
;; End:

;;; 30_dash.el ends here
