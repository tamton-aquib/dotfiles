(use-package centaur-tabs
  :straight t 
  :demand
  :config
  (centaur-tabs-mode t)
  (setq centaur-tab-style "bar")
  (setq centaur-tabs-height 40)

  :bind
  ("C-<prior>" . centaur-tabs-backward)
  ("C-<next>" . centaur-tabs-forward))

(use-package which-key
  :straight t
  :custom
  (setq which-key-idle-delay 0.3)
  :init
  (which-key-mode))

(use-package projectile
  :straight t
  :ensure t
  :init
  (projectile-mode +1)
  :bind (:map projectile-mode-map ("C-c p" . projectile-command-map)))

(use-package doom-modeline
  :straight t
  :ensure t
  :init
  (doom-modeline-mode 1)
  :config
  (setq doom-modeline-height 35)
	(setq doom-modeline--eglot t
        doom-modeline--project-root t))

(use-package dashboard
  :straight t
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
  :straight t
  :after dashboard
  :config
  (page-break-lines-mode))

(use-package all-the-icons
  :straight t
  :if (display-graphic-p))

(use-package all-the-icons-dired
  :straight t
  :config
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode))

(use-package doom-themes
  :straight t
  :ensure t
  :config
  (load-theme 'doom-tokyo-night t))

(use-package ivy
  :straight t
  :init
  (ivy-mode 1)
  (unbind-key "S-SPC" ivy-minibuffer-map)
  (setq ivy-height 15
	ivy-use-virtual-buffers t
	ivy-use-selectable-prompt t))

(use-package counsel
  :straight t
  :after ivy
  :init
  (counsel-mode 1)
  :bind (:map ivy-minibuffer-map))

(use-package evil
  :straight t
  :ensure t
  :config
  (evil-mode 1)
  (define-key evil-insert-state-map "jk" 'evil-normal-state))

(use-package parinfer
  :straight t
  :disabled
  :hook ((emacs-lisp-mode . parinfer-mode)
         (lisp-mode . parinfer-mode))
  :config
  (setq parinfer-extensions
      '(defaults       ; should be included.
        pretty-parens  ; different paren styles for different modes.
        evil           ; If you use Evil.
        smart-tab      ; C-b & C-f jump positions and smart shift with tab & S-tab.
        smart-yank)))  ; Yank behavior depend on mode.

(use-package company
  :straight t
  :ensure t
  :diminish company-mode
  :config
  (add-hook 'after-init-hook #'global-company-mode))

(use-package evil-nerd-commenter
  :straight t
  :bind ("M-/" . evilnc-comment-or-uncomment-lines))


(use-package rainbow-delimiters
             :straight t
  :hook (prog-mode . rainbow-delimiters-mode))
(use-package rainbow-mode
  :straight t
  :defer t
  :hook (org-mode
         emacs-lisp-mode
         web-mode
         typescript-mode
         js2-mode))

;; (use-package ivy-posframe
;;   :ensure t
;;   :delight
;;   :config
;;   (setq ivy-height-alist '((t lambda (_caller) (/ (window-height) 4))))
;;   (setq ivy-use-virtual-buffers t)
;;   (setq ivy-display-style 'plain)
;;   (setq ivy-posframe-parameters
;;       '((left-fringe . 10)
;;         (right-fringe . 10)))
;;   (ivy-posframe-mode 1))

(use-package vterm-toggle
  :straight t)

(use-package neotree
  :straight t
  :commands noetree-toggle
  :ensure t
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))
