;;; prelude-orgmode.el --- Emacs Prelude: org-mode Configuration
;;
;; Author: shixiongfei

(prelude-require-packages '(org-bullets gnuplot gnuplot-mode))
(require 'org-tempo)

(add-hook 'org-mode-hook
          (lambda ()
            (org-bullets-mode 1)
            (setq org-html-validation-link nil)
            (setq org-export-with-creator t)
            (setq org-publish-project-alist
                  '(("org-notes"
                     :base-directory "~/Codes/org"
                     :base-extension "org"
                     :publishing-directory "~/Codes/shixf.com/public"
                     :recursive t
                     :publishing-function org-html-publish-to-html
                     :author "shixiongfei"
                     :html-validation-link nil
                     :html-link-home "/"
                     :html-link-up "/"
                     :with-creator t
                     :auto-preamble t
                     :auto-sitemap t
                     :sitemap-title "Home Index"
                     :sitemap-filename "index.org"
                     :sitemap-sort-files anti-chronologically
                     :sitemap-file-entry-format "%d - %t")
                    ("org-static"
                     :base-directory "~/Codes/org"
                     :base-extension "css\\|js\\|png\\|jpg\\|gif"
                     :publishing-directory "~/Codes/shixf.com/public"
                     :recursive t
                     :publishing-function org-publish-attachment)
                    ("org" :components ("org-notes" "org-static"))))
            (global-set-key (kbd "C-c x") 'org-publish-current-project)))

(with-eval-after-load 'org
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
     (gnuplot . t)
     (ocaml . t)
     (C . t)
     (python . t)))
  (setq org-confirm-babel-evaluate nil))

(provide 'prelude-orgmode)

;;; prelude-orgmode ends here
