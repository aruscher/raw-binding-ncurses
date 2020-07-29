(in-package #:binding)

#|
void getyx(WINDOW *win, int y, int x);
void getparyx(WINDOW *win, int y, int x);
void getbegyx(WINDOW *win, int y, int x);
void getmaxyx(WINDOW *win, int y, int x);
|#

(defcfun "getyx" :void
  (win window)
  (y :int)
  (x :int))

(defcfun "getparyx" :void
  (win window)
  (y :int)
  (x :int))

(defcfun "getbegyx" :void
  (win window)
  (y :int)
  (x :int))

(defcfun "getmaxyx" :void
  (win window)
  (y :int)
  (x :int))
