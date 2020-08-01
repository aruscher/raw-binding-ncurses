(in-package #:binding)

#|
int printw(const char *fmt, ...);
int wprintw(WINDOW *win, const char *fmt, ...);
int mvprintw(int y, int x, const char *fmt, ...);
int mvwprintw(WINDOW *win, int y, int x, const char *fmt, ...);
int vw_printw(WINDOW *win, const char *fmt, va_list varglist);
|#


(defcfun "printw" :int
  (fmt :string)
  &rest)

(defcfun "wprintw" :int
  (win (:pointer window))
  (fmt :string)
  &rest)

(defcfun "mvprintw" :int
  (y :int)
  (x :int)
  (fmt :string)
  &rest)

(defcfun "mvwprintw" :int
  (win (:pointer window))
  (y :int)
  (x :int)
  (fmt :string)
  &rest)

;; TODO: (defcfun "vw_printw" :int (win (:pointer window)) (fmt :string) (varglist va_list))
