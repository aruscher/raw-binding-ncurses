(in-package #:binding)

#|
int overlay(const WINDOW *srcwin, WINDOW *dstwin);
int overwrite(const WINDOW *srcwin, WINDOW *dstwin);
int copywin(const WINDOW *srcwin, WINDOW *dstwin, int sminrow,
int smincol, int dminrow, int dmincol, int dmaxrow,
int dmaxcol, int overlay);
|#

(defcfun "overlay" :int
  (srcwin window)
  (dstwin window))

(defcfun "overwrite" :int
  (srcwin window)
  (dstwin window))

(defcfun "copywin" :int
  (srcwin window)
  (dstwin window)
  (sminrow :int)
  (smincol :int)
  (dminrow :int)
  (dmincol :int)
  (dmaxrow :int)
  (dmaxcol :int)
  (overlay :int))
