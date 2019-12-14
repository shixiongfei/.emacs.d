;;; prelude-geiser.el --- Emacs Prelude: Geiser Configuration
;;
;; Auth: shixiongfei

(if (eq system-type 'darwin)
    (setq geiser-chez-binary "chez"))

(setq geiser-active-implementations '(chez))

(provide 'prelude-geiser)

;;; prelude-geiser ends here
