;;; prelude-orgmode.el --- Emacs Prelude: org-mode Configuration
;;
;; Author: shixiongfei

(prelude-require-packages '(org-bullets gnuplot gnuplot-mode))
(unless (version< (org-version) "9.2")
  (require 'org-tempo))

(defun org-publish-sitemap-time-entry (entry style project)
  (format "%s %s"
          (format-time-string
           "[%Y.%m.%d]"
           (org-publish-find-date entry project))
          (org-publish-sitemap-default-entry entry style project)))

(add-hook 'org-mode-hook
          (lambda ()
            (org-bullets-mode 1)
            (setq org-html-validation-link nil)
            (setq org-export-with-creator t)
            (setq org-publish-project-alist
                  '(("org-post"
                     :base-directory "~/Codes/org/post"
                     :base-extension "org"
                     :publishing-directory "~/Codes/shixf.com/public"
                     :recursive t
                     :exclude "private*\\|.*\.private\.org"
                     :publishing-function org-html-publish-to-html
                     :section-numbers nil
                     :with-sub-superscript nil
                     :author "shixiongfei"
                     :html-validation-link nil
                     :html-doctype "html5"
                     :html-link-home "/"
                     :html-link-up "/"
                     ;; :html-home/up-format ""
                     :html-head "<link rel=\"stylesheet\" type=\"text/css\" href=\"style.css\"/>\n<script src=\"https://hm.baidu.com/hm.js?4dbc75a8d627e17a8714e4c8b2e9afa8\"></script>"
                     :html-head-include-default-style nil
                     :with-creator t
                     :auto-preamble t
                     ;; :html-preamble ""
                     :auto-sitemap t
                     :sitemap-style list
                     :sitemap-title "{im}shixiongfei"
                     :sitemap-filename "index.org"
                     :sitemap-sort-files anti-chronologically
                     :sitemap-format-entry org-publish-sitemap-time-entry)
                    ("org-static"
                     :base-directory "~/Codes/org/static"
                     :base-extension "css\\|js"
                     :publishing-directory "~/Codes/shixf.com/public"
                     :recursive t
                     :publishing-function org-publish-attachment)
                    ("org-images"
                     :base-directory "~/Codes/org/post"
                     :base-extension "jpg\\|jpeg\\|png\\|gif"
                     :publishing-directory "~/Codes/shixf.com/public"
                     :recursive t
                     :publishing-function org-publish-attachment)
                    ("org" :components ("org-post" "org-static" "org-images"))))
            (global-set-key (kbd "C-c x") 'org-publish-current-project)))

(with-eval-after-load 'org
  (org-babel-do-load-languages
   'org-babel-load-languages
   '((emacs-lisp . t)
     (gnuplot . t)
     (ocaml . t)
     (C . t)
     (scheme . t)
     (python . t)))
  (setq org-confirm-babel-evaluate nil))

(provide 'prelude-orgmode)

;;; prelude-orgmode ends here
