(in-package #:binding)

#|
int overlay(const WINDOW *srcwin, WINDOW *dstwin);
int overwrite(const WINDOW *srcwin, WINDOW *dstwin);
int copywin(const WINDOW *srcwin, WINDOW *dstwin, int sminrow, int smincol, int dminrow, int dmincol, int dmaxrow, int dmaxcol, int overlay);
|#

(defcfun "overlay" :int
  (srcwin (:pointer window))
  (dstwin (:pointer window)))

(defcfun "overwrite" :int
  (srcwin (:pointer window))
  (dstwin (:pointer window)))

(defcfun "copywin" :int
  (srcwin (:pointer window))
  (dstwin (:pointer window))
  (sminrow :int)
  (smincol :int)
  (dminrow :int)
  (dmincol :int)
  (dmaxrow :int)
  (dmaxcol :int)
  (overlay :int))
