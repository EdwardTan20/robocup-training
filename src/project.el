
(require 'ox-publish)

(let ((proj-base (file-name-directory load-file-name)))
  (setq org-publish-project-alist
    `(("rc-slides"
        :base-directory ,(concat proj-base ".")
        :publishing-directory ,(concat proj-base "../slides/")
        :publishing-function org-reveal-publish-to-reveal
        :exclude-tags ("docs"))
       ("rc-docs"
         :base-directory ,(concat proj-base ".")
         :publishing-directory ,(concat proj-base "../docs/")
         :publishing-function org-gfm-publish-to-gfm
         :exclude-tags ("slides")
         ))
    org-reveal-root "https://cdn.jsdelivr.net/reveal.js/3.0.0/"
    org-reveal-margin "0.22"))

(defun my-org-publish ()
  (interactive)
  (org-publish-all))


(setq org-babel-python-command "python3")
