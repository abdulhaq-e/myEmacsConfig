(getenv "PATH")
(setenv "PATH"
	(concat
	 "/usr/local/texlive/2012/bin/x86_64-linux" ":"
	 (getenv "PATH")
	 )
)

(add-to-list 'load-path "~/.emacs.d") 


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;package-management;;;;;;;;;;;;
;el-get for package management
(add-to-list 'load-path "~/.emacs.d/el-get/el-get")

(unless (require 'el-get nil 'noerror)
  (with-current-buffer
      (url-retrieve-synchronously
       "https://raw.github.com/dimitri/el-get/master/el-get-install.el")
    (let (el-get-master-branch)
      (goto-char (point-max))
      (eval-print-last-sexp))))

(el-get 'sync)

;some repositories for package.el
(package-initialize)
(add-to-list 'package-archives '("melpa" . "http://melpa.milkbox.net/packages/") t)
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;;;;;;;;;looks;;;;;;;;;;;;;;;;;;;
;theme and font
(load-theme 'tango-2 t)
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(default ((t (:family "DejaVu Sans Mono" :foundry "unknown" :slant normal :weight bold :height 143 :width normal)))))

;general appearence
(global-visual-line-mode 0); Proper line wrapping
(global-hl-line-mode 0); Highlight current row
(show-paren-mode 1); Matches parentheses and such in every mode
(set-fringe-mode '(0 . 0)); Disable fringe because I use visual-line-mode
(set-face-background hl-line-face "#f2f1f0"); Same color as greyness in gtk
(setq inhibit-splash-screen t); Disable splash screen
(setq visible-bell t); Flashes on error
(setq calendar-week-start-day 1); Calender should start on Monday
(add-to-list 'default-frame-alist '(height . 59)); Default frame height.
(global-linum-mode t) ;line numbers, who doesn't use them!
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;


;python auto-completion
(add-hook 'python-mode-hook
	  (lambda ()
	    (auto-complete-mode 1)))
(add-hook 'python-mode-hook 'jedi:setup)
(setq jedi:setup-keys t)                      ; optional
(setq jedi:complete-on-dot t)                 ; optional


(setq
 python-shell-interpreter "ipython"
 python-shell-interpreter-args ""
 python-shell-prompt-regexp "In \\[[0-9]+\\]: "
 python-shell-prompt-output-regexp "Out\\[[0-9]+\\]: "
 python-shell-completion-setup-code
   "from IPython.core.completerlib import module_completion"
 python-shell-completion-module-string-code
   "';'.join(module_completion('''%s'''))\n"
 python-shell-completion-string-code
   "';'.join(get_ipython().Completer.all_completions('''%s'''))\n")





;(require 'bookmark+)

(setq desktop-save-mode t)
;(desktop-save-mode 1)




(require 'magit)
;;; copied .emacs


(load "~/.emacs.d/tex_related_init.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-safe-themes (quote ("5e1d1564b6a2435a2054aa345e81c89539a72c4cad8536cfe02583e0b7d5e2fa" "f38dd27d6462c0dac285aa95ae28aeb7df7e545f8930688c18960aeaf4e807ed" "6cfe5b2f818c7b52723f3e121d1157cf9d95ed8923dbc1b47f392da80ef7495d" "159bb8f86836ea30261ece64ac695dc490e871d57107016c09f286146f0dae64" "e9a1226ffed627ec58294d77c62aa9561ec5f42309a1f7a2423c6227e34e3581" "c56fd34f8f404e6e9e6f226c6ce2d170595acc001741644d22b49e457e3cd497" "967c58175840fcea30b56f2a5a326b232d4939393bed59339d21e46cf4798ecf" "8281168b824a806489ca7d22e60bb15020bf6eecd64c25088c85b3fd806fc341" "951e10f17de57de1e0c9cbeb44fcdda1b6c6d26beab40c3bd0abbfc38dd5c9c8" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" "8aebf25556399b58091e533e455dd50a6a9cba958cc4ebb0aab175863c25b9a4" "bf7ed640479049f1d74319ed004a9821072c1d9331bc1147e01d22748c18ebdf" default)))
 '(show-paren-mode t))


(setq ispell-dictionary "british")

