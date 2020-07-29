(in-package #:binding)

#|
int cbreak(void);
int nocbreak(void);
int echo(void);
int noecho(void);
int halfdelay(int tenths);
int intrflush(WINDOW *win, bool bf);
int keypad(WINDOW *win, bool bf);
int meta(WINDOW *win, bool bf);
int nodelay(WINDOW *win, bool bf);
int raw(void);
int noraw(void);
void noqiflush(void);
void qiflush(void);
int notimeout(WINDOW *win, bool bf);
void timeout(int delay);
void wtimeout(WINDOW *win, int delay);
int typeahead(int fd);
|#

(defcfun "cbreak" :int)

(defcfun "nocbreak" :int)

(defcfun "echo" :int)

(defcfun "noecho" :int)

(defcfun "halfdelay" :int
  (tenths :int))

(defcfun "intrflush" :int
  (win window)
  (bf :boolean))

(defcfun "keypad" :int
  (win window)
  (bf :boolean))

(defcfun "meta" :int
  (win window)
  (bf :boolean))

(defcfun "nodelay" :int
  (win window)
  (bf :boolean))

(defcfun "raw" :int)

(defcfun "noraw" :int)

(defcfun "noqiflush" :void)

(defcfun "qiflush" :void)

(defcfun "notimeout" :int
  (win window)
  (bf :boolean))

(defcfun "timeout" :void
  (delay :int))

(defcfun "wtimeout" :void
  (win window)
  (delay :int))

(defcfun "typeahead" :int
  (fd :int))
