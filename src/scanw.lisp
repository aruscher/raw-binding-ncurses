(in-package #:binding)


#|
int scanw(const char *fmt, ...);
int wscanw(WINDOW *win, const char *fmt, ...);
int mvscanw(int y, int x, const char *fmt, ...);
int mvwscanw(WINDOW *win, int y, int x, const char *fmt, ...);
int vw_scanw(WINDOW *win, const char *fmt, va_list varglist);
|#


(defcfun "scanw" :int
  (fmt string)
  &rest)

(defcfun "wscanw" :int
  (win (:pointer window))
  (fmt :string)
  &rest)

(defcfun "mvscanw" :int
  (y :int)
  (x :int)
  (fmt string)
  &rest)

(defcfun "mvwscanw" :int
  (win (:pointer window))
  (y :int)
  (x :int)
  (fmt :string)
  &rest)

;; TODO: (defcfun "vw_scanw" :int (win (:pointer window)) (fmt :string) (varglist va_list))
