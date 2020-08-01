(in-package #:binding)

#|
int getch(void);
int wgetch(WINDOW *win);
int mvgetch(int y, int x);
int mvwgetch(WINDOW *win, int y, int x);
int ungetch(int ch);
int has_key(int ch);
|#
(defcfun "getch" :int)

(defcfun "wgetch" :int
  (win (:pointer window)))

(defcfun "mvgetch" :int
  (y :int)
  (x :int))

(defcfun "mvwgetch" :int
  (win (:pointer window))
  (y :int)
  (x :int))

(defcfun "ungetch" :int
  (ch :int))

(defcfun "has_key" :int
  (ch :int))
