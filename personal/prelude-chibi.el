;;; prelude-chibi.el --- Emacs Prelude: Slime for Chibi-Scheme Configuration
;;
;; Author: shixiongfei

(require 'prelude-common-lisp)

(defun chibi-scheme-start-swank (file encoding)
  (format "%S\n\n" `(start-swank ,file)))

(with-eval-after-load "slime"
  (setq slime-lisp-implementations
        '((chibi-scheme ("chibi-scheme" "-A/Users/shixiongfei/.emacs.d/r7rs-swank" "-m" "(chibi-swank)")
                         :init chibi-scheme-start-swank)))
  (setq slime-default-lisp 'chibi-scheme)
  (define-key slime-mode-map (kbd "C-c C-z") 'slime))

(add-to-list 'auto-mode-alist '("\\.scm\\'" . lisp-mode))
(add-to-list 'auto-mode-alist '("\\.ss\\'" . lisp-mode))


(provide 'prelude-chibi)

;;; prelude-chibi ends here
