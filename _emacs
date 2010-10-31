;; by yunabe

;; coding systems
(set-default-coding-systems 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)

(setq make-backup-files nil)
(iswitchb-mode 1)
;;shell-mode
;;hide password
(add-hook 'comint-output-filter-functions
          'comint-watch-for-password-prompt)
;;allow add color when using 'ls --color'
(autoload 'ansi-color-for-comint-mode-on "ansi-color"
     "Set `ansi-color-for-comint-mode' to t." t)
(add-hook 'shell-mode-hook 'ansi-color-for-comint-mode-on)

(setq inhibit-startup-message t)
(global-set-key "\C-h" 'delete-backward-char)

(define-key global-map "\M-g" 'goto-line)
;(define-key global-map "\C-u" 'scroll-down)

;Search a word under the cursor by C-s C-w (C-w)*
(defun isearch-forward-with-heading ()
  "Search the word your cursor looking at."
  (interactive)
  (command-execute 'forward-char)
  (command-execute 'backward-word)
  (command-execute 'isearch-forward))

(global-set-key "\C-s" 'isearch-forward-with-heading)

;; for Mac
(setq-default tab-width 2 indent-tabs-mode nil)
;; for Java
(setq c-default-style
      '((java-mode . "gnu") ))
