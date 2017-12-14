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

(defun yunabe-string-match-all (string-format regexps name)
(if (null regexps) t
  (and (string-match (if string-format (car regexps)
                       (regexp-quote (car regexps)))
                     name)
       (yunabe-string-match-all string-format (cdr regexps) name))))

;; See the default implementation of this function in iswitchb.el
(defun iswitchb-get-matched-buffers (regexp
                                     &optional string-format buffer-list)
  "Return buffers matching all space-separated regexes in regexp.
If STRING-FORMAT is nil, consider REGEXP as just a string.
BUFFER-LIST can be list of buffers or list of strings."
  (let* ((case-fold-search  iswitchb-case)
          ;; need reverse since we are building up list backwards
          (list              (reverse buffer-list))
         (do-string         (stringp (car list)))
         (regexpes (split-string regexp))
         name
         ret)
    (mapcar
     (lambda (x)
       (if do-string
              (setq name x)               ;We already have the name
          (setq name (buffer-name x)))
       (cond
        ((and (yunabe-string-match-all string-format regexpes name)
              (not (iswitchb-ignore-buffername-p name)))
          (setq ret (cons name ret))
          )))
     list)
    ret))

;; Change color when line width exceeds limits.
(dolist (hook-info '((c-mode-hook . 80)
(c++-mode-hook . 80)
(java-mode-hook . 100)
(objc-mode-hook . 80)
(python-mode-hook . 80)
(emacs-lisp-mode-hook . 80)))
(add-hook (car hook-info)
`(lambda ()
(setq indent-tabs-mode nil)
(font-lock-add-keywords
nil
'((,(format "^.\\{%d\\}\\(.+\\)" (cdr hook-info))
1 font-lock-warning-face t)))
)))

