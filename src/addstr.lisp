(in-package #:binding)

#|
int addstr(const char *str);
int addnstr(const char *str, int n);
int waddstr(WINDOW *win, const char *str);
int waddnstr(WINDOW *win, const char *str, int n);
int mvaddstr(int y, int x, const char *str);
int mvaddnstr(int y, int x, const char *str, int n);
int mvwaddstr(WINDOW *win, int y, int x, const char *str);
int mvwaddnstr(WINDOW *win, int y, int x, const char *str, int n);
|#

(defcfun "addstr" :int (str :string))
(defcfun "addnstr" :int (str :string) (n :int))
(defcfun "waddstr" :int (win window) (str :string))
(defcfun "waddnstr" :int (win window) (str :string) (n :int))
(defcfun "mvaddstr" :int (y :int) (x :int) (str :string))
(defcfun "mvaddnstr" :int (y :int) (x :int) (str :string) (n :int))
(defcfun "mvwaddstr" :int (win window) (y :int) (x :int) (str :string))
(defcfun "mvwaddnstr" :int (win window) (y :int) (x :int) (str :string) (n :int))
