(require 'w3m-load)
;(require 'mime-w3m)
(setq w3m-home-page "about://bookmark/")
(setq w3m-use-cookies t)

(setq browse-url-browser-function 'w3m-browse-url)
(global-set-key (kbd "C-x m") 'browse-url-at-point)

