

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)


(mapc
 (lambda (mode)
   (when (fboundp mode)
     (funcall mode -1)))
'(menu-bar-mode tool-bar-mode scroll-bar-mode))

;; cask initialzing and setting up emacs packages from the Cask file
(require 'cask "~/.cask/cask.el")
(cask-initialize)


;; korean language and key setting
;; This key setting has a problem (Check)
(set-language-environment "Korean")
(prefer-coding-system 'utf-8)
(global-set-key (kbd "<kana>") 'toggle-input-method)
(global-set-key (kbd "<S-kana>") 'toggle-input-method)


(load-theme 'zenburn t)

(require 'powerline)
