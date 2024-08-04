;; Default Settings
(setq-default tab-width 4
			  evil-shift-width tab-width)
(setq gc-cons-threshold (* 50 1000 1000)
	  tab-always-indent 'complete
	  blink-cursor-mode nil
	  make-backup-files nil
	  zone-when-idle 10
	  x-stretch-cursor t
	  eshell-destroy-buffer-when-process-dies t)
(electric-pair-mode 1)
(column-number-mode t)
(global-display-line-numbers-mode +1)
(setq make-backup-files nil)

(dolist (mode '(org-mode-hook
                term-mode-hook
                shell-mode-hook
				neotree-mode-hook
                eshell-mode-hook))
 (add-hook mode (lambda () (display-line-numbers-mode -1))))
(save-place-mode 1)


;;; UI Settings
(setq inhibit-startup-message t
	  visual-bell t
	  ring-bell-function 'ignore
      scroll-margin 0
      scroll-conservatively 100000
      scroll-preserve-screen-position 1)
(menu-bar-mode -1)
(tool-bar-mode -1)
(tooltip-mode -1)
(set-fringe-mode 10)
(scroll-bar-mode -1)

(add-hook 'emacs-startup-hook 'toggle-frame-maximized)
(set-frame-parameter (selected-frame) 'alpha '(90 . 90))
(add-to-list 'default-frame-alist '(alpha . (90 . 90)))
(set-frame-parameter (selected-frame) 'fullscreen 'maximized)
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(set-face-attribute 'default nil :font "MonoLisa" :height 100)
; (set-face-attribute 'default nil :font "MonoLisa Nerd Font" :height 103 :weight 'Medium)
(setq-default line-spacing 0.3)
