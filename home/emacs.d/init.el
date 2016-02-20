;;;; repository

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

;;;; use-package

(setq package-enable-at-startup nil)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile
  (require 'use-package))

;;;; packages

(use-package base16-theme
  :ensure t
  :init
  (load-theme 'base16-default-dark t))

(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  (define-key evil-normal-state-map (kbd "C-p") 'projectile-find-file)
  (define-key evil-normal-state-map (kbd "gcc") (lambda () (interactive) (comment-or-uncomment-region (line-beginning-position) (line-end-position))))
  (define-key evil-visual-state-map (kbd "gc") 'comment-or-uncomment-region))

(use-package helm
  :ensure t
  :config
  (helm-mode 1))

(use-package projectile
  :ensure t
  :init
  (setq projectile-completion-system 'helm)
  :config
  (projectile-global-mode))

;;;; ui

(fringe-mode 0)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)
(setq-default mode-line-format "%b %& (%l,%c)")

;;;; save

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq auto-save-default nil)
(setq make-backup-files nil)

;;;; misc

(defalias 'yes-or-no-p 'y-or-n-p)
(setq ring-bell-function (lambda () (message "Ehm...")))
(setq-default truncate-lines 1)
(show-paren-mode 1)