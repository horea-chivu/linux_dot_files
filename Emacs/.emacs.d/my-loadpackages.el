
;; Load my-packages.el to take required packages
(load "~/.emacs.d/my-packages.el")

;; Theme settings

;; then in your init you can load all of the themes
;; without enabling theme (or just load one)
(load-theme 'ample t t)
;; (load-theme 'ample-flat t t)
;; (load-theme 'ample-light t t)
;; choose one to enable
(enable-theme 'ample)
;; (enable-theme 'ample-flat)
;; (enable-theme 'ample-light)

;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Plugin Row
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; web-mode ;;

(require 'web-mode)
(add-to-list 'auto-mode-alist '("\\.phtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.tpl\\.php\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.[agj]sp\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.as[cp]x\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.mustache\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.djhtml\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.php\\'" . web-mode))

;; emmet-mode ;;

(require 'emmet-mode)

(add-to-list 'load-path "~/Emacs/emmet/")
(add-hook 'sgml-mode-hook 'emmet-mode)  ;; Auto-start at any markup modes
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)
(add-hook 'web-mode-hook 'emmet-mode)
(add-hook 'php-mode-hook 'emmet-mode)

;; auto-complete ;;

(require 'auto-complete)

;; Default cofiguration
(require 'auto-complete-config)
(ac-config-default)

;; yasnippet ;;

(require 'yasnippet)
(yas-global-mode 1)

;; evil

(require 'evil)
  (evil-mode 1)

;; Rebind esc to jj
(setq key-chord-two-keys-delay 0.8)
(key-chord-define evil-insert-state-map "jj" 'evil-normal-state)
(key-chord-mode 1)

;; key-chord

(require 'key-chord)
      (key-chord-mode 1)

;; linum-relative

(require 'linum-relative)

;; Make linums relative by default
(global-linum-mode)
(with-eval-after-load 'linum
(linum-relative-toggle))
