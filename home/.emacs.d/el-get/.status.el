((ddskk status "installed" recipe
	(:name ddskk :website "http://openlab.ring.gr.jp/skk/ddskk.html" :description "A Japanese input method on Emacs." :type http-tar :options
	       ("xzf")
	       :url "http://openlab.ring.gr.jp/skk/maintrunk/ddskk-20130310.tar.gz" :autoloads nil :features
	       ("skk-setup")
	       :build
	       `(,(concat el-get-emacs " -batch -q -no-site-file -l SKK-MK -f SKK-MK-compile")
		 "mv skk-setup.el.in skk-setup.el")))
 (el-get status "installed" recipe
	 (:name el-get :website "https://github.com/dimitri/el-get#readme" :description "Manage the external elisp bits and pieces you depend upon." :type github :branch "4.stable" :pkgname "dimitri/el-get" :features el-get :info "." :load "el-get.el")))
