(put 'customize-group 'disabled nil)

(require 'eglot)
(add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))
(add-hook 'c-mode-hook 'eglot-ensure)
(add-hook 'c++-mode-hook 'eglot-ensure)

(add-to-list 'auto-mode-alist '("\\.cc\'" . lsp-ui-mode))
(add-to-list 'auto-mode-alist '("\\.h\'" . lsp-ui-mode))
(add-to-list 'auto-mode-alist '("\\.c\'" . lsp-ui-mode))
