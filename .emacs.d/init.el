(require 'package)

(defmacro append-to-list (target suffix)
  "Append SUFFIX to TARGET in place."
  `(setq ,target (append ,target ,suffix)))

(append-to-list package-archives
  '(("melpa" . "http://melpa.org/packages/")
	("melpa-stable" . "http://stable.melpa.org/packages/")
	("elpa" . "https://elpa.gnu.org/packages/")
	("org-elpa", "https://orgmode.org/elpa/")))

(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

;; USE PACKAGE STUFF
(require 'use-package)
(setq
  use-package-always-ensure t
  use-package-verbose t)

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; Load Modules
(load-file (expand-file-name "~/.emacs.d/ui.el"))
(load-file (expand-file-name "~/.emacs.d/mappings.el"))
(load-file (expand-file-name "~/.emacs.d/packages.el"))
(load-file (expand-file-name "~/.emacs.d/settings.el"))
(load-file (expand-file-name "~/.emacs.d/lsp.el"))
