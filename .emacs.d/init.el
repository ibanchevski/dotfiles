(require 'subr-x)
(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

;; Default theme
(load-theme 'solarized-wombat-dark t)

;; default font
(set-face-attribute 'default nil
                    :family "Hack"
                    :height 110
                    :weight 'normal
                    :width 'normal)

;; (global-display-line-numbers-mode)
(setq-default truncate-lines -1)

;; Ident with spaces
(set-default 'indent-tabs-mode nil)

;; Disable auto-save
(auto-save-mode -1)

;; Remove all bars and scrolls
(menu-bar-mode -1)
(toggle-scroll-bar -1)
(tool-bar-mode -1)

;; Set visual bell
(setq ring-bell-function 'ignore)

;; Selectrum
(selectrum-mode +1)

;; Projectile
(require 'projectile)
(define-key projectile-mode-map (kbd "s-p") 'projectile-command-map)
(define-key projectile-mode-map (kbd "C-x p") 'projectile-command-map)
(setq projectile-indexing-method 'alien)
(setq projectile-project-search-path '("~/repositories/" "/var/www/html/"))
(projectile-mode +1)

;; Flycheck
(global-flycheck-mode +1)

;; store all backup and autosave files in the tmp dir
(setq backup-directory-alist `((".*" . ,temporary-file-directory)))
(setq auto-save-file-name-transforms `((".*" ,temporary-file-directory t)))

;;; init.el ends here
