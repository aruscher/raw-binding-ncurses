(in-package #:binding)

#|
int def_prog_mode(void);
int def_shell_mode(void);
int reset_prog_mode(void);
int reset_shell_mode(void);
int resetty(void);
int savetty(void);
void getsyx(int y, int x);
void setsyx(int y, int x);
int ripoffline(int line, int (*init)(WINDOW *, int));
int curs_set(int visibility);
int napms(int ms);
|#

(defcfun "def_prog_mode" :int)

(defcfun "def_shell_mode" :int)

(defcfun "reset_prog_mode" :int)

(defcfun "reset_shell_mode" :int)

(defcfun "resetty" :int)

(defcfun "savetty" :int)

(defcfun "getsyx" :int
  (y :int)
  (x :int))

(defcfun "setsyx" :int
  (y :int)
  (x :int))

;; TODO int ripoffline(int line, int (*init)(WINDOW *, int));

(defcfun "curs_set" :int
  (visibility :int))

(defcfun "napms" :int
  (ms :int))
