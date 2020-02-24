;;; prelude-lua.el --- Emacs Prelude: Lua Configuration
;;
;; Author: shixiongfei

(prelude-require-packages '(lua-mode))

(with-eval-after-load 'lua-mode
  (setq lua-indent-level 2)
  (define-key lua-mode-map "\C-c\C-c" 'lua-send-current-line)
  (define-key lua-mode-map "\C-c\C-e" 'lua-send-region)
  (define-key lua-mode-map "\C-c\C-z" 'lua-show-process-buffer))
(autoload 'lua-mode "lua-mode" "Lua editing mode." t)
(add-to-list 'auto-mode-alist '("\\.lua$" . lua-mode))
(add-to-list 'interpreter-mode-alist '("lua" . lua-mode))

(provide 'prelude-lua)

;;; prelude-lua ends here
