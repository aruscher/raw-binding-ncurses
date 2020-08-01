(in-package #:binding)

#|
int inchstr(chtype *chstr);
int inchnstr(chtype *chstr, int n);
int winchstr(WINDOW *win, chtype *chstr);
int winchnstr(WINDOW *win, chtype *chstr, int n);
int mvinchstr(int y, int x, chtype *chstr);
int mvinchnstr(int y, int x, chtype *chstr, int n);
int mvwinchstr(WINDOW *win, int y, int x, chtype *chstr);
int mvwinchnstr(WINDOW *win, int y, int x, chtype *chstr, int n);
|#


(defcfun "inchstr" :int
  (inchstr (:pointer chtype)))

(defcfun "inchnstr" :int
  (inchstr (:pointer chtype))
  (n :int))

(defcfun "winchstr" :int
  (win (:pointer window))
  (chstr (:pointer chtype)))

(defcfun "winchnstr" :int
  (win (:pointer window))
  (chstr (:pointer chtype))
  (n :int))

(defcfun "mvinchstr" :int
  (y :int)
  (x :int)
  (chstr (:pointer chtype)))

(defcfun "mvinchnstr" :int
  (y :int)
  (x :int)
  (chstr (:pointer chtype))
  (n :int))

(defcfun "mvwinchstr" :int
  (win (:pointer window))
  (y :int)
  (x :int)
  (chstr (:pointer chtype)))

(defcfun "mvwinchnstr" :int
  (win (:pointer window))
  (y :int)
  (x :int)
  (chstr (:pointer chtype))
  (n :int))
