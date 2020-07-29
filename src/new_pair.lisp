(in-package #:binding)

#|
int alloc_pair(int fg, int bg);
int find_pair(int fg, int bg);
int free_pair(int pair);
|#


(defcfun "alloc_pair" :int
  (fg :int)
  (bg :int))

(defcfun "find_pair" :int
  (fg :int)
  (bg :int))

(defcfun "free_pair" :int
  (pair :int))
