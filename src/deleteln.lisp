(in-package #:binding)

#|
int deleteln(void);
int wdeleteln(WINDOW *win);
int insdelln(int n);
int winsdelln(WINDOW *win, int n);
int insertln(void);
int winsertln(WINDOW *win);
|#

(defcfun "deleteln" :int)

(defcfun "wdeleteln" :int
  (win (:pointer window)))

(defcfun "insdelln" :int
  (n :int))

(defcfun "winsdelln" :int
  (win (:pointer window))
  (n :int))

(defcfun "insertln" :int)

(defcfun "winsertln" :int
  (win (:pointer window)))
