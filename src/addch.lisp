(in-package #:binding)

#|
int addch(const chtype ch);
int waddch(WINDOW *win, const chtype ch);
int mvaddch(int y, int x, const chtype ch);
int mvwaddch(WINDOW *win, int y, int x, const chtype ch);
int echochar(const chtype ch);
int wechochar(WINDOW *win, const chtype ch);
|#

(defcfun "addch" :int
  (ch chtype))

(defcfun "waddch" :int
  (win (:pointer window))
  (ch chtype))

(defcfun "mvaddch" :int
  (y :int)
  (x :int)
  (ch chtype))

(defcfun "mvwaddch" :int
  (win (:pointer window))
  (y :int)
  (x :int)
  (ch chtype))

(defcfun "echochar" :int
  (ch chtype))

(defcfun "wechochar" :int
  (win (:pointer window))
  (ch chtype))


;; ACS Line Graphics
