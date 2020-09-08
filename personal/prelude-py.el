;;; prelude-py.el --- Emacs Prelude: emacs python setup
;;
;; Author: shixiongfei

(prelude-require-packages '(py-autopep8 ein))

;; For autopep8 on Windows
(if (eq system-type 'windows-nt)
    (add-to-list 'exec-path "C:/Progra~1/Git/usr/bin"))

(add-hook 'python-mode-hook 'py-autopep8-enable-on-save)

(setq ein:use-auto-complete t)
(setq ein:use-smartrep t)

(provide 'prelude-py)

;;; prelude-py ends here
