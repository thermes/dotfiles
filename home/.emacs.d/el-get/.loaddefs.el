;;; .loaddefs.el --- automatically extracted autoloads
;;
;;; Code:


;;;### (autoloads (el-get-checksum el-get-make-recipes el-get-cd
;;;;;;  el-get-self-update el-get-update-all el-get-version) "../../.homesick/repos/thermes/dotfiles/home/.emacs.d/el-get/el-get/el-get"
;;;;;;  "el-get/el-get.el" "0365c8b39ba4508971d8f28aa88b64f9")
;;; Generated autoloads from el-get/el-get.el

(autoload 'el-get-version "../../.homesick/repos/thermes/dotfiles/home/.emacs.d/el-get/el-get/el-get" "\
Message the current el-get version

\(fn)" t nil)

(autoload 'el-get-update-all "../../.homesick/repos/thermes/dotfiles/home/.emacs.d/el-get/el-get/el-get" "\
Performs update of all installed packages.

\(fn &optional NO-PROMPT)" t nil)

(autoload 'el-get-self-update "../../.homesick/repos/thermes/dotfiles/home/.emacs.d/el-get/el-get/el-get" "\
Update el-get itself.  The standard recipe takes care of reloading the code.

\(fn)" t nil)

(autoload 'el-get-cd "../../.homesick/repos/thermes/dotfiles/home/.emacs.d/el-get/el-get/el-get" "\
Open dired in the package directory.

\(fn PACKAGE)" t nil)

(autoload 'el-get-make-recipes "../../.homesick/repos/thermes/dotfiles/home/.emacs.d/el-get/el-get/el-get" "\
Loop over `el-get-sources' and write a recipe file for each
entry which is not a symbol and is not already a known recipe.

\(fn &optional DIR)" t nil)

(autoload 'el-get-checksum "../../.homesick/repos/thermes/dotfiles/home/.emacs.d/el-get/el-get/el-get" "\
Compute the checksum of the given package, and put it in the kill-ring

\(fn PACKAGE &optional PACKAGE-STATUS-ALIST)" t nil)

;;;***

;;;### (autoloads (el-get-list-packages) "../../.homesick/repos/thermes/dotfiles/home/.emacs.d/el-get/el-get/el-get-list-packages"
;;;;;;  "el-get/el-get-list-packages.el" "0017ef7cd7ec8bd66a6bf96c1f931d75")
;;; Generated autoloads from el-get/el-get-list-packages.el

(autoload 'el-get-list-packages "../../.homesick/repos/thermes/dotfiles/home/.emacs.d/el-get/el-get/el-get-list-packages" "\
Display a list of packages.

\(fn)" t nil)

;;;***

;;;### (autoloads nil nil ("../../../../../../../.emacs.d/el-get/jaspace/jaspace.el"
;;;;;;  "el-get/el-get-list-packages.el" "el-get/el-get.el") (20797
;;;;;;  57692 689859))

;;;***

(provide '.loaddefs)
;; Local Variables:
;; version-control: never
;; no-update-autoloads: t
;; coding: utf-8
;; End:
;;; .loaddefs.el ends here
