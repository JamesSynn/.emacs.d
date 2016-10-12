

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

;; Korean Setting

(set-language-environment "Korean")
;; (setq default-korean-keyboard "3") 3벌식

;; (prefer-coding-system 'utf-8) ; utf-8 환경 설정
;; ;; (custom-set-variables
;; ;; '(default-input-method "korean-hangul")) ;; 내장 두벌식







;; Zenburn Dark theme Enable
;; https://github.com/bbatsov/zenburn-emacs
(load-theme 'zenburn t)

;; Powerline theme Enable
;; Powerline: status bar customize package
;; ref: https://github.com/milkypostman/powerline
(require 'powerline)
(powerline-center-theme)


;; cmake-ide Enable
;; ref: https://github.com/atilaneves/cmake-ide
(require 'rtags) ;; optional, must have rtags installed
;; (cmake-ide-setup)

;; (package-refresh-contents)

;; flycheck Enable
;; (require 'flycheck)
;; (global-flycheck-mode)
