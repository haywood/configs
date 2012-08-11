;;; set non-package-specific defaults and variables

(setq-default inhibit-startup-screen t
              initial-scratch-message nil
              font-lock-use-colors t
              font-lock-maximum-decoration t
              font-lock-maximum-size nil
              global-font-lock-mode t
              user-full-name "Michael Reed"
              display-warning-minimum-level 'error
              delete-key-deletes-forward t
              display-time-day-and-date t)

(setq auto-mode-alist
      (append
       '(("bashrc\\'" . shell-script-mode)
         ("config\\'" . conf-mode))
       auto-mode-alist))

;;; package stuff

(require 'font-lock)
(if (fboundp 'global-font-lock-mode)
    (global-font-lock-mode t))
(make-face 'trailing-spaces-face "Face to display trailing spaces in.")
(add-hook 'font-lock-mode-hook                                ; Show
                                        ; trailing spaces and make
                                        ; fixme tags standout
          (lambda ()
            (font-lock-add-keywords nil
                                    '(("[ \t]+$" 0 'trailing-spaces-face t)
                                      ("AEK:?\\|FIXME:\\|TODO:\\|BUG:" 0 'font-lock-warning-face t)))))

(require 'package)
(add-to-list 'package-archives
	     '("marmalade" . "http://marmalade-repo.org/packages/") t)
(package-initialize)

(require 'starter-kit)

(require 'paredit)
(loop for mode in '(c-mode-hook
                    c++-mode-hook
                    java-mode-hook
                    js-mode-hook
                    python-mode-hook                    
                    ruby-mode-hook
                    scala-mode-hook
                    shell-script-mode
                    tuareg-mode-hook)

      do (add-hook mode 'esk-paredit-nonlisp))

(require 'flymake)
(esk-paredit-nonlisp)

;;; flymake ruby
(defun flymake-ruby-init ()
  (let* ((temp-file   (flymake-init-create-temp-buffer-copy
                       'flymake-create-temp-inplace))
         (local-file  (file-relative-name
                       temp-file
                       (file-name-directory buffer-file-name))))
    (list "ruby" (list "-c" local-file))))

(push '(".+\\.rb$" flymake-ruby-init) flymake-allowed-file-name-masks)
(push '("Rakefile$" flymake-ruby-init) flymake-allowed-file-name-masks)

(push '("^\\(.*\\):\\([0-9]+\\): \\(.*\\)$" 1 2 nil 3) flymake-err-line-patterns)

(add-hook 'ruby-mode-hook
          '(lambda ()

             ;; Don't want flymake mode for ruby regions in rhtml
             ;; files and also on read only files
             (if (and (not (null buffer-file-name)) (file-writable-p buffer-file-name))
                 (flymake-mode))))

;;; hack for making nxhtml work w/out a GUI
(if (boundp 'image-types) nil
  (defvar image-types nil))

(load "~/.emacs.d/nxhtml/autostart.el")

(require 'redo+)
(global-set-key (kbd "C-u") 'undo)
(global-set-key (kbd "C-r") 'redo)
(setq undo-no-redo t)

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(mumamo-background-colors nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
