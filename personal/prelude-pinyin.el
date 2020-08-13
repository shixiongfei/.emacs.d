;;; prelude-pinyin.el --- Emacs Prelude: Pinyin Configuration
;;
;; Author: shixiongfei

(prelude-require-packages '(pyim pyim-basedict posframe))

(pyim-basedict-enable)
(setq default-input-method "pyim")

(global-set-key (kbd "C-\\") 'toggle-input-method)
(global-set-key (kbd "M-i") 'pyim-convert-string-at-point)

(pyim-isearch-mode 1)
(setq pyim-page-tooltip 'posframe)
(setq pyim-page-length 9)

(provide 'prelude-pinyin)

;;; prelude-pinyin ends here

