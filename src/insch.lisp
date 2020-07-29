(in-package #:binding)

#|
int insch(chtype ch);
int winsch(WINDOW *win, chtype ch);
int mvinsch(int y, int x, chtype ch);
int mvwinsch(WINDOW *win, int y, int x, chtype ch);
|#

(defcfun "insch" :int
  (ch chtype))

(defcfun "winsch" :int
  (win window)
  (ch chtype))

(defcfun "mvinsch" :int
  (y :int)
  (x :int)
  (ch chtype))

(defcfun "mvwinsch" :int
  (win window)
  (y :int)
  (x :int)
  (ch chtype))
