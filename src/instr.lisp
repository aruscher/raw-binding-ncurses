(in-package #:binding)

#|
int instr(char *str);
int innstr(char *str, int n);
int winstr(WINDOW *win, char *str);
int winnstr(WINDOW *win, char *str, int n);
int mvinstr(int y, int x, char *str);
int mvinnstr(int y, int x, char *str, int n);
int mvwinstr(WINDOW *win, int y, int x, char *str);
int mvwinnstr(WINDOW *win, int y, int x, char *str, int n);
|#

(defcfun "instr" :int
  (str :string))

(defcfun "innstr" :int
  (str :string)
  (n :int))

(defcfun "winstr" :int
  (win (:pointer window))
  (str :string))

(defcfun "winnstr" :int
  (win (:pointer window))
  (str :string)
  (n :int))

(defcfun "mvinstr" :int
  (y :int)
  (x :int)
  (str :string))

(defcfun "mvinnstr" :int
  (y :int)
  (x :int)
  (str :string)
  (n :int))

(defcfun "mvwinstr" :int
  (win (:pointer window))
  (y :int)
  (x :int)
  (str :string))

(defcfun "mvwinnstr" :int
  (win (:pointer window))
  (y :int)
  (x :int)
  (str :string)
  (n :int))



