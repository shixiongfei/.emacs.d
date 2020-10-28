;;; prelude-racket.el --- Racket Mode
;;
;; Auth: shixiongfei

(prelude-require-packages '(racket-mode))

(require 'prelude-lisp)

(with-eval-after-load 'racket-mode
  (define-key racket-mode-map (kbd "M-RET") 'racket-run))

(add-hook 'racket-mode-hook #'racket-unicode-input-method-enable)
(add-hook 'racket-repl-mode-hook #'racket-unicode-input-method-enable)

(add-hook 'racket-mode-hook (lambda () (run-hooks 'prelude-lisp-coding-hook)))

(add-to-list 'auto-mode-alist '("\\.rkt$" . racket-mode))
(add-to-list 'auto-mode-alist '("\\.rkt?\\'" . racket-mode))
(add-to-list 'auto-mode-alist '("\\.rkt\\'" . racket-mode))

(provide 'prelude-racket)

;;; prelude-racket ends here

