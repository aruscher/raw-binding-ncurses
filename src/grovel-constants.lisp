(in-package #:binding)

(include "ncurses.h")

;; MISC
(constant (+NCURSES_VERSION_MAJOR+ "NCURSES_VERSION_MAJOR"))
(constant (+NCURSES_VERSION_MINOR+ "NCURSES_VERSION_MINOR"))
(constant (+NCURSES_VERSION_VERSION_PATCH+ "NCURSES_VERSION_PATCH"))
(constant (+NCURSES_WIDECHAR+ "NCURSES_WIDECHAR"))

;; X/OPEN Attributes
(constant (+WA_ATTRIBUTES+ "WA_ATTRIBUTES"))
(constant (+WA_NORMAL+ "WA_NORMAL"))
(constant (+WA_STANDOUT+ "WA_STANDOUT"))
(constant (+WA_UNDERLINE+ "WA_UNDERLINE"))
(constant (+WA_REVERSE+ "WA_REVERSE"))
(constant (+WA_BLINK+ "WA_BLINK"))
(constant (+WA_DIM+ "WA_DIM"))
(constant (+WA_BOLD+ "WA_BOLD"))
(constant (+WA_ALTCHARSET+ "WA_ALTCHARSET"))
(constant (+WA_INVIS+ "WA_INVIS"))
(constant (+WA_PROTECT+ "WA_PROTECT"))
(constant (+WA_HORIZONTAL+ "WA_HORIZONTAL"))
(constant (+WA_LEFT+ "WA_LEFT"))
(constant (+WA_LOW+ "WA_LOW"))  
(constant (+WA_RIGHT+ "WA_RIGHT"))
(constant (+WA_TOP+ "WA_TOP"))
(constant (+WA_VERTICAL+ "WA_VERTICAL"))
(constant (+WA_ITALIC+ "WA_ITALIC"))

;; colors
(constant (+COLOR_BLACK+ "COLOR_BLACK"))
(constant (+COLOR_RED+ "COLOR_RED"))
(constant (+COLOR_GREEN+ "COLOR_GREEN"))
(constant (+COLOR_YELLOW+ "COLOR_YELLOW"))
(constant (+COLOR_BLUE+ "COLOR_BLUE"))
(constant (+COLOR_MAGENTA+ "COLOR_MAGENTA"))
(constant (+COLOR_CYAN+ "COLOR_CYAN"))
(constant (+COLOR_WHITE+ "COLOR_WHITE"))

;; attributes
(constant (+A_NORMAL+ "A_NORMAL"))
(constant (+A_ATTRIBUTES+ "A_ATTRIBUTES"))
(constant (+A_CHARTEXT+ "A_CHARTEXT"))
(constant (+A_COLOR+ "A_COLOR"))
(constant (+A_STANDOUT+ "A_STANDOUT"))
(constant (+A_UNDERLINE+ "A_UNDERLINE"))
(constant (+A_REVERSE+ "A_REVERSE"))
(constant (+A_BLINK+ "A_BLINK"))
(constant (+A_DIM+ "A_DIM"))
(constant (+A_BOLD+ "A_BOLD"))
(constant (+A_ALTCHARSET+ "A_ALTCHARSET"))
(constant (+A_INVIS+ "A_INVIS"))
(constant (+A_PROTECT+ "A_PROTECT"))
(constant (+A_HORIZONTAL+ "A_HORIZONTAL"))
(constant (+A_LEFT+ "A_LEFT"))
(constant (+A_LOW+ "A_LOW"))
(constant (+A_RIGHT+ "A_RIGHT"))
(constant (+A_TOP+ "A_TOP"))
(constant (+A_VERTICAL+ "A_VERTICAL"))
(constant (+A_ITALIC+ "A_ITALIC"))
