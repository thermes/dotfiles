(create-fontset-from-ascii-font
 "Ricty-12:weight=normal:slant=normal" nil "ricty")
(set-fontset-font "fontset-ricty"
		  'unicode
		  (font-spec :family "Ricty" :size 12))
(add-to-list 'default-frame-alist '(font . "fontset-ricty"))


