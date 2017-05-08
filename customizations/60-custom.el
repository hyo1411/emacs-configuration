;;; Custom --- Summary
;;; Commentary:
;;; Code:
(setq custom-file "~/.emacs.d/customizations/60-custom.el")
(load-theme 'hc-zenburn t)
(set-face-attribute 'region nil :background "#666" :foreground "#ffffff")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(dired-details-hidden-string "")
 '(dired-use-ls-dired nil)
 '(flycheck-c/c++-googlelint-executable "/usr/local/bin/cpplint")
 '(flycheck-clang-language-standard "c++11")
 '(gist-view-gist nil)
 '(global-auto-complete-mode t)
 '(global-flycheck-mode t nil (flycheck))
 '(global-rainbow-delimiters-mode t)
 '(js2-basic-offset 2)
 '(keyfreq-autosave-mode t)
 '(keyfreq-mode t)
 '(magit-set-upstream-on-push (quote askifnotset))
 '(make-backup-files nil)
 '(package-selected-packages
   (quote
    (zenburn-theme wrap-region web-mode w3m undo-tree tabbar sr-speedbar solarized-theme soft-morning-theme smex ruby-tools ruby-compilation rubocop robe recentf-ext rainbow-mode rainbow-delimiters projectile project-explorer pallet noctilux-theme multi-web-mode multi-term mew maxframe magit idle-highlight-mode helm-ls-git hc-zenburn-theme groovy-mode gradle-mode flycheck floobits findr enh-ruby-mode enclose ecb drag-stuff dired-details+ color-theme-solarized color-theme-sanityinc-tomorrow calfw auto-complete anti-zenburn-theme ag adaptive-wrap ac-js2)))
 '(projectile-global-mode t)
 '(show-paren-mode t))
(provide '60-custom)

;;; 60-custom.el ends here

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "Consolas" :foundry "outline" :slant normal :weight normal :height 130 :width normal)))))
