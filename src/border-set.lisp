(in-package #:binding)

#|
int border_set(const cchar_t *ls, const cchar_t *rs, nconst cchar_t *ts, const cchar_t *bs, const cchar_t *tl, const cchar_t *tr, const cchar_t *bl, const cchar_t *br );
int wborder_set(WINDOW *win, const cchar_t *ls, const cchar_t *rs, const cchar_t *ts, const cchar_t *bs, const cchar_t *tl, const cchar_t *tr, const cchar_t *bl, const cchar_t *br);
int box_set(WINDOW *win, const cchar_t *verch, const cchar_t *horch);
int hline_set(const cchar_t *wch, int n);
int whline_set(WINDOW *win, const cchar_t *wch, int n);
int mvhline_set(int y, int x, const cchar_t *wch, int n);
int mvwhline_set(WINDOW *win, int y, int x, const cchar_t *wch, int n);
int vline_set(const cchar_t *wch, int n);
int wvline_set(WINDOW *win, const cchar_t *wch, int n);
int mvvline_set(int y, int x, const cchar_t *wch, int n);
int mvwvline_set(WINDOW *win, int y, int x, const cchar_t *wch, int n);
|#


(defcfun "border_set" :int
  (ls (:pointer (:struct cchar-t)))
  (rs (:pointer (:struct cchar-t)))
  (ts (:pointer (:struct cchar-t)))
  (bs (:pointer (:struct cchar-t)))
  (tl (:pointer (:struct cchar-t)))
  (tr (:pointer (:struct cchar-t)))
  (bl (:pointer (:struct cchar-t)))
  (br (:pointer (:struct cchar-t))))

(defcfun "wborder-set" :int
        (win (:pointer window))
        (ls (:pointer (:struct cchar-t)))
        (rs (:pointer (:struct cchar-t)))
        (ts (:pointer (:struct cchar-t)))
        (bs (:pointer (:struct cchar-t)))
        (tl (:pointer (:struct cchar-t)))
        (tr (:pointer (:struct cchar-t)))
        (bl (:pointer (:struct cchar-t)))
        (br (:pointer (:struct cchar-t))))

(defcfun "box_set" :int
  (win (:pointer window))
  (verch (:pointer (:struct cchar-t)))
  (horch (:pointer (:struct cchar-t))))

(defcfun "hline_set" :int
  (ch (:pointer (:struct cchar-t)))
  (n :int))

(defcfun "whline_set" :int
  (win (:pointer window))
  (ch (:pointer (:struct cchar-t)))
  (n :int))

(defcfun "vline_set" :int
  (ch (:pointer (:struct cchar-t)))
  (n :int))

(defcfun "wvline_set" :int
  (win (:pointer window))
  (ch (:pointer (:struct cchar-t)))
  (n :int))

(defcfun "mvhline_set" :int
  (y :int)
  (x :int)
  (ch (:pointer (:struct cchar-t)))
  (n :int))

(defcfun "mvwhline_set" :int
  (win (:pointer window))
  (y :int)
  (x :int)
  (ch (:pointer (:struct cchar-t)))
  (n :int))

(defcfun "mvvline_set" :int
  (y :int)
  (x :int)
  (ch (:pointer (:struct cchar-t)))
  (n :int))

(defcfun "mvwvline_set" :int
  (win (:pointer window))
  (y :int)
  (x :int)
  (ch (:pointer (:struct cchar-t)))
  (n :int))
