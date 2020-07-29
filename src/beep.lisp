(in-package #:binding)

#|
int beep(void);
int flash(void);
|#

(defcfun "beep" :int)
(defcfun "flash" :int)
