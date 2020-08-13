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

(setq-default pyim-english-input-switch-functions
              '(pyim-probe-program-mode
                pyim-probe-org-speed-commands
                pyim-probe-isearch-mode
                pyim-probe-org-structure-template
                pyim-probe-dynamic-english))

(setq-default pyim-punctuation-half-width-functions
              '(pyim-probe-punctuation-line-beginning
                pyim-probe-punctuation-after-punctuation))

(provide 'prelude-pinyin)

;;; prelude-pinyin ends here

