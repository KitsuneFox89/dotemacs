
(defvar
 required-packages
 '(
   zenburn-theme
   cuda-mode
   nlinum
   cmake-mode
   cmake-font-lock
   company
   cpputils-cmake
   flycheck
   yaml-mode
  ) "A list of packages to ensure are installed at launch."
)

(require 'package)
(add-to-list 'package-archives
	     ;; The 't' means to append, so that MELPA comes after the more
	     ;; stable ELPA archive.
	     '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

; my-packages.el
(require 'cl)

; method to check if all packages are installed
(defun packages-installed-p ()
  (loop for p in required-packages
        when (not (package-installed-p p)) do (return nil)
        finally (return t)))

; if not all packages are installed, check one by one and install the missing ones.
(unless (packages-installed-p)
  ; check for new packages (package versions)
  (message "%s" "Emacs is now refreshing its package database...")
  (package-refresh-contents)
  (message "%s" " done.")
  ; install the missing packages
  (dolist (p required-packages)
    (when (not (package-installed-p p))
      (package-install p))))

