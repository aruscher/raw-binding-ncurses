(in-package #:binding)

#|
const char *unctrl(chtype c);
wchar_t *wunctrl(cchar_t *c);
const char *keyname(int c);
const char *key_name(wchar_t w);
void filter(void);
void nofilter(void);
void use_env(bool f);
void use_tioctl(bool f);
int putwin(WINDOW *win, FILE *filep);
WINDOW *getwin(FILE *filep);
int delay_output(int ms);
int flushinp(void);
|#

(defcfun "unctrl" :string
  (c chtype))

(defcfun "wunctrl" (:pointer wchar-t)
  (c (:pointer (:struct cchar-t))))

(defcfun "keyname" :string
  (c :int))

(defcfun "key_name" :string
  (w wchar-t))

(defcfun "filter" :void)

(defcfun "nofilter" :void)

(defcfun "use_env" :void  
  (f :boolean))

(defcfun "use_tioctl" :void
  (f :boolean))

(defcfun "putwin" :int
  (win (:pointer window))
  (filep file-ptr))

(defcfun "getwin" (:pointer window)
  (filep :pointer)) ;; TODO filepointer

(defcfun "delay_output" :int (ms :int))

(defcfun "flushnip" :int)




