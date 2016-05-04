;;; global --- Summary
;;; Commentary:
;;; Code:

;;; mouse
(require 'mouse)
(xterm-mouse-mode t)

;;; Fancier dired display
(require 'dired-details+)
(ido-vertical-mode)
(defalias 'yes-or-no-p 'y-or-n-p)

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

(provide '02-global)
;;; 02-global.el ends here

