(in-package #:binding)

#|
int addchstr(const chtype *chstr);
int addchnstr(const chtype *chstr, int n);
int waddchstr(WINDOW *win, const chtype *chstr);
int waddchnstr(WINDOW *win, const chtype *chstr, int n);
int mvaddchstr(int y, int x, const chtype *chstr);
int mvaddchnstr(int y, int x, const chtype *chstr, int n);
int mvwaddchstr(WINDOW *win, int y, int x, const chtype *chstr);
int mvwaddchnstr(WINDOW *win, int y, int x, const chtype *chstr, int n);
|#

(defcfun "addchstr" :int
  (chstr (:pointer chtype)))

(defcfun "addchnstr" :int
  (chstr (:pointer chtype))
  (n :int))

(defcfun "waddchstr" :int
  (win (:pointer window))
  (chstr (:pointer chtype)))

(defcfun "waddchnstr" :int
  (win (:pointer window))
  (chstr (:pointer chtype))
  (n :int))

(defcfun "mvaddchstr" :int
  (y :int)
  (x :int)
  (chstr (:pointer chtype)))

(defcfun "mvaddchnstr" :int
  (y :int)
  (x :int)
  (chstr (:pointer chtype))
  (n :int))

(defcfun "mvwaddchstr" :int
  (win (:pointer window))
  (y :int)
  (x :int)
  (chstr (:pointer chtype)))

(defcfun "mvwaddchnstr" :int
  (win (:pointer window))
  (y :int)
  (x :int)
  (chstr (:pointer chtype))
  (n :int))










