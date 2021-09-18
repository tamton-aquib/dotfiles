;; Change to your .emacs.d/ directory accordingly
(setq user-emacs-directory "/home/taj/.emacs.d") 
(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/") t)
(require 'use-package)

(package-initialize)
(add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/"))

(add-to-list 'load-path "~/.emacs.d/evil")
(require 'evil)
(evil-mode 1)

; Should make sense from now on:

; GRUVBOX
(add-to-list 'custom-theme-load-path "~/.emacs.d/themes")
(load-theme 'gruvbox t)

; KEYCHORD FOR KEYBINDINGS
(require 'key-chord)
(key-chord-mode 1)
(key-chord-define evil-insert-state-map "jk" 'evil-normal-state)
