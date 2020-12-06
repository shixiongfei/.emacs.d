;;; prelude-platformio.el --- Emacs Prelude: PlatformIO Configuration
;;
;; Author: shixiongfei

(prelude-require-packages '(platformio-mode))
(require 'platformio-mode)

(add-hook 'c-mode-hook 'platformio-conditionally-enable)
(add-hook 'c++-mode-hook 'platformio-conditionally-enable)

(provide 'prelude-platformio)
