;;; prelude-autopep8.el --- Emacs Prelude: autopep8 setup
;;
;; Author: shixiongfei

(prelude-require-packages '(py-autopep8))
(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

(if (eq system-type 'darwin)
  (setq python-shell-interpreter "python3"))

(provide 'prelude-autopep8)

;;; prelude-autopep8.el ends here
