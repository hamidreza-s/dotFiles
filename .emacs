(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default default default italic underline success warning error])
 '(custom-enabled-themes (quote (misterioso))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;; --- General
(desktop-save-mode 1)
(setq backup-inhibited t)
(setq auto-save-derault nil)
(set-default 'truncate-lines t)

;; --- Melpa
(require 'package)
(add-to-list 'package-archives
        '("melpa-stable" . "https://stable.melpa.org/packages/") t)
(when (< emacs-major-version 24)
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))
(package-initialize)

;; --- NeoTree
(add-to-list 'load-path "~/.emacs.d/external/neotree")
(require 'neotree)
(global-set-key [f7] 'neotree-toggle)

;; --- Haskell
(add-hook 'haskell-mode-hook 'haskell-indentation-mode)

;; --- Erlang
(setq load-path (cons "/opt/local/lib/erlang/lib/tools-2.7.2/emacs" load-path))
(setq erlang-root-dir "/opt/local/lib/erlang")
(setq exec-path (cons "/opt/local/lib/erlang/bin" exec-path))
(require 'erlang-start)
