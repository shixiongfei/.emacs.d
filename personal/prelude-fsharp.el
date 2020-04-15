;;; prelude-fsharp.el --- Emacs Prelude: FSharp Configuration
;;
;; Author: shixiongfei

(prelude-require-packages '(fsharp-mode))

(setq inferior-fsharp-program "dotnet fsi --readline-")
(setq-default fsharp-indent-offset 4)

(provide 'prelude-fsharp)

;;; prelude-fsharp ends here

