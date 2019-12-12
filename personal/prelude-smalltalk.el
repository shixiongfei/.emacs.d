;;; prelude-smalltalk.el --- Emacs Prelude: Smalltalk Configuration
;;
;; Author: shixiongfei

(require 'prelude-programming)
(prelude-require-packages '(smalltalk-mode))

(add-to-list 'auto-mode-alist '("\\.st\\'" . smalltalk-mode))

(autoload 'smalltalk-mode "smalltalk-mode.elc" "" t)
(autoload 'gst "gst-mode.elc" "" t)

(provide 'prelude-smalltalk)

;;; prelude-smalltalk.el ends here
