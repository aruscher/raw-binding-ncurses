(in-package #:binding)

#|
int keyok(int keycode, bool enable);
|#

(defcfun "keyok" :int
  (keycode :int)
  (enable :bool))
