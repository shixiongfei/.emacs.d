;;; prelude-c-cpp.el --- Emacs Prelude: C/C++ Configuration
;;
;; Author: shixiongfei

(prelude-require-packages '(clang-format))

(custom-set-variables
  '(clang-format-fallback-style "LLVM"))

(defun clang-format-on-save ()
  (add-hook 'before-save-hook #'clang-format-buffer nil 'local))

(add-hook 'c-mode-hook 'clang-format-on-save)
(add-hook 'c++-mode-hook 'clang-format-on-save)

(provide 'prelude-c-cpp)

;;; prelude-c-cpp ends here
