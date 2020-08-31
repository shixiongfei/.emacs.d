;;; prelude-ag.el --- Emacs ag Configuration
;;
;; Author: shixiongfei

(prelude-require-packages '(ag))

(global-set-key (kbd "C-c /") 'counsel-ag)

(provide 'prelude-ag)

;;; prelude-ag ends here
