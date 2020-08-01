(in-package #:binding)

#|
int scroll(WINDOW *win);
int scrl(int n);
int wscrl(WINDOW *win, int n);
|#

(defcfun "scroll" :int
  (win (:pointer window)))

(defcfun "scrl" :int
  (n :int))

(defcfun "wscrl" :int
  (win (:pointer window))
  (n :int))
