

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
