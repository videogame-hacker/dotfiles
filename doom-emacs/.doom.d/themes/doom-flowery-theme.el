;;; doom-flowery-theme.el -*- no-byte-compile: t; -*-
(require 'doom-themes)

(defgroup doom-flowery-theme nil
  "Options for doom-themes"
  :group 'doom-themes)

(defcustom doom-flowery-padded-modeline doom-themes-padded-modeline
  "If non-nil, adds a 4px padding to the mode-line. Can be an integer to
determine the exact padding."
  :group 'doom-flowery-theme
  :type '(choice integer boolean))

(def-doom-theme doom-flowery
  "Flowery theme by Anthony Som."

  ;; name        gui       256       16
  ((bg         '("#19171a" nil       nil          ))
   (bg-alt     bg)
   (base0      '("#0d0d0d" "black"   "black"      ))
   (base1      '("#1b1b1b" "#1b1b1b"              ))
   (base2      '("#212122" "#1e1e1e"              ))
   (base3      '("#292b2b" "#292929" "brightblack"))
   (base4      '("#3f4040" "#3f3f3f" "brightblack"))
   (base5      '("#5c5e5e" "#525252" "brightblack"))
   (base6      '("#757878" "#6b6b6b" "brightblack"))
   (base7      '("#969896" "#979797" "brightblack"))
   (base8      '("#ffffff" "#ffffff" "white"      ))
   (fg         '("#fcf2f8" "#fcf2f8" "white"))
   (fg-alt     (doom-darken fg 0.4))

   (grey       '("#9d989f" "#9d989f" "brightblack"))
   (red        '("#fa5565" "#fa5565" "red"))
   (orange     '("#fb843b" "#fb843b" "brightred"))
   (yellow     '("#fafa64" "#fafa64" "yellow"))
   (green      '("#40f893" "#40f893" "green"))
   (blue       '("#72c6f1" "#72c6f1" "brightblue"))
   (dark-blue  '("#3bb7fb" "#3bb7fb" "blue"))
   (teal       blue) ; FIXME replace with real teal
   (magenta    '("#f25ec4" "#f25ec4" "magenta"))
   (violet     '("#f07fbe" "#f07fbe" "brightmagenta"))
   (cyan       '("#71f2e8" "#71f2e8" "cyan"))
   (dark-cyan  (doom-darken cyan 0.4))

   ;; face categories
   (highlight      violet)
   (vertical-bar   base0)
   (selection      `(,(car (doom-lighten bg 0.1)) ,@(cdr base4)))
   (builtin        yellow)
   (comments       grey)
   (doc-comments   (doom-lighten grey 0.14))
   (constants      dark-blue)
   (functions      blue)
   (keywords       violet)
   (methods        blue)
   (operators      fg)
   (type           yellow)
   (strings        green)
   (variables      fg)
   (numbers        green)
   (region         selection)
   (error          red)
   (warning        yellow)
   (success        green)
   (vc-modified    cyan)
   (vc-added       green)
   (vc-deleted     red)

   ;; custom categories
   (modeline-bg     `(,(doom-darken (car bg-alt) 0.3) ,@(cdr base3)))
   (modeline-bg-alt `(,(car bg) ,@(cdr base1)))
   (modeline-fg     base8)
   (modeline-fg-alt comments)
   (-modeline-pad
    (when doom-flowery-padded-modeline
      (if (integerp doom-flowery-padded-modeline)
          doom-flowery-padded-modeline
        4))))

  ;; --- faces ------------------------------
  ((doom-modeline-buffer-path       :foreground blue :bold bold)
   (doom-modeline-buffer-major-mode :inherit 'doom-modeline-buffer-path)

   ((line-number &override) :foreground base4)
   ((line-number-current-line &override) :foreground violet :bold bold)

   ;; rainbow-delimiters
   (rainbow-delimiters-depth-1-face :foreground violet)
   (rainbow-delimiters-depth-2-face :foreground blue)
   (rainbow-delimiters-depth-3-face :foreground orange)
   (rainbow-delimiters-depth-4-face :foreground green)
   (rainbow-delimiters-depth-5-face :foreground magenta)
   (rainbow-delimiters-depth-6-face :foreground yellow)
   (rainbow-delimiters-depth-7-face :foreground teal)

   (mode-line
    :background modeline-bg :foreground modeline-fg
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg)))
   (mode-line-inactive
    :background modeline-bg-alt :foreground modeline-fg-alt
    :box (if -modeline-pad `(:line-width ,-modeline-pad :color ,modeline-bg-alt))))

  ;; --- variables --------------------------
  ;; ()
  )

(provide 'doom-flowery-theme)
;;; doom-flowery-theme.el ends here
