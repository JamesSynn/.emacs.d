


;; start yasnippet with emacs
(require 'yasnippet)
(yas-global-mode 1)



;; let's define a function which initializes auto-complete-c-headers and gets called for c/c++ hooks
(defun my:ac-c-header-init ()
  (require 'auto-complete-c-headers)
  (add-to-list 'ac-sources 'ac-sources-c-headers)
  ;;(add-to-list 'achead:include-directories '"/usr/lib/gcc/x86_64-redhat-linux/6.2.1/../../../../include/c++/6.2.1")
)
;; now let's call this function from c/c++ hooks
(add-hook 'c++-mode-hook 'my:ac-c-header-init)
(add-hook 'c-mode-hook 'my:ac-c-header-init)





;; http://company-mode.github.io/
;; https://tuhdo.github.io/c-ide.html

;;(require 'company)
;;(add-hook 'after-init-hook 'global-company-mode)

;;(setq company-backends (delete 'company-semantic company-backends))
;;(define-key c-mode-map  [(tab)] 'company-complete)
;;(define-key c++-mode-map  [(tab)] 'company-complete)

;; cmake-ide Enable
;; ref: https://github.com/atilaneves/cmake-ide
;; (require 'rtags) ;; optional, must have rtags installed
;; (cmake-ide-setup)

;; (package-refresh-contents)

;; flycheck Enable
;; (require 'flycheck)
;; (global-flycheck-mode)

;; (require 'ggtags)
;; (add-hook 'c-mode-common-hook
;;          (lambda ()
;;            (when (derived-mode-p 'c-mode 'c++-mode 'java-mode 'asm-mode)
;;              (ggtags-mode 1))))

;;(define-key ggtags-mode-map (kbd "C-c g s") 'ggtags-find-other-symbol)
;;(define-key ggtags-mode-map (kbd "C-c g h") 'ggtags-view-tag-history)
;;(define-key ggtags-mode-map (kbd "C-c g r") 'ggtags-find-reference)
;;(define-key ggtags-mode-map (kbd "C-c g f") 'ggtags-find-file)
;;(define-key ggtags-mode-map (kbd "C-c g c") 'ggtags-create-tags)
;;(define-key ggtags-mode-map (kbd "C-c g u") 'ggtags-update-tags)

;;(define-key ggtags-mode-map (kbd "M-,") 'pop-tag-mark)


;;(setq
;; helm-gtags-ignore-case t
;; helm-gtags-auto-update t
;; helm-gtags-use-input-at-cursor t
;; helm-gtags-pulse-at-cursor t
;; helm-gtags-prefix-key "\C-cg"
;; helm-gtags-suggested-key-mapping t
;; )



;;(require 'helm-gtags)
;; Enable helm-gtags-mode
;;(add-hook 'dired-mode-hook 'helm-gtags-mode)
;;(add-hook 'eshell-mode-hook 'helm-gtags-mode)
;;(add-hook 'c-mode-hook 'helm-gtags-mode)
;;(add-hook 'c++-mode-hook 'helm-gtags-mode)
;;(add-hook 'asm-mode-hook 'helm-gtags-mode)

;;(define-key helm-gtags-mode-map (kbd "C-c g a") 'helm-gtags-tags-in-this-function)
;;(define-key helm-gtags-mode-map (kbd "C-j") 'helm-gtags-select)
;;(define-key helm-gtags-mode-map (kbd "M-.") 'helm-gtags-dwim)
;;(define-key helm-gtags-mode-map (kbd "M-,") 'helm-gtags-pop-stack)
;;(define-key helm-gtags-mode-map (kbd "C-c <") 'helm-gtags-previous-history)
;;(define-key helm-gtags-mode-map (kbd "C-c >") 'helm-gtags-next-history)
