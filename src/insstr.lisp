(in-package #:binding)

#|
int insstr(const char *str);
int insnstr(const char *str, int n);
int winsstr(WINDOW *win, const char *str);
int winsnstr(WINDOW *win, const char *str, int n);
int mvinsstr(int y, int x, const char *str);
int mvinsnstr(int y, int x, const char *str, int n);
int mvwinsstr(WINDOW *win, int y, int x, const char *str);
int mvwinsnstr(WINDOW *win, int y, int x, const char *str, int n);
|#

(defcfun "insstr" :int
  (str :string))

(defcfun "insnstr" :int
  (str :string)
  (n :int))

(defcfun "winsstr" :int
  (win (:pointer window))
  (str :string))

(defcfun "winsnstr" :int
  (win (:pointer window))
  (str :string)
  (n :int))

(defcfun "mvinsstr" :int
  (y :int)
  (x :int)
  (str :string))

(defcfun "mvinsnstr" :int
  (y :int)
  (x :int)
  (str :string)
  (n :int))

(defcfun "mvwinsstr" :int
  (win (:pointer window))
  (y :int)
  (x :int)
  (str :string))

(defcfun "mvwinsnstr" :int
  (win (:pointer window))
  (y :int)
  (x :int)
  (str :string)
  (n :int))




