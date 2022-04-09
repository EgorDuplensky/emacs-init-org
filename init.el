;;; package -- Summary
;;; Commentary:
;;; Lisp modules goes here -- load some buffers
;;; Code:
;;; Set up package
(require 'package)

(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu" . "https://elpa.gnu.org/packages/")
        ("org" . "http://orgmode.org/elpa/")))
(setq package-native-compile t)

;; always work with real files, not sym links
(setq vc-follow-symlinks t)

;; for example host specific proxy settings
(if (file-exists-p "~/.emacs.d/host-specific-init.org")
    (org-babel-load-file (expand-file-name "~/.emacs.d/host-specific-init.org")))

(package-initialize)

;;; Bootstrap use-package
;; Install use-package if it's not already installed.
;; use-package is used to configure the rest of the packages.
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))

(require 'use-package)
(setq use-package-verbose t)
(setq use-package-always-ensure t)
;; common configuratiom
(org-babel-load-file (expand-file-name "~/.emacs.d/my-init.org"))
;; autogenereated configuration (e.g. by use-package)
(if (file-exists-p custom-file)
    (load custom-file))
(put 'narrow-to-region 'disabled nil)

(provide 'init)
;;; init.el ends here
