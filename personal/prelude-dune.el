;;; prelude-dune.el --- Emacs Prelude: Dune Configuration
;;
;; Author: shixiongfei

(prelude-require-packages '(dune))

(autoload 'dune-mode "dune-mode" "Dune mode." t)
(add-to-list 'auto-mode-alist '("/dune\\'" . dune-mode))

(provide 'prelude-dune)

;;; prelude-dune ends here
