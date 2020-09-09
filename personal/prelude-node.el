;;; prelude-node.el --- Emacs Prelude: Node.js Configuration
;;
;; Author: shixiongfei

(require 'prelude-programming)
(prelude-require-packages '(nodejs-repl))

(add-hook 'js2-mode-hook
    (lambda ()
      (define-key js2-mode-map (kbd "C-x C-e") 'nodejs-repl-send-last-sexp)
      (define-key js2-mode-map (kbd "C-c C-j") 'nodejs-repl-send-line)
      (define-key js2-mode-map (kbd "C-c C-r") 'nodejs-repl-send-region)
      (define-key js2-mode-map (kbd "C-c C-c") 'nodejs-repl-send-buffer)
      (define-key js2-mode-map (kbd "C-c C-l") 'nodejs-repl-load-file)
      (define-key js2-mode-map (kbd "C-c C-z") 'nodejs-repl-switch-to-repl)))

(provide 'prelude-node)

;;; prelude-node ends here
