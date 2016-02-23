;;;; packages

(load "~/.emacs.d/packages.el")

;;;; ui

(fringe-mode 0)
(menu-bar-mode -1)
(scroll-bar-mode -1)
(tool-bar-mode -1)

(set-face-attribute 'vertical-border nil :foreground "#383838")

(setq inhibit-startup-screen t)
(setq initial-scratch-message nil)
(setq-default mode-line-format "%b %& (%l,%c)")

;;;; save

(add-hook 'before-save-hook 'delete-trailing-whitespace)
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq require-final-newline t)

;;;; tabs

(setq-default indent-tabs-mode nil)
(setq-default tab-width 2)

;;;; misc

(defalias 'yes-or-no-p 'y-or-n-p)
(setq ring-bell-function (lambda () (message "Ehm...")))
(setq scroll-step 1)
(setq-default truncate-lines 1)
(show-paren-mode 1)
