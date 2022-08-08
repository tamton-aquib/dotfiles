(require 'package)

;; Bootstrapping straight
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 5))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/raxod502/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)


(defmacro append-to-list (target suffix)
  "Append SUFFIX to TARGET in place."
  `(setq ,target (append ,target ,suffix)))

;;; Code:
(append-to-list package-archives
	     '(("melpa" . "http://melpa.org/packages/")
	       ("melpa-stable" . "http://stable.melpa.org/packages/")
	       ("elpa" . "https://elpa.gnu.org/packages/")
	       ("org-elpa", "https://orgmode.org/elpa/")))

(setq custom-file "~/.emacs.d/custom.el")
(load custom-file 'noerror)

;; Load Modules
(load-file (expand-file-name "~/.emacs.d/mappings.el"))
(load-file (expand-file-name "~/.emacs.d/packages.el"))
(load-file (expand-file-name "~/.emacs.d/lsp.el"))
(load-file (expand-file-name "~/.emacs.d/settings.el"))
