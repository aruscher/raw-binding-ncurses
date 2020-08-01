(in-package #:binding)

#|
int clearok(WINDOW *win, bool bf);
int idlok(WINDOW *win, bool bf);
void idcok(WINDOW *win, bool bf);
void immedok(WINDOW *win, bool bf);
int leaveok(WINDOW *win, bool bf);
int setscrreg(int top, int bot);
int wsetscrreg(WINDOW *win, int top, int bot);
int scrollok(WINDOW *win, bool bf);
int nl(void);
int nonl(void);
|#

(defcfun "clearok" :int
  (win (:pointer window))
  (bf :boolean))

(defcfun "idlok" :int
  (win (:pointer window))
  (bf :boolean))

(defcfun "idcok" :void
  (win (:pointer window))
  (bf :boolean))

(defcfun "immedok" :void
  (win (:pointer window))
  (bf :boolean))

(defcfun "leaveok" :int
  (win (:pointer window))
  (bf :boolean))

(defcfun "setscrreg" :int
  (top :int)
  (bot :int))

(defcfun "wsetscrreg" :int
  (win (:pointer window))
  (top :int)
  (bot :int))

(defcfun "scrollok" :int
  (win (:pointer window))
  (bf :boolean))

(defcfun "nl" :int)

(defcfun "nonl" :int)
