(use-package
 dired
 :ensure nil
 :demand nil
 :defer t
 :config
 (setq
  dired-auto-revert-buffer t ; Revert on re-visiting
  ;; Better dired flags:
  ;; `-l' is mandatory
  ;; `-a' shows all files
  ;; `-h' uses human-readable sizes
  ;; `-F' appends file-type classifiers to file names (for better highlighting)
  dired-listing-switches "-laFGh1v --group-directories-first"
  dired-ls-F-marks-symlinks t ; -F marks links with @
  ;; Inhibit prompts for simple recursive operations
  dired-recursive-copies 'always
  ;; Auto-copy to other Dired split window
  dired-dwim-target t)
 :hook (dired-mode . dired-hide-details-mode))
