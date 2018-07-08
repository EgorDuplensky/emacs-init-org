;;; package -- Verificatiom my-init.org by means of 'use-package-lint'
;;; Commentary:
;;;
;;; Code:
(require 'org)

(add-hook 'org-mode-hook
          (lambda()
            (condition-case ex
                (use-package-lint)
              (error (message "%s" (error-message-string ex)) (kill-emacs 1))
              )))
