;;; init-typst.el --- Typst Support -*- lexical-binding: t -*-
;;; Commentary:
;;; Code:

;; Tree Sitter support for Typst
(straight-use-package 'typst-ts-mode)

(with-eval-after-load 'eglot
  (with-eval-after-load 'typst-ts-mode
    (add-to-list 'eglot-server-programs
                 `((typst-ts-mode) .
                   ,(eglot-alternatives `(,typst-ts-lsp-download-path
                                          "tinymist"
                                          "typst-lsp"))))))


(provide 'init-typst)

;;; init-typst.el ends here
