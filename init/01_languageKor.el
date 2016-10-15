

;; Korean Setting
;;(require 'hangul)
(set-language-environment "Korean")
;; (setq default-korean-keyboard "3") 3벌식

;;(prefer-coding-system 'utf-8) ; utf-8 환경 설정
;;(custom-set-variables
;;'(default-input-method "korean-hangul")) ;; 내장 두벌식


(setq default-input-method "korean-hangul")

(add-to-list 'file-coding-system-alist '("\\.md\\'" . utf-8) )

;; from http://stackoverflow.com/questions/2901541/which-coding-system-should-i-use-in-emacs
(setq utf-translate-cjk-mode nil) ; disable CJK coding/encoding (Chinese/Japanese/Korean characters)
(set-language-environment 'utf-8)
;; (set-keyboard-coding-system 'utf-8-mac) ; For old Carbon emacs on OS X only
(setq locale-coding-system 'utf-8)
(setq-default buffer-file-coding-system 'utf-8-unix)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(unless (eq system-type 'windows-nt)
  (set-selection-coding-system 'utf-8))
(prefer-coding-system 'utf-8)

;; disable autofill
(auto-fill-mode -1)
(turn-off-auto-fill)

