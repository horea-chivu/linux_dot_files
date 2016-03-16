(custom-set-variables
 '(blink-cursor-mode nil)
 '(custom-enabled-themes (quote (wombat)))
 '(menu-bar-mode nil)
 '(tool-bar-mode nil))
(custom-set-faces
 '(default ((t (:inherit nil :stipple nil :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 154 :width normal :foundry "PfEd" :family "DejaVu Sans Mono")))))

;; Indent Settings
(setq c-default-style "linux"
          c-basic-offset 4)

;; Spaces instead of tabs
(setq-default indent-tabs-mode nil)

;; backup/autosave
(defvar backup-dir (expand-file-name "~/.saves/backup/"))
(defvar autosave-dir (expand-file-name "~/.saves/autosave/"))
(setq backup-directory-alist (list (cons ".*" backup-dir)))
(setq auto-save-list-file-prefix autosave-dir)
(setq auto-save-file-name-transforms `((".*" ,autosave-dir t)))

