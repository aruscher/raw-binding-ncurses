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
  (win (:pointer window)))

(defcfun "getbegx" :int
  (win (:pointer window)))

(defcfun "getbegy" :int
  (win (:pointer window)))

(defcfun "getcurx" :int
  (win (:pointer window)))

(defcfun "getcury" :int
  (win (:pointer window)))

(defcfun "getmaxx" :int
  (win (:pointer window)))

(defcfun "getmaxy" :int
  (win (:pointer window)))

(defcfun "getparx" :int
  (win (:pointer window)))

(defcfun "getpary" :int
  (win (:pointer window)))
