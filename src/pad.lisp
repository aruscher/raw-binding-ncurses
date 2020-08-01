(in-package #:binding)

#|
WINDOW *newpad(int nlines, int ncols);
WINDOW *subpad(WINDOW *orig, int nlines, int ncols,
int begin_y, int begin_x);
int prefresh(WINDOW *pad, int pminrow, int pmincol, int sminrow, int smincol, int smaxrow, int smaxcol);
int pnoutrefresh(WINDOW *pad, int pminrow, int pmincol, int sminrow, int smincol, int smaxrow, int smaxcol);
int pechochar(WINDOW *pad, chtype ch);
int pecho_wchar(WINDOW *pad, const cchar_t *wch);
|#

(defcfun "newpad" (:pointer window)
  (nlines :int)
  (nclos :int))

(defcfun "subpad" (:pointer window)
  (orig (:pointer window))
  (nlines :int)
  (ncols :int)
  (begin_y :int)
  (begin_x :int))

(defcfun "prefresh" :int
  (pad (:pointer window))
  (pminrow :int)
  (pmincol :int)
  (sminrow :int)
  (smincol :int)
  (smaxrow :int)
  (smaxcol :int))

(defcfun "pnoutrefresh" :int
  (pad (:pointer window))
  (pminrow :int)
  (pmincol :int)
  (sminrow :int)
  (smincol :int)
  (smaxrow :int)
  (smaxcol :int))

(defcfun "pechochar" :int
  (pad (:pointer window))
  (ch chtype))

;; TODO pecho_wchar
