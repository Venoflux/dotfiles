(use-package corfu
  :demand t
  :ensure t
  :custom
  ;; Tab complete
  (tab-always-indent 'complete)
  ;; Emacs 30 and newer: Disable Ispell completion function.
  ;; Try `cape-dict' as an alternative.
  (text-mode-ispell-word-completion nil)
  ;; Make the popup appear quicker
  (corfu-popupinfo-delay '(0.5 . 0.5))
  ;; Always have the same width
  (corfu-min-width 80)
  (corfu-max-width corfu-min-width)
  (corfu-count 14)
  (corfu-scroll-margin 4)
  ;; Have Corfu wrap around when going up
  (corfu-cycle t)
  (corfu-preselect-first t)
  :bind (:map corfu-map
              ;; Match `corfu-quick-complete' keybinding to `avy-goto-line'
              ("s-j" . corfu-quick-complete))
  :init
  ;; Enable Corfu
  (global-corfu-mode t)
  ;; Enable Corfu history mode to act like `prescient'
  (corfu-history-mode t)
  ;; Allow Corfu to show help text next to suggested completion
  (corfu-popupinfo-mode t))
