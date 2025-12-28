;;; init-themes.el --- Defaults for themes -*- lexical-binding: t -*-
;;; Commentary:

;; I use Modus, a built-in (since GNU Emacs 28.1) theme set designed for
;; accessible readability.
;;   https://protesilaos.com/emacs/modus-themes
;; 
;; Other themes I may try in the future:
;;   - (straight-use-package 'catppuccin-theme)
;;   - (straight-use-package 'solarized-theme)

;;; Code:

(load-theme 'modus-vivendi-tinted)

(provide 'init-themes)

;;; init-themes.el ends here

