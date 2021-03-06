(in-package #:binding)

#|
int delch(void);
int wdelch(WINDOW *win);
int mvdelch(int y, int x);
int mvwdelch(WINDOW *win, int y, int x);
|#

(defcfun "delch" :int)

(defcfun "wdelch" :int (win (:pointer window)))

(defcfun "mvdelch" :int (y :int) (x :int))

(defcfun "mvwdelch" :int (win (:pointer window)) (y :int) (x :int))
