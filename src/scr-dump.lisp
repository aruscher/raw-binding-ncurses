(in-package #:binding)

#|
int scr_dump(const char *filename);
int scr_restore(const char *filename);
int scr_init(const char *filename);
int scr_set(const char *filename);
|#

(defcfun "scr_dump" :int
  (filename :string))

(defcfun "scr_restore" :int
  (filename :string))

(defcfun "scr_init" :int
  (filename :string))

(defcfun "scr_set" :int
  (filename :string))
