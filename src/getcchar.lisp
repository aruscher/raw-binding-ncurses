(in-package #:binding)

#|
int getcchar(const cchar_t *wcval, wchar_t *wch, attr_t *attrs, short *color_pair, void *opts);

int setcchar(cchar_t *wcval, const wchar_t *wch, const attr_t attrs, short color_pair,const void *opt);
|#

(defcfun "getcchar" :int
  (wcval (:pointer (:struct cchar-t)))
  (wch (:pointer wchar-t))
  (attrs (:pointer attr-t))
  (color-pair (:pointer :short))
  (opts :pointer))

(defcfun "setcchar" :int
  (wcval (:pointer (:struct cchar-t)))
  (wch (:pointer wchar-t))
  (attrs attr-t)
  (color-pair :short)
  (opts :pointer))
