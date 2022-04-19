;;; package -- Verificatiom config.org by means of 'org-lint'
;;; Commentary:
;;;
;;; Code:
(require 'org)
(add-hook 'org-mode-hook
          (lambda ()
            (let* ((file-name (current-buffer))
                   (Col1 'Line)
                   (Col2 'Trust)
                   (Col3 'Warning)
                   (lint-report (org-lint))
                   )
              (if lint-report
                  (progn (princ (format "file: %s\n%6s%6s%8s\n" file-name Col1 Col2 Col3))
                         (dolist (element lint-report)
                           (setq report (car (cdr element)))
                           (princ (format "%6s%6s %7s\n" (seq-elt report 0) (seq-elt report 1) (seq-elt report 2))) (princ (format "%s\n" org-version))
                           )
                         (signal 'org-lint-failed '("Org lint failed"))
                         )))))
