(in-package #:binding)

#|
int use_default_colors(void);
int assume_default_colors(int fg, int bg);
|#

(defcfun "use_default_colors" :int)

(defcfun "assume_default_colors" :int
  (fg :int)
  (bg :int))
