;;; prelude-javascript.el --- Emacs Prelude: JavaScript programming support.
;;
;; Author: shixiongfei

(prelude-require-packages '(js2-refactor
                            xref-js2
                            js-doc
                            js2-highlight-vars
                            add-node-modules-path
                            prettier-js))

;; js-doc
(require 'js-doc)
(add-hook 'js2-mode-hook
          #'(lambda ()
              (define-key js2-mode-map (kbd "C-c C-d") 'js-doc-insert-function-doc)
              (define-key js2-mode-map (kbd "@") 'js-doc-insert-tag)))

;; add-node-modules-path
(eval-after-load 'js2-mode
      '(add-hook 'js2-mode-hook #'add-node-modules-path))

;; js2-refactor
(add-hook 'js2-mode-hook #'js2-refactor-mode)
(js2r-add-keybindings-with-prefix "C-c C-m")

;; xref-js2
(define-key js2-mode-map (kbd "M-.") nil)
(add-hook 'js2-mode-hook
  (lambda () (add-hook 'xref-backend-functions #'xref-js2-xref-backend nil t)))

(with-eval-after-load 'js2-refactor-mode
  (setq js2-skip-preprocessor-directives t))

;; js2-highlight-vars
(eval-after-load "js2-highlight-vars-autoloads"
  '(add-hook 'js2-mode-hook (lambda () (js2-highlight-vars-mode))))

;; prettier-js
(setq prettier-js-args '("--trailing-comma" "none"
                         "--single-quote" "true"
                         "--bracket-spacing" "true"
                         "--print-width" "80"
                         "--arrow-parens" "avoid"
                         "--no-semi"))

(add-hook 'js2-mode-hook 'prettier-js-mode)
(add-hook 'web-mode-hook 'prettier-js-mode)
(add-hook 'css-mode-hook 'prettier-js-mode)

(provide 'prelude-javascript)

;;; prelude-javascript ends here
