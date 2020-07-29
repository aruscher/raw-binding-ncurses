(in-package #:binding)

(defctype window :pointer)
(defctype screen :pointer)
(defctype file :pointer)

(defcstruct cchar_t
  (cchar_t-attr attr_t)
  (cchar_t-chars wchar_t :count 5)
  (cchar_t-ext_color :int))
