(in-package #:binding)

#|
int touchwin(WINDOW *win);
int touchline(WINDOW *win, int start, int count);
int untouchwin(WINDOW *win);
int wtouchln(WINDOW *win, int y, int n, int changed);
bool is_linetouched(WINDOW *win, int line);
bool is_wintouched(WINDOW *win);
|#

(defcfun "touchwin" :int
  (win window))

(defcfun "touchline" :int
  (win window)
  (start :int)
  (count :int))

(defcfun "untouchwin" :int
  (win window))

(defcfun "wtouchln" :int
  (win window)
  (y :int)
  (n :int)
  (changed :int))

(defcfun "is_linetouched" :boolean
  (win window)
  (line :int))

(defcfun "is_wintouched" :boolean
  (win window))
