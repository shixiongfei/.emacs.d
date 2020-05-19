;;; prelude-geiser.el --- Emacs Prelude: Geiser Configuration
;;
;; Auth: shixiongfei

(when (eq system-type 'darwin)
  (setq scheme-program-name "chez")
  (setq geiser-chez-binary "chez"))

(setq geiser-active-implementations '(chez))

(provide 'prelude-geiser)

;;; prelude-geiser ends here

