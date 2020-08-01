(in-package #:binding)

#|
int getstr(char *str);
int getnstr(char *str, int n);
int wgetstr(WINDOW *win, char *str);
int wgetnstr(WINDOW *win, char *str, int n);
int mvgetstr(int y, int x, char *str);
int mvwgetstr(WINDOW *win, int y, int x, char *str);
int mvgetnstr(int y, int x, char *str, int n);
int mvwgetnstr(WINDOW *, int y, int x, char *str, int n);
|#

(defcfun "getstr" :int
  (str :string))

(defcfun "getnstr" :int
  (str :string)
  (n :int))

(defcfun "wgetstr" :int
  (win (:pointer window))
  (str :string))

(defcfun "wgetnstr" :int
  (win (:pointer window))
  (str :string)
  (n :int))

(defcfun "mvgetstr" :int
  (y :int)
  (x :int)
  (str :string))

(defcfun "mvwgetstr" :int
  (win (:pointer window))
  (y :int)
  (x :int)
  (str :string))

(defcfun "mvgetnstr" :int
  (y :int)
  (x :int)
  (str :string)
  (n :int))

(defcfun "mvwgetnstr" :int
  (win (:pointer window))
  (y :int)
  (x :int)
  (str :string)
  (n :int))


