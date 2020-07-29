(in-package #:binding)

#|
int use_legacy_coding(int level);
|#

(defcfun "use_legacy_coding" :int
  (level :int))
