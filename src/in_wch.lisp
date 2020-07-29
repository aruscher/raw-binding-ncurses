(in-package #:binding)

#|
int in_wch(cchar_t *wcval);
int mvin_wch(int y, int x, cchar_t *wcval);
int mvwin_wch(WINDOW *win, int y, int x, cchar_t *wcval);
int win_wch(WINDOW *win, cchar_t *wcval);
|#

(defcfun "in_wch" :int
  (wcval :pointer (:struct cchar_t)))

(defcfun "mvin_wch" :int
  (y :int)
  (x :int)
  (wcval :pointer (:struct cchar_t)))

(defcfun "mvwin_wch" :int
  (win window)
  (y :int)
  (x :int)
  (wcval :pointer (:struct cchar_t)))

(defcfun "win_wch" :int
  (win window)
  (wcval :pointer (:struct cchar_t)))
