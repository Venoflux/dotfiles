(use-package paredit
  :demand t
  :ensure t
  :hook ((scheme-mode . paredit-mode)
         (common-lisp-mode . paredit-mode)
         (lisp-mode . paredit-mode)
         (emacs-lisp-mode . paredit-mode))
  :config
  (define-key paredit-mode-map (kbd "RET") nil))
