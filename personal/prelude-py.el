;;; prelude-py.el --- Emacs Prelude: emacs python setup
;;
;; Author: shixiongfei

(prelude-require-packages '(py-autopep8 ein))

(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

(if (eq system-type 'darwin)
  (setq python-shell-interpreter "python3"))

(setq ein:use-auto-complete t)
(setq ein:use-smartrep t)

(provide 'prelude-py)

;;; prelude-py ends here
