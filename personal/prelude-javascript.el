;;; prelude-javascript.el --- Emacs Prelude: JavaScript programming support.
;;
;; Author: shixiongfei

(prelude-require-packages '(js2-refactor
                            xref-js2
                            js2-highlight-vars
                            indium))

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

;; indium
(add-hook 'js2-mode-hook #'indium-interaction-mode)


(provide 'prelude-javascript)

;;; prelude-javascript ends here
