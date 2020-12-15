(require 'subr-x)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(load-theme 'gruvbox-dark-hard)
(global-display-line-numbers-mode)

;; init auto-complete
(ac-config-default)

;; Projectile keymaps and init
(require 'projectile)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-c p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-x p") 'projectile-command-map)
(setq projectile-project-search-path '("~/repositories"))
(setq projectile-indexing-method 'alien)
(projectile-mode +1)

;; Remove the menu bar in terminal mode
(menu-bar-mode -1)

;; store all backup and autosave files in the tmp dir

(setq backup-directory-alist
      
      `((".*" . ,temporary-file-directory)))

(setq auto-save-file-name-transforms
      
      `((".*" ,temporary-file-directory t))
