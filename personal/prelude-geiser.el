;;; prelude-geiser.el --- Emacs Prelude: Geiser Configuration
;;
;; Auth: shixiongfei

(if (eq system-type 'darwin)
    (setq geiser-chez-binary "mit"))

(setq geiser-active-implementations '(mit))

(provide 'prelude-geiser)

;;; prelude-geiser ends here
