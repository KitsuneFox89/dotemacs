(add-to-list 'load-path "~/.emacs.d/lisp")
(load-library "packages.el")

; Load color theme
(load-theme 'zenburn t)
; No tool bar
(setq initial-scratch-message "")
(setq inhibit-startup-message t)
(tool-bar-mode 0)
(menu-bar-mode 0)
(scroll-bar-mode 0)

(load-library "cmake.el")

; Enable line numbering
(require 'nlinum)
(global-nlinum-mode 1)

(auto-compression-mode 1)

; No tabs
(setq-default indent-tabs-mode nil)

(set-default-font "Source Code Pro-11")

; Set C-like indentation style
( setq c-default-style "linux"
       c-basic-offset 4 )

; Enable highlighting for CUDA
(autoload 'cuda-mode "cuda-mode.el")
(add-to-list 'auto-mode-alist '("\\.cu'" . cuda-mode))

; Use C++ mode for *.h
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(autoload 'ldap-mode "ldap-mode.el")

