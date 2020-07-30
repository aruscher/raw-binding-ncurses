(in-package #:binding)

(defctype window-ptr :pointer)
(defctype screen-ptr :pointer)
(defctype file-ptr :pointer)
(defctype va_list :pointer)

(defcstruct mevent
  (id :short)
  (x :int)
  (y :int)
  (z :int)
  (bstate mmask_t))

