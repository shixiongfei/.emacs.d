;;; prelude-bigloo.el --- Emacs Prelude: Bigloo Configuration
;;
;; Auth: shixiongfei

(load-plugin "bmacs")
(load-plugin "bmacs/bee")
(load-plugin "bmacs/bug")
(load-plugin "bmacs/cee")
(load-plugin "bmacs/dbg")
(load-plugin "bmacs/etc")
(load-plugin "bmacs/lee")
(load-plugin "bmacs/ude")

(if (locate-library "bmacs")
    (require 'bmacs))

(autoload 'bdb "bdb" "bdb mode" t)
(autoload 'bee-mode "bee-mode" "bee mode" t)

(setq auto-mode-alist
    (append '(("\\.scm$" . bee-mode)
              ("\\.sch$" . bee-mode)
              ("\\.scme$" . bee-mode)
              ("\\.bgl$" . bee-mode)
              ("\\.bee$" . bee-mode))
            auto-mode-alist))

(provide 'prelude-bigloo)

;;; prelude-bigloo ends here
