
(use-package all-the-icons-dired
  :config
  (add-hook 'dired-mode-hook 'all-the-icons-dired-mode))

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

(use-package parinfer
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
  :ensure t
  :diminish company-mode
  :config
  (add-hook 'after-init-hook #'global-company-mode))

(use-package evil-nerd-commenter
  :bind ("M-/" . evilnc-comment-or-uncomment-lines))


(use-package rainbow-delimiters
  :hook (prog-mode . rainbow-delimiters-mode))
(use-package rainbow-mode
  :defer t
  :hook (org-mode
         emacs-lisp-mode
         web-mode
         typescript-mode
         js2-mode))


(use-package ivy-posframe
  :ensure t
  :delight
  :config
  (setq ivy-height-alist '((t lambda (_caller) (/ (window-height) 4))))
  (setq ivy-use-virtual-buffers t)
  (setq ivy-display-style 'plain)
  (setq ivy-posframe-parameters
      '((left-fringe . 10)
        (right-fringe . 10)))
  (ivy-posframe-mode 1))

(use-package neotree
  :commands noetree-toggle
  :ensure t
  :config
  (setq neo-theme (if (display-graphic-p) 'icons 'arrow)))
