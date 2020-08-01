(in-package #:binding)

#|
bool is_term_resized(int lines, int columns);
int resize_term(int lines, int columns);
int resizeterm(int lines, int columns);
|#

(defcfun "is_term_resized" :boolean
  (lines :int)
  (columns :int))

(defcfun "resize_term" :int
  (lines :int)
  (columns :int))

(defcfun "resizeterm" :int
  (lines :int)
  (columns :int))
