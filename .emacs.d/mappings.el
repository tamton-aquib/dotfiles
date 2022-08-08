;; KEYMAPS
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(use-package general
             :straight t)
(require 'general)
;; Defining space as leader
(general-create-definer my-leader-def
  :prefix "SPC")
(my-leader-def
  :keymaps 'normal
  "t" 'vterm-toggle
  "r" 'eval-defun
  "f" 'counsel-find-file
  "n" 'neotree-toggle
  "w" 'kill-current-buffer)

(general-evil-setup t)
(general-nmap "TAB" 'evil-switch-to-windows-last-buffer)
(general-imap "jk" 'evil-normal-state)

(global-set-key (kbd "C-k") 'windmove-up)
(global-set-key (kbd "C-j") 'windmove-down)
(global-set-key (kbd "C-l") 'windmove-right)
(global-set-key (kbd "C-h") 'windmove-left)

(general-create-definer my-g-def
  :prefix "g")
(my-g-def
	:keymaps 'normal
	"d" 'eglot-find-declaration
	"A" 'eglot-code-actions
	"R" 'eglot-rename
	"h" 'eldoc-box-eglot-help-at-point)
