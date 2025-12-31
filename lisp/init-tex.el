;;; init-tex.el --- TeX/LaTeX Support -*- lexical-binding: t -*-
;;; Commentary:

;; AUCTeX

;;; Code:

(straight-use-package 'auctex)

;; Enable document parsing
(setq TeX-auto-save t)
(setq TeX-parse-self t)

;; Make AUCTeX aware of the multifile document structure
(setq-default TeX-master nil)

(provide 'init-tex)

;;; init-tex.el ends here
