(add-to-list 'load-path "~/.emacs.d/lisp")
(load "~/.emacs.d/lisp/packages.el")

; Load color theme
(load-theme 'zenburn t)
; No tool bar
(tool-bar-mode -1)

; Enable line numbering
(require 'nlinum)
(global-nlinum-mode 1)

(auto-compression-mode 1)

; No tabs
(setq-default indent-tabs-mode nil)

; Set C-like indentation style
( setq c-default-style "linux"
       c-basic-offset 4 )

; Enable highlighting for CUDA
(autoload 'cuda-mode "cuda-mode.el")
(add-to-list 'auto-mode-alist '("\\.cu'" . cuda-mode))

; Use C++ mode for *.h
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(autoload 'ldap-mode "ldap-mode.el")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (zenburn-theme nlinum cuda-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
