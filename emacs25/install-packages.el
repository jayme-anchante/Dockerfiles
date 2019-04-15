;;----------------------------------------------------------------------
;; ATTENTION: Run it in terminal in batch mode.
;;   emacs --script install-packages.el

(require 'package)
(package-initialize)

(add-to-list 'package-archives
'("melpa" . "https://melpa.org/packages/") t)

;; ATTENTION: Run the instructions bellow to update packages.
(package-list-packages)    ;; Show packages.
(package-refresh-contents) ;; Run `M-x package-refresh-contents'.
                           ;; Type `U' to mark to upgrade.
;; Press `X' to execute.

;;----------------------------------------------------------------------

;; List the packages you want.
(setq package-list '(helm
                     use-package
                     ess
                     ess-view
                     auto-complete
                     company
                     smartparens
                     magit
                     neotree
                     elpy
                     jedi
                     anaconda-mode))

;; Activate all the packages (in particular autoloads).
(package-initialize)

;; Fetch the list of packages available.
(unless package-archive-contents
  (package-refresh-contents))

;; Install the missing packages.
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; NOTE: after install `jedi` and `jedy-core`, run `M-x
;; jedi:install-server` in a new GNU Emacs session to enable proper auto
;; completation for Python scripts.

;; (byte-recompile-directory "~/.emacs.d/elpa/bookmark+" 0 t)

;; NOTE: install `sudo apt-get install python3-pip` is important to Elpy
;; works properly may due some things that are installed along side with
;; pip3.

;;----------------------------------------------------------------------
