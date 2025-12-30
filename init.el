;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file bootstraps the configuration, which is divided into
;; a number of other files.

;;; Code:

;; Save variables configured via the Easy Customization Interface into a separate file.
(setq custom-file (locate-user-emacs-file "custom.el"))

(add-to-list 'load-path (expand-file-name "lisp" user-emacs-directory))

(require 'init-straight)

(require 'init-themes)

;; LSP
(require 'init-lsp)

;; Company Mode
(straight-use-package 'company)
(global-company-mode t)

(electric-pair-mode t)

;; Line Number and Column Number
(column-number-mode t)
(global-display-line-numbers-mode t)

;; Org Mode
(require 'init-org)

;; Markdown
(straight-use-package 'markdown-mode)

;; Set window size
(add-to-list 'default-frame-alist '(width . 125))
(add-to-list 'default-frame-alist '(height . 55))

;; Load variables configured via the Easy Customization Interface.
(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)

;;; init.el ends here

