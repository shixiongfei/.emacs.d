;;; prelude-chezscheme.el --- Emacs Prelude: Chez Scheme Configuration
;;
;; Author: shixiongfei

(prelude-require-packages '(geiser-chez))

(require 'geiser-chez)

(if (eq system-type 'darwin)
    (setq geiser-chez-binary "chez"))

(setq geiser-active-implementations '(chez))

(provide 'prelude-geiser)

;;; prelude-chezscheme ends here
