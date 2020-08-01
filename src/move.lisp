(in-package #:binding)

#|
int move(int y, int x);
int wmove(WINDOW *win, int y, int x);
|#

(defcfun "move" :int
  (y :int)
  (x :int))

(defcfun "wmove" :int
  (win (:pointer window))
  (y :int)
  (x :int))
