;;; prelude-environment.el --- Environment setup.
;;
;; Author: shixiongfei

;; UTF-8 as default encoding
(set-language-environment "UTF-8")

;; Display line number
(global-display-line-numbers-mode)
(global-visual-line-mode)

;; Set frame font
(set-frame-font "Sarasa Mono SC 12")

;; The frame is maximized when Emacs starts up
(add-to-list 'default-frame-alist '(fullscreen . maximized))

;; Setup shell exec path
(if (eq system-type 'windows-nt)
    ;; For autopep8 on Windows
    (add-to-list 'exec-path "C:/Program Files/Git/usr/bin"))