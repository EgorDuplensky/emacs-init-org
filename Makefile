# todo: "install" target
org-lint:
	emacs --batch -l tests/scripts/org-lint-verify.el config.org

verify-init-load:
	emacs -Q --batch --eval "(setq debug-on-error t)" -l ./init.el

test: verify-init-load org-lint
