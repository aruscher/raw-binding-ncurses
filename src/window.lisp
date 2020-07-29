(in-package #:binding)

#|
WINDOW *newwin(int nlines, int ncols,int begin_y, int begin_x); 
int delwin(WINDOW *win);
int mvwin(WINDOW *win, int y, int x);
WINDOW *subwin(WINDOW *orig, int nlines, int ncols, int begin_y, int begin_x);
-- WINDOW *derwin(WINDOW *orig, int nlines, int ncols, int begin_y, int begin_x);
-- int mvderwin(WINDOW *win, int par_y, int par_x);
WINDOW *dupwin(WINDOW *win);
-- void wsyncup(WINDOW *win);
int syncok(WINDOW *win, bool bf);
--void wcursyncup(WINDOW *win);
--void wsyncdown(WINDOW *win);

The subwindow functions (subwin, derwin, mvderwin, wsyncup,  wsyncdown, wcursyncup,  syncok)  are flaky, incompletely implemented, and not well tested.
|#

(defcfun "newwin" window
  (nlines :int)
  (ncols :int)
  (begin_y :int)
  (begin_x :int))

(defcfun "delwin" window
  (win window))

(defcfun "mvwin" window
  (win window)
  (y :int)
  (x :int))


(defcfun "subwin" window
  (orig window)
  (nlines :int)
  (ncols :int)
  (begin_y :int)
  (begin_x :int))

(defcfun "dupwin" window
  (win window))

(defcfun "syncok" :int
  (win window)
  (bf :boolean))
