(in-package #:binding)


#|
int mcprint(char *data, int len);
|#

(defcfun "mcprint" :int
  (data :string)
  (len :int))
