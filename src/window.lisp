(in-package #:binding)

#|
WINDOW *newwin(int nlines, int ncols,int begin_y, int begin_x);
int delwin(WINDOW *win);
int mvwin(WINDOW *win, int y, int x);
WINDOW *subwin(WINDOW *orig, int nlines, int ncols, int begin_y, int begin_x);
WINDOW *derwin(WINDOW *orig, int nlines, int ncols, int begin_y, int begin_x);
int mvderwin(WINDOW *win, int par_y, int par_x);
WINDOW *dupwin(WINDOW *win);
void wsyncup(WINDOW *win);
int syncok(WINDOW *win, bool bf);
void wcursyncup(WINDOW *win);
void wsyncdown(WINDOW *win);
|#

(defcfun "newwin" (:pointer window)
  (nlines :int)
  (ncols :int)
  (begin_y :int)
  (begin_x :int))

(defcfun "delwin" (:pointer window)
  (win (:pointer window)))

(defcfun "mvwin" (:pointer window)
  (win (:pointer window))
  (y :int)
  (x :int))

(defcfun "subwin" (:pointer window)
  (orig (:pointer window))
  (nlines :int)
  (ncols :int)
  (begin_y :int)
  (begin_x :int))

(defcfun "derwin" (:pointer window)
  (orig (:pointer window))
  (nlines :int)
  (ncols :int)
  (begin_y :int)
  (begin_x :int))

(defcfun "mvderwin" :int
  (win (:pointer window))
  (par_y :int)
  (par_x :int))

(defcfun "dupwin" (:pointer window)
  (win (:pointer window)))

(defcfun "wsyncup" :void
  (win (:pointer window)))

(defcfun "syncok" :int
  (win (:pointer window))
  (bf :boolean))

(defcfun "wcursyncup" :void
  (win (:pointer window)))

(defcfun "wsyncdown" :void
  (win (:pointer window)))



