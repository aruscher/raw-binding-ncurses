(in-package #:binding)

#|
const char * curses_version(void);
int use_extended_names(bool enable);
|#

(defcfun "curses_version" :string)

(defcfun "use_extended_names" :int
  (enable :boolean))
