(in-package #:binding)

#|
char * keybound(int keycode, int count);
|#

(defcfun "keybound" :string
  (keycode :int)
  (count :int))
