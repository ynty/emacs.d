;;; init.el --- Load the full configuration -*- lexical-binding: t -*-
;;; Commentary:

;; This file bootstraps the configuration, which is divided into
;; a number of other files.

;;; Code:

;; Save variables configured via the Easy Customization Interface into a separate file.
(setq custom-file (locate-user-emacs-file "custom.el"))

;; Setup straight.el
(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name
        "straight/repos/straight.el/bootstrap.el"
        (or (bound-and-true-p straight-base-dir)
            user-emacs-directory)))
      (bootstrap-version 7))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

;; Company Mode
(straight-use-package 'company)
(global-company-mode)

;; Theme
(straight-use-package 'solarized-theme)
; (load-theme 'catppuccin :no-confirm)

(electric-pair-mode t)

;; Markdown
(straight-use-package 'markdown-mode)

;; Set window size
(add-to-list 'default-frame-alist '(width . 180))
(add-to-list 'default-frame-alist '(height . 55))

;; Load variables configured via the Easy Customization Interface.
(when (file-exists-p custom-file)
  (load custom-file))

(provide 'init)

;;; init.el ends here
