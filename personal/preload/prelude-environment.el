;;; prelude-environment.el --- Environment setup.
;;
;; Author: shixiongfei

;; UTF-8 as default encoding
(set-language-environment "UTF-8")

;; Setup shell exec path
(if (eq system-type 'windows-nt)
    ;; For autopep8 on Windows
    (add-to-list 'exec-path "C:/Program Files/Git/usr/bin"))
