(autoload 'mu-cite-original "mu-cite" nil t)
(add-hook 'mail-citation-hook 'mu-cite-original)

(setq mu-cite-top-format
      '("\n"
	"お疲れ様です。\n"
	"堀之内です。\n"
	"\n"
	"In [ " subject " ]\n"
	" on " date "\n"
	" \"" full-name "\" <" address "> wrote.\n\n"))
(setq mu-cite-prefix-format '(">"))
