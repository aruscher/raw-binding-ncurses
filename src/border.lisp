(in-package #:binding)

#|
int border(chtype ls, chtype rs, chtype ts, chtype bs, chtype tl, chtype tr, chtype bl, chtype br);
int wborder(WINDOW *win, chtype ls, chtype rs, chtype ts, chtype bs, chtype tl, chtype tr, chtype bl, chtype br);
int box(WINDOW *win, chtype verch, chtype horch);
int hline(chtype ch, int n);
int whline(WINDOW *win, chtype ch, int n);
int vline(chtype ch, int n);
int wvline(WINDOW *win, chtype ch, int n);
int mvhline(int y, int x, chtype ch, int n);
int mvwhline(WINDOW *, int y, int x, chtype ch, int n);
int mvvline(int y, int x, chtype ch, int n);
int mvwvline(WINDOW *, int y, int x, chtype ch, int n);
|#


(defcfun "border" :int
  (ls chtype)
  (rs chtype)
  (ts chtype)
  (bs chtype)
  (tl chtype)
  (tr chtype)
  (bl chtype)
  (br chtype))

(efcfun "wborder" :int
        (win (:pointer window))
        (ls chtype)
        (rs chtype)
        (ts chtype)
        (bs chtype)
        (tl chtype)
        (tr chtype)
        (bl chtype)
        (br chtype))

(defcfun "box" :int
  (win (:pointer window))
  (verch chtype)
  (horch chtype))

(defcfun "hline" :int
  (ch chtype)
  (n :int))

(defcfun "whline" :int
  (win (:pointer window))
  (ch chtype)
  (n :int))

(defcfun "vline" :int
  (ch chtype)
  (n :int))

(defcfun "wvline" :int
  (win (:pointer window))
  (ch chtype)
  (n :int))

(defcfun "mvhline" :int
  (y :int)
  (x :int)
  (ch chtype)
  (n :int))

(defcfun "mvwhline" :int
  (win (:pointer window))
  (y :int)
  (x :int)
  (ch chtype)
  (n :int))

(defcfun "mvvline" :int
  (y :int)
  (x :int)
  (ch chtype)
  (n :int))

(defcfun "mvwvline" :int
  (win (:pointer window))
  (y :int)
  (x :int)
  (ch chtype)
  (n :int))

