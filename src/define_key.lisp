(in-package #:binding)

#|
int define_key(const char *definition, int keycode);
|#

(defcfun "define_key" :int (definition :string) (keycode :int))
