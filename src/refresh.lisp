(in-package #:binding)

#|
int refresh(void);
int wrefresh(WINDOW *win);
int wnoutrefresh(WINDOW *win);
int doupdate(void);
int redrawwin(WINDOW *win);
int wredrawln(WINDOW *win, int beg_line, int num_lines);
|#

(defcfun "refresh" :int)

(defcfun "wrefresh" :int
  (win (:pointer window)))

(defcfun "wnoutrefresh" :int
  (win (:pointer window)))

(defcfun "doupdate" :int)

(defcfun "redrawwin" :int
  (win (:pointer window)))

(defcfun "wredrawln" :int
  (win (:pointer window))
  (beg_line :int)
  (num_lines :int))
