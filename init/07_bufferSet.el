




(require 'smex) ; Not needed if you use package.el
(smex-initialize) ; Can be omitted. This might cause a (minimal) delay
                  ; when Smex is auto-initialized on its first run.
;; Smex is a M-x enhancement for Emacs. Built on top of Ido,
;; it provides a convenient interface to your recently and
;; most frequently used commands. And to all the other commands, too.
;; https://github.com/nonsequitur/smex

(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
;; This is your old M-x.
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)





