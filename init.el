;;; package -- Summary
;;; Commentary:
;;; Lisp modules goes here -- load some buffers
;;; Code:
;;; Set up package
;; always work with real files, not sym links
(setq vc-follow-symlinks t)

(setq native-comp-async-report-warnings-errors nil)

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))

(straight-use-package 'use-package)
(require 'use-package)
;;(setq use-package-verbose t)
;;(setq use-package-always-ensure t)
(setq straight-use-package-by-default t)
;; common configuration
(org-babel-load-file (expand-file-name "~/.emacs.d/config.org"))
;; load host specific settings, for example host specific proxy settings
(if (file-exists-p "~/.emacs.d/host_config.org")
    (org-babel-load-file (expand-file-name "~/.emacs.d/host_config.org")))
;; autogenereated configuration (e.g. by use-package)
(if (file-exists-p custom-file)
    (load custom-file))

(provide 'init)
;;; init.el ends here
