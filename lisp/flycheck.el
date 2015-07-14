
; Support flycheck
(add-hook 'c-mode-common-hook 'global-flycheck-mode)
(add-hook 'c++-mode-hook
          (lambda ()
            (setq flycheck-clang-language-standard "c++11")
            )
          )

(add-hook 'f90-mode-hook
          (lambda ()
            (global-flycheck-mode)
            (setq flycheck-gfortran-language-standard "f2003")
            (setq flycheck-gfortran-args "-Wall -Wextra -pedantic-errors")
            )
          )

