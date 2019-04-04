;;; global --- Summary
;;; Commentary:
;;; Code:

;;; mouse
(require 'mouse)
(xterm-mouse-mode t)

;; git commit
(require 'git-commit)

;;; Fancier dired display
;;(require 'dired-details+)
(defalias 'yes-or-no-p 'y-or-n-p)

(show-paren-mode 1)
(defun kill-other-buffers ()
    "Kill all buffers but the current one.
Don't mess with special buffers."
    (interactive)
    (dolist (buffer (buffer-list))
      (unless (or (eql buffer (current-buffer)) (not (buffer-file-name buffer)))
	(kill-buffer buffer))))

(setq-default indent-tabs-mode nil)

;;; turn on syntax highlighting
(global-font-lock-mode 1)

;;; use groovy-mode when file ends in .groovy or has #!/bin/groovy at start
(autoload 'groovy-mode "groovy-mode" "Major mode for editing Groovy code." t)
(add-to-list 'auto-mode-alist '("\.groovy$" . groovy-mode))
(add-to-list 'auto-mode-alist '("\.gradle$" . groovy-mode))
(add-to-list 'interpreter-mode-alist '("groovy" . groovy-mode))

;;; make Groovy mode electric by default.
(add-hook 'groovy-mode-hook
	  '(lambda ()
	     (require 'groovy-electric)
	     (groovy-electric-mode)))

;;;(require 'color-theme)
;;;(add-to-list 'load-path "~/.emacs.d/elpa/color-theme-twilight-0.1")
;;;(autoload 'color-theme-twilight "color-theme-twilight" nil t)
;;;(when (>= (display-color-cells) 256)
;;;  (color-theme-twilight))


(require 'multi-web-mode)
(setq mweb-default-major-mode 'html-mode)
(setq mweb-tags
  '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
    (js-mode  "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
    (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")))
(setq mweb-filename-extensions '("php" "htm" "html" "ctp" "phtml" "php4" "php5"))
(multi-web-global-mode 1)

(defun remove-dos-eol ()
  "Do not show ^M in files containing mixed UNIX and DOS line endings."
  (interactive)
  (setq buffer-display-table (make-display-table))
  (aset buffer-display-table ?\^M []))

(setq auto-mode-alist
	  (append
	   '(("CMakeLists\\.txt\\'" . cmake-mode))
	   '(("\\.cmake\\'" . cmake-mode))
	   auto-mode-alist))

(autoload 'cmake-mode "~/.emacs.d/customizations/cmake-mode.el" t)

(provide '02-global)
;;; 02-global.el ends here

