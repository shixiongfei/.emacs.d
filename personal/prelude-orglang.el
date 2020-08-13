;;; prelude-orglang.el --- Emacs Prelude: org-mode language Configuration
;;
;; Author: shixiongfei

(with-eval-after-load 'org
  (org-babel-do-load-languages
    'org-babel-load-languages
    '((emacs-lisp . t)
      (ocaml . t)
      (C . t)
      (js . t)
      (python . t))))

(provide 'prelude-orglang)

;;; prelude-orglang ends here
