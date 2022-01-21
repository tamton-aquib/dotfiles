;; KEYMAPS
(global-set-key (kbd "<escape>") 'keyboard-escape-quit)

(use-package general)
(require 'general)
;; Defining space as leader
(general-create-definer my-leader-def
  :prefix "SPC")
(my-leader-def
  :keymaps 'normal
  "t" 'eshell-toggle
  "r" 'eval-defun
  "f" 'counsel-find-file
  "n" 'neotree-toggle
  "w" 'kill-current-buffer)

(general-evil-setup t)
(general-nmap "TAB" 'evil-switch-to-windows-last-buffer)
(general-imap "jk" 'evil-normal-state)


(general-create-definer my-g-def
  :prefix "g")
(my-g-def
	:keymaps 'normal
	"d" 'eglot-find-declaration
	"A" 'eglot-code-actions
	"R" 'eglot-rename
	"h" 'eldoc-box-eglot-help-at-point)

  ;;       ("C-c l a"   . 'eglot-code-actions)
  ;;       ("C-c l f t" . 'eglot-find-typeDefinition)
  ;;       ("C-c l f d" . 'eglot-find-declaration)
  ;;       ("C-c l f m" . 'eglot-find-implementation)
  ;;       ("C-c l q"   . 'eglot-code-action-quickfix)
  ;;       ("C-c l b"   . 'eglot-format-buffer)
  ;;       ("C-c l o"   . 'eglot-code-action-organize-imports)
  ;;       ("C-c l h"   . 'eldoc-box-eglot-help-at-point)
  ;;       ("C-c l c"   . 'consult-eglot-symbols)))
