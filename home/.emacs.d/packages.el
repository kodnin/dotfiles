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

(use-package cider
  :ensure t)

(use-package clojure-mode
  :ensure t)

(use-package coffee-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.cjsx\\'" . coffee-mode)))

(use-package evil
  :ensure t
  :config
  (evil-mode 1)
  (define-key evil-normal-state-map (kbd "C-p") 'projectile-find-file)
  (define-key evil-normal-state-map (kbd "gcc") (lambda () (interactive) (comment-or-uncomment-region (line-beginning-position) (line-end-position))))
  (define-key evil-visual-state-map (kbd "gc") 'comment-or-uncomment-region))

(use-package helm
  :ensure t
  :init
  (setq helm-autoresize-min-height 25)
  (setq helm-autoresize-max-height 25)
  :config
  (helm-mode 1)
  (helm-autoresize-mode 1))

(use-package markdown-mode
  :ensure t)

(use-package paredit
  :ensure t)

(use-package projectile
  :ensure t
  :init
  (setq projectile-completion-system 'helm)
  :config
  (projectile-global-mode))

(use-package sass-mode
  :ensure t)

(use-package slime
  :ensure t
  :init
  (setq inferior-lisp-program "/usr/local/bin/sbcl")
  (setq slime-contribs '(slime-fancy)))

(use-package web-mode
  :ensure t
  :init
  (add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode)))

(use-package yaml-mode
  :ensure t)
