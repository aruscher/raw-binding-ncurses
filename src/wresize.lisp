(in-package #:binding)

#|
int wresize(WINDOW *win, int lines, int columns);
|#

(defcfun "wresize" :int
  (win window)
  (lines :int)
  (columns :int))
