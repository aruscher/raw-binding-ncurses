(in-package #:binding)

#|
void bkgdset(chtype ch);
void wbkgdset(WINDOW *win, chtype ch);
int bkgd(chtype ch);
int wbkgd(WINDOW *win, chtype ch);
chtype getbkgd(WINDOW *win);
|#

(defcfun "bkgdset" :void (ch chtype))
(defcfun "wbkgdset" :void (win window) (ch chtype))
(defcfun "bkgd" :int (ch chtype))
(defcfun "wbkgd" :int (win window) (ch chtype))
(defcfun "getbkgd" chtype (win window))
