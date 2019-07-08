;;; .ent.el --- local ent config file -*- lexical-binding: t; -*-

;;; Commentary:

;;; Code:

;; project settings
(setq ent-project-home (file-name-directory (if load-file-name load-file-name buffer-file-name)))
(setq ent-project-name "emacs-reveal")
(setq ent-clean-regexp "~$\\|\\.tex$")
(setq ent-project-orgfile "README.org")

(require 'ent)

(ent-tasks-init)

(task 'update  '() "update submodules" '(lambda (&optional x) "git submodule sync --recursive; git submodule update --init --recursive"))


;; Local Variables:
;; no-byte-compile: t
;; no-update-autoloads: t
;; End:
