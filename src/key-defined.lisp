(in-package #:binding)

#|
int key_defined(const char *definition);
|#

(defcfun "key_defined" :int
  (definition :string))
