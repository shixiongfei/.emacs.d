;;; prelude-orgmode.el --- Emacs Prelude: org-mode Configuration
;;
;; Author: shixiongfei

(prelude-require-packages '(org-bullets gnuplot gnuplot-mode))
(require 'org-tempo)

(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))

(with-eval-after-load 'org
 (org-babel-do-load-languages
  'org-babel-load-languages
  '((emacs-lisp . t)
    (gnuplot . t)
    (ocaml . t)
    (C . t)
    (python . t)))
 (setq org-confirm-babel-evaluate nil))

(provide 'prelude-orgmode)

;;; prelude-orgmode ends here
