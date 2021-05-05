;;; prelude-scheme.el --- Emacs Prelude: Some defaults for Scheme.
;;
;; Copyright © 2011-2021 Bozhidar Batsov
;;
;; Author: Bozhidar Batsov <bozhidar@batsov.com>
;; URL: https://github.com/bbatsov/prelude

;; This file is not part of GNU Emacs.

;;; Commentary:

;; Some basic configuration for Scheme programming.

;;; License:

;; This program is free software; you can redistribute it and/or
;; modify it under the terms of the GNU General Public License
;; as published by the Free Software Foundation; either version 3
;; of the License, or (at your option) any later version.
;;
;; This program is distributed in the hope that it will be useful,
;; but WITHOUT ANY WARRANTY; without even the implied warranty of
;; MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
;; GNU General Public License for more details.
;;
;; You should have received a copy of the GNU General Public License
;; along with GNU Emacs; see the file COPYING.  If not, write to the
;; Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
;; Boston, MA 02110-1301, USA.

;;; Code:

(require 'prelude-lisp)
(require 'cmuscheme)

(setq scheme-mit-dialect nil)

(if (eq system-type 'darwin)
    (setq scheme-program-name "chez")
  (setq scheme-program-name "scheme"))

(add-hook 'scheme-mode-hook (lambda () (run-hooks 'prelude-lisp-coding-hook)))


;; bypass the interactive question and start the default interpreter
(defun scheme-proc ()
  "Return the current Scheme process, starting one if necessary."
  (unless (and scheme-buffer
               (get-buffer scheme-buffer)
               (comint-check-proc scheme-buffer))
    (save-window-excursion
      (run-scheme scheme-program-name)))
  (or (scheme-get-process)
      (error "No current process. See variable `scheme-buffer'")))


(defun scheme-split-window ()
  (cond
   ((= 1 (count-windows))
    (delete-other-windows)
    (split-window-vertically (floor (* 0.68 (window-height))))
    (other-window 1)
    (switch-to-buffer "*scheme*")
    (other-window 1))
   ((not (get-buffer-window "*scheme*"))
    (other-window 1)
    (switch-to-buffer "*scheme*")
    (other-window -1))))


(defun scheme-send-last-sexp-split-window ()
  (interactive)
  (scheme-split-window)
  (scheme-send-last-sexp))


(defun scheme-send-definition-split-window ()
  (interactive)
  (scheme-split-window)
  (scheme-send-definition))


(add-hook 'scheme-mode-hook
          (lambda ()
            (define-key scheme-mode-map (kbd "C-x C-e") 'scheme-send-last-sexp-split-window)
            (define-key scheme-mode-map (kbd "C-c C-e") 'scheme-send-definition-split-window)))


(add-hook 'inferior-scheme-mode-hook
          (lambda ()
            ;; Overwrite the standard 'switch-to-buffer' to use
            ;; 'switch-to-buffer-other-window'
            (defun switch-to-scheme (eob-p)
              "Switch to the Scheme process buffer.
               With argument, position cursor at end of buffer."
              (interactive "P")
              (if (or (and scheme-buffer (get-buffer scheme-buffer))
                      (scheme-interactively-start-process))
                  (switch-to-buffer-other-window scheme-buffer)
                (error "No current process buffer. See variable `scheme-buffer'"))
              (when eob-p
                (push-mark)
                (goto-char (point-max))))))


(provide 'prelude-scheme)

;;; prelude-scheme.el ends here
