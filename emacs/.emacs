(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ns-right-alternate-modifier (quote none))
 '(package-selected-packages
   (quote
    (rainbow-delimiters ox-gfm ox-hugo org ox-reveal erlang geiser markdown-mode easy-hugo))))
(require 'package)
(setq package-archives
      '(("GNU ELPA" . "https://elpa.gnu.org/packages/")
	("MELPA Stable" . "https://stable.melpa.org/packages/")
	("MELPA" . "https://melpa.org/packages/")
        ("ORG" . "https://orgmode.org/elpa/"))
      package-archive-priorities
      '(("MELPA Stable" . 10)
	("GNU ELPA" . 5)
	("MELPA" . 1)
	("ORG" . 0)))
(package-initialize)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq geiser-guile-binary "/usr/local/bin/guile")
(global-visual-line-mode 1)
;; You need to enable org-mode exporters manually
(require 'ox-reveal)
(require 'ox-gfm)
(require 'ox-hugo)
;; Babel mode language support
(org-babel-do-load-languages
 'org-babel-load-languages
 '((ruby . t)
   (emacs-lisp . t)
   (python . t)
   (C . t)))
;; rainbow parens
(add-hook 'prog-mode-hook #'rainbow-delimiters-mode)
