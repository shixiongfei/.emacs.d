;;; prelude-pinyin.el --- Emacs Prelude: Pinyin Configuration
;;
;; Author: shixiongfei

(prelude-require-packages '(pyim pyim-basedict))

(pyim-basedict-enable)

(setq default-input-method "pyim")
(setq pyim-page-length 9)
(setq pyim-page-tooltip 'popup)

(provide 'prelude-pinyin)

;;; prelude-pinyin ends here

