;; Enable org-mode
(setq load-path (cons "~/Build/Emacs/org-mode/lisp" load-path))
(setq load-path (cons "~/Build/Emacs/org-mode/contrib/lisp"
load-path))
(require 'org-install)

;; Define tag shortcuts
(setq org-tag-alist '(("emacs" . ?e) ("browser" . ?b) ("system" . ?s) ("orgmode" . ?o)))

;; Set the cycle of workflow
;; The "|" seperates not done and done states
(setq org-todo-keywords
  '((sequence "TODO" "IN-PROGRESS" "|" "DONE")))

;; Allow embedding a TODO within text without treating it as an outline heading
(require 'org-inlinetask)

;; Fix issue where S-left and S-right produced 2C and 2D, respectively
(define-key input-decode-map "\e[1;2D" [S-left])
(define-key input-decode-map "\e[1;2C" [S-right])

;; shortcut definitions
(add-to-list 'auto-mode-alist '("\\.org$" . org-mode))
(global-set-key "\C-cl" 'org-store-link)
(global-set-key "\C-ca" 'org-agenda)
(global-set-key "\C-cb" 'org-iswitchb)
(setq org-log-done t)

;; custom set variables
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/org/to-do-list.org")))
 '(org-deadline-warning-days 14))
