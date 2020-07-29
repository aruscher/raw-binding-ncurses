(in-package #:binding)

#|
int scroll(WINDOW *win);
int scrl(int n);
int wscrl(WINDOW *win, int n);
|#

(defcfun "scroll" :int
  (win window))

(defcfun "scrl" :int
  (n :int))

(defcfun wscrl :int
  (win window)
  (n :int))
