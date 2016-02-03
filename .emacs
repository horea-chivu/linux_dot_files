;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Emacs configuration 

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

;; Melpa Configuration

(require 'package)
(add-to-list 'package-archives
             '("melpa" . "https://melpa.org/packages/"))
(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; Settings from customize menu
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(blink-cursor-mode nil)
 '(custom-enabled-themes (quote (wombat)))
 '(custom-safe-themes
   (quote
    ("4f5bb895d88b6fe6a983e63429f154b8d939b4a8c581956493783b2515e22d6d" "ad950f1b1bf65682e390f3547d479fd35d8c66cafa2b8aa28179d78122faa947" default)))
 '(menu-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 136 :width normal :foundry "PfEd" :family "DejaVu Sans Mono")))))

;; Indent Settings
(setq c-default-style "linux"
          c-basic-offset 4)

;; Spaces instead of tabs
(setq-default indent-tabs-mode nil)

(setq backup-directory-alist
      `((".*" . "~/.saves")))
(setq auto-save-file-name-transforms
      `((".*" "~/.saves" t)))

;; ample-theme

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

;; Plugin Row

;; emmet-mode
(require 'emmet-mode)

(add-to-list 'load-path "~/Emacs/emmet/")
(add-hook 'sgml-mode-hook 'emmet-mode)  ;; Auto-start at any markup modes
(add-hook 'html-mode-hook 'emmet-mode)
(add-hook 'css-mode-hook 'emmet-mode)

