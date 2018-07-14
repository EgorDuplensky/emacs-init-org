;;; package -- Summary
;;; Commentary:
;;; Lisp modules goes here -- load some buffers
;;; Code:

;;; Set up package
(require 'package)
;;(setq package-enable-at-startup nil)
(setq package-archives
      '(("melpa" . "https://melpa.org/packages/")
        ("gnu" . "https://elpa.gnu.org/packages/")))

(package-initialize)

;;; Bootstrap use-package
;; Install use-package if it's not already installed.
;; use-package is used to configure the rest of the packages.
(require 'use-package)
(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install use-package))
;;(provide 'init)
;;; init.el ends here
