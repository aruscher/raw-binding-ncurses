(in-package #:binding)

#|
int bkgrnd( const cchar_t *wch);
int wbkgrnd( WINDOW *win, const cchar_t *wch);
void bkgrndset(const cchar_t *wch );
void wbkgrndset(WINDOW *win, const cchar_t *wch);
int getbkgrnd(cchar_t *wch);
int wgetbkgrnd(WINDOW *win, cchar_t *wch);
|#

(defcfun bkgrnd :int
  (wch (:pointer cchar-t)))

(defcfun wbkgrnd :int
  (win (:pointer window))
  (wch (:pointer cchar-t)))

(defcfun bkgrndset :int
  (wch (:pointer cchar-t)))

(defcfun wbkgrndset :int
  (win (:pointer window))
  (wch (:pointer cchar-t)))

(defcfun getbkgrnd :int
  (wch (:pointer cchar-t)))

(defcfun wgetbkgrndt :int
  (win (:pointer window))
  (wch (:pointer cchar-t)))
