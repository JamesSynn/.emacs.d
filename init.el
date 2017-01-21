

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(require 'package)
(package-initialize)

;; Turn off mouse interface early in startup to avoid momentary display
(if (fboundp 'menu-bar-mode) (menu-bar-mode -1))
(if (fboundp 'tool-bar-mode) (tool-bar-mode -1))
(if (fboundp 'scroll-bar-mode) (scroll-bar-mode -1))

;; No splash screen please ... jeez
(setq inhibit-startup-message t)

(global-auto-revert-mode t)
;; cask initialzing and setting up emacs packages from the Cask file
;; http://blog.nacyot.com/articles/2014-06-01-emacs-with-cask/#toc
(require 'cask "~/.cask/cask.el")
(cask-initialize)

;; https://github.com/rdallasgray/pallet
(require 'pallet)
(pallet-mode t)

;; https://github.com/emacs-jp/init-loader
(require 'init-loader)
;; Load configuration files in '/path/to/init-directory'.
(init-loader-load "~/.emacs.d/init")
;; If you omit arguments, then init-loader-directory' is used
;; (init-loader-load)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (zlc zenburn-theme web-mode use-package switch-window smex smartparens smart-mode-line rtags rspec-mode rinari rainbow-mode rainbow-delimiters purescript-mode projectile prodigy powerline popwin pallet neotree multiple-cursors monokai-theme moe-theme markdown-preview-mode magit irony init-loader imenu-anywhere iedit idomenu ido-yes-or-no ido-vertical-mode ido-ubiquitous idle-highlight-mode htmlize gitignore-mode git-wip-timemachine git-timemachine git fold-dwim-org flycheck-haskell flycheck-color-mode-line flycheck-cask expand-region exec-path-from-shell evil-surround evil-paredit elpy eclim ecb drag-stuff cpputils-cmake counsel company-c-headers color-theme coffee-mode cmake-project cmake-ide clojure-cheatsheet cask-mode buffer-move autopair auto-complete-clang auto-complete-c-headers auctex anzu ace-jump-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
