;;; prelude-environment.el --- Environment setup.
;;
;; Author: shixiongfei

;; UTF-8 as default encoding
(set-language-environment "UTF-8")
(prefer-coding-system 'utf-8)

;; Display line number
(global-display-line-numbers-mode)
(global-visual-line-mode)

;; For autopep8 on Windows
(if (eq system-type 'windows-nt)
    (add-to-list 'exec-path "C:/Progra~1/Git/usr/bin"))

;; Setting Default Font
(set-face-attribute 'default nil :font "Inconsolata")

;; Setting CJK Font
(set-fontset-font t 'han "Noto Serif CJK SC")
(set-fontset-font t 'kana "Noto Serif CJK JP")
(set-fontset-font t 'hangul "Noto Serif CJK KR")

;; The frame is maximized when Emacs starts up
(if (or (eq system-type 'darwin)
        (eq system-type 'windows-nt))
    (add-to-list 'default-frame-alist '(fullscreen . maximized)))

;; (defun load-plugin (name)
;;    (add-to-list 'load-path (expand-file-name
;;                                (concat "plugins/" name)
;;                                user-emacs-directory))

