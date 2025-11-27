(use-package geiser
  :demand t
  :ensure t)

(use-package geiser-guile
  :demand t
  :ensure t)

(use-package ac-geiser
  :demand t
  :ensure t
  :custom
  (add-hook 'geiser-mode-hook 'ac-geiser-setup)
  (add-hook 'geiser-repl-mode-hook 'ac-geiser-setup)
  (eval-after-load "auto-complete"
    '(add-to-list 'ac-modes 'geiser-repl-mode)))
