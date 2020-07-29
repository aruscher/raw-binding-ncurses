(in-package #:binding)

#|
int erase(void);
int werase(WINDOW *win);
int clear(void);
int wclear(WINDOW *win);
int clrtobot(void);
int wclrtobot(WINDOW *win);
int clrtoeol(void);
int wclrtoeol(WINDOW *win);
|#

(defcfun "erase" :int)
(defcfun "werase" :int (win window))
(defcfun "clear" :int)
(defcfun "wclear" :int (win window))
(defcfun "clrtobot" :int)
(defcfun "wclrtobot" :int (win window))
(defcfun "clrtoeol" :int)
(defcfun "wclrtoeol" :int (win window))
