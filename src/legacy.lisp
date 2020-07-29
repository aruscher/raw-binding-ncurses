(in-package #:binding)

#|
int getattrs(const WINDOW *win);
int getbegx(const WINDOW *win);
int getbegy(const WINDOW *win);
int getcurx(const WINDOW *win);
int getcury(const WINDOW *win);
int getmaxx(const WINDOW *win);
int getmaxy(const WINDOW *win);
int getparx(const WINDOW *win);
int getpary(const WINDOW *win);
|#

(defcfun "getattrs" :int
  (win window))

(defcfun "getbegx" :int
  (win window))

(defcfun "getbegy" :int
  (win window))

(defcfun "getcurx" :int
  (win window))

(defcfun "getcury" :int
  (win window))

(defcfun "getmaxx" :int
  (win window))

(defcfun "getmaxy" :int
  (win window))

(defcfun "getparx" :int
  (win window))

(defcfun "getpary" :int
  (win window))
