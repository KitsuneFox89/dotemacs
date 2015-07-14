
; cmake-font-lock provides improved syntax highlighting for cmake files
(autoload 'cmake-font-lock-activate "cmake-font-lock" nil t)
(add-hook 'cmake-mode-hook 'cmake-font-lock-activate)

(autoload 'cpputils-cmake "cpputils-cmake" nil t)
; Options for cpputils-cmake
(add-hook 'c-mode-common-hook
          (lambda ()
            (if (derived-mode-p 'c-mode 'c++-mode)
                (cppcm-reload-all)
              )))

;; OPTIONAL, avoid typing full path when starting gdb
(global-set-key (kbd "C-c C-g")
                '(lambda ()(interactive)
                   (gud-gdb (concat "gdb --fullname " (cppcm-get-exe-path-current-buffer))))
                )

; Load company-mode to provide completion
(autoload 'company-mode "company" nil t)
(add-hook 'c-mode-common-hook 'global-company-mode)


