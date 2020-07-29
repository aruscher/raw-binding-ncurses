(in-package #:binding)

#|
chtype inch(void);
chtype winch(WINDOW *win);
chtype mvinch(int y, int x);
chtype mvwinch(WINDOW *win, int y, int x);
|#

(defcfun "inch" chtype)

(defcfun "winch" chtype
  (win window))

(defcfun "mvinch" chtype
  (y :int)
  (x :int))

(defcfun "mvwinch" chtype
  (win window)
  (y :int)
  (x :int))

