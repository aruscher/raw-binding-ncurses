(in-package #:binding)

#|
NCURSES_WRAPPED_VAR(WINDOW *, curscr);
NCURSES_WRAPPED_VAR(WINDOW *, newscr);
NCURSES_WRAPPED_VAR(WINDOW *, stdscr);
NCURSES_WRAPPED_VAR(char *, ttytype);
NCURSES_WRAPPED_VAR(int, COLORS);
NCURSES_WRAPPED_VAR(int, COLOR_PAIRS);
NCURSES_WRAPPED_VAR(int, COLS);
NCURSES_WRAPPED_VAR(int, ESCDELAY);
NCURSES_WRAPPED_VAR(int, LINES);
NCURSES_WRAPPED_VAR(int, TABSIZE);
|#

(defcvar "curscr" (:pointer window))
(defcvar "newscr" (:pointer window))
(defcvar "stdscr" (:pointer window))
(defcvar "ttytype" :string)
(defcvar "COLORS" :int)
(defcvar "COLORS_PAIRS" :int)
(defcvar "COLS" :int)
(defcvar "ESCDELAY" :int)
(defcvar "LINES" :int)
(defcvar "TABSIZE" :int)

