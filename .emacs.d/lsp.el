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
  ((c-mode c++-mode rust-mode js2-mode typescript-mode) . eglot-ensure))

(use-package ccls
  :hook ((c-mode c++-mode objc-mode cuda-mode) .
		 (lambda () (require 'ccls) (lsp))))

(use-package rust-mode
  :mode "\\.rs\\'"
  :init (setq rust-format-on-save t))
(use-package cargo
  :defer t)

(use-package eldoc
  :hook
  (eglot-connect . eldoc-mode))
(use-package eldoc-box
  :commands (eldoc-box-hover-at-point-mode))

(use-package flycheck
  :defer t
  :ensure t
  :init
  (global-flycheck-mode))
