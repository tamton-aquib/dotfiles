(require 'package)

;; Window Stuff
(setq inhibit-startup-message t)
(menu-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)
(scroll-bar-mode -1)
(setq visual-bell t)
(setq ring-bell-function 'ignore)
(add-hook 'emacs-startup-hook 'toggle-frame-maximized)
(set-frame-parameter (selected-frame) 'alpha '(90 . 90))
(add-to-list 'default-frame-alist '(alpha . (90 . 90)))
(set-frame-parameter (selected-frame) 'fullscreen 'maximized)
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(setq scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)

;; Default Settings
(setq-default tab-width 4)
(setq-default evil-shift-width tab-width)
(setq make-backup-files nil)
(column-number-mode t)
(global-display-line-numbers-mode +1)
(setq gc-cons-threshold (* 50 1000 1000))

;; NOICE and temp
(set-frame-font "Cascadia Code" nil t)
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)
(setq tab-always-indent 'complete)
(electric-pair-mode 1)
(setq zone-when-idle 10)


;; UTILS and bootstrapping stuff
(defmacro append-to-list (target suffix)
  "Append SUFFIX to TARGET in place"
  `(setq ,target (append ,target ,suffix)))

(append-to-list package-archives
		'(("melpa" . "http://melpa.org/packages/")
		  ("melpa-stable" . "http://stable.melpa.org/packages/")
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

(add-to-list 'default-frame-alist' '(fullscreen . maximised))

(use-package doom-themes
  :ensure t
  :config
  (load-theme 'doom-gruvbox t))

(use-package ivy
  :init
  (ivy-mode 1)
  (unbind-key "S-SPC" ivy-minibuffer-map)
  (setq ivy-height 15
	ivy-use-virtual-buffers t
	ivy-use-selectable-prompt t))

(use-package counsel
  :after ivy
  :init
  (counsel-mode 1)
  :bind (:map ivy-minibuffer-map))

(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  (define-key evil-insert-state-map "jk" 'evil-normal-state))


(use-package evil-escape
  :config
  (evil-escape-mode)
  (setq-default evil-escape-key-sequence "jk"))

;; (use-package smartparens
;;   :ensure t
;;   :diminish smartparens-mode
;;   :config
;;   (progn
;;     (require 'smartparens-config)
;;     (smartparens-global-mode 1)
;;     (show-paren-mode 1)))
(use-package parinfer
  :disabled
  :hook ((clojure-mode . parinfer-mode)
         (emacs-lisp-mode . parinfer-mode)
         (common-lisp-mode . parinfer-mode)
         (scheme-mode . parinfer-mode)
         (lisp-mode . parinfer-mode))
  :config
  (setq parinfer-extensions
      '(defaults       ; should be included.
        pretty-parens  ; different paren styles for different modes.
        evil           ; If you use Evil.
        smart-tab      ; C-b & C-f jump positions and smart shift with tab & S-tab.
        smart-yank)))  ; Yank behavior depend on mode.

(use-package company
  :ensure t
  :diminish company-mode
  :config
  (add-hook 'after-init-hook #'global-company-mode))

(use-package dashboard
  :custom
  (initial-buffer-choice (lambda () (get-buffer "*dashboard*")))
  (dashboard-banner-logo "")
  (dashboard-startup-banner 'logo)
  (dashboard-center-content t)
  (dashboard-show-shortcuts t)
  (dashboard-projects-backend 'project-el)
  (dashboard-items '((recents . 5)
					 (bookmarks . 5)
                     (projects . 5)))
  (dashboard-set-heading-icons t)
  (dashboard-set-file-icons t)
  (dashboard-set-init-info t)
  :hook
  (dashboard-mode . (lambda () (setq global-hl-line-mode nil)))
  :config
  (dashboard-setup-startup-hook))
(use-package page-break-lines
  :after dashboard
  :config
  (page-break-lines-mode))

(use-package doom-modeline
  :ensure t
  :init
  (doom-modeline-mode 1)
  :config
  (setq doom-modeline-height 35)
	(setq doom-modeline--eglot t
        doom-modeline--project-root t))

(use-package evil-nerd-commenter
  :bind ("M-/" . evilnc-comment-or-uncomment-lines))

(use-package eglot
  :ensure t
  :defer t
  :init
  (setq eglot-sync-connect 1
        eglot-connect-timeout 10
        eglot-autoshutdown t
        eglot-send-changes-idle-time 0.5
        eglot-auto-display-help-buffer nil)
  (setq eglot-stay-out-of '(flycheck))
  :hook
  ((c-mode c++-mode rust-mode js2-mode typescript-mode) . eglot-ensure)
  :bind
  (:map eglot-mode-map
        ("C-c l r"   . 'eglot-rename)
        ("C-c l a"   . 'eglot-code-actions)
        ("C-c l f t" . 'eglot-find-typeDefinition)
        ("C-c l f d" . 'eglot-find-declaration)
        ("C-c l f m" . 'eglot-find-implementation)
        ("C-c l q"   . 'eglot-code-action-quickfix)
        ("C-c l b"   . 'eglot-format-buffer)
        ("C-c l o"   . 'eglot-code-action-organize-imports)
        ("C-c l h"   . 'eldoc-box-eglot-help-at-point)
        ("C-c l c"   . 'consult-eglot-symbols)))

(use-package ccls
  :hook ((c-mode c++-mode objc-mode cuda-mode) .
         (lambda () (require 'ccls) (lsp))))

(use-package rust-mode
  :mode "\\.rs\\'"
  :init (setq rust-format-on-save t))
(use-package cargo
  :defer t)

(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))
(use-package rainbow-mode
  :defer t
  :hook (org-mode
         emacs-lisp-mode
         web-mode
         typescript-mode
         js2-mode))

;; (use-package eshell-toggle
;;   :bind ("SPC-t" . eshell-toggle)
;;   :custom
;;   (eshell-toggle-size-fraction 3)
;;   (eshell-toggle-use-projectile-root t)
;;   (eshell-toggle-run-command nil))

(use-package centaur-tabs
  :demand
  :config
  (centaur-tabs-mode t)
  (setq centaur-tab-style "bar")
  (setq centaur-tabs-height 40)

  :bind
  ("C-<prior>" . centaur-tabs-backward)
  ("C-<next>" . centaur-tabs-forward))

;; (use-package orderless
;;   :ensure t
;;   :custom (completion-styles '(orderless)))

(defun noice ()
  (interactive)
  (eshell-toggle)
  (message "Toggling eshell"))

(use-package general)
(require 'general)
;; Defining space as leader
(general-create-definer my-leader-def
  :prefix "SPC")
(my-leader-def
  :keymaps 'normal
  "a" 'noice)
