

(global-auto-revert-mode 1)


;; Auto complete tutorial
;; http://cestlaz.github.io/posts/using-emacs-8-autocomplete/#.WAHJ3rUyreR

;; start auto-complete with emacs
(require 'auto-complete)
(require 'auto-complete-config)
(ac-config-default)
(global-auto-complete-mode t)
;; (define-key ac-mode-map (kbd "M-TAB") 'auto-complete)



(require 'autopair)
(autopair-global-mode 1)
(setq autopair-autowrap t)




