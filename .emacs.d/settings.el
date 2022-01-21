
;; Default Settings
(setq-default tab-width 4)
(setq-default evil-shift-width tab-width)
(setq make-backup-files nil)
(column-number-mode t)
(global-display-line-numbers-mode +1)
(setq gc-cons-threshold (* 50 1000 1000))
;; (set-frame-font "Cascadia Code" nil t)
(set-face-attribute 'default nil :font "Cascadia Code" :height 110 :weight 'medium)

(setq tab-always-indent 'complete)
(electric-pair-mode 1)
(setq zone-when-idle 10)
(setq x-stretch-cursor t)
(setq eshell-destroy-buffer-when-process-dies t)

(dolist (mode '(org-mode-hook
                term-mode-hook
                shell-mode-hook
				neotree-mode-hook
                eshell-mode-hook))
  (add-hook mode (lambda () (display-line-numbers-mode -1))))
