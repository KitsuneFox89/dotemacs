
;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

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
(load-library "flycheck.el")

(set-frame-font "Source Code Pro-11")
(setq default-frame-alist '((font . "Source Code Pro-11")))

; Enable line numbering
(require 'nlinum)
(global-nlinum-mode 1)

(auto-compression-mode 1)

; No tabs
(setq-default indent-tabs-mode nil)

; Set C-like indentation style
(setq c-default-style "linux"
       c-basic-offset 4 )

; Enable highlighting for CUDA
(autoload 'cuda-mode "cuda-mode.el")
(add-to-list 'auto-mode-alist '("\\.cu'" . cuda-mode))

; Use C++ mode for *.h
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

(autoload 'ldap-mode "ldap-mode.el")

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml$" . yaml-mode))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (yaml-mode haskell-mode flycheck zenburn-theme nlinum cuda-mode cpputils-cmake company cmake-font-lock))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
