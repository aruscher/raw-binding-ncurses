(in-package #:binding)

#|

typedef unsigned long mmask_t;

typedef struct {
short id;         /* ID to distinguish multiple devices */
int x, y, z;      /* event coordinates */
mmask_t bstate;   /* button state bits */
} MEVENT;

bool has_mouse(void);
int getmouse(MEVENT *event);
int ungetmouse(MEVENT *event);
mmask_t mousemask(mmask_t newmask, mmask_t *oldmask);
bool wenclose(const WINDOW *win, int y, int x);
bool mouse_trafo(int* pY, int* pX, bool to_screen);
bool wmouse_trafo(const WINDOW* win, int* pY, int* pX, bool to_screen);
int mouseinterval(int erval);
|#

(defcfun "has_mouse" :boolean)

(defcfun "getmouse" :int
  (event (:pointer (:struct mevent))))

(defcfun "ungetmouse" :int
  (event (:pointer (:struct mevent))) )


(defcfun "mousemask" mmask-t
  (newmask mmask-t)
  (oldmask (:pointer mmask-t)))

(defcfun "wenclose" :boolean
  (win (:pointer window))
  (y :int)
  (x :int))

(defcfun "mouse_trafo" :boolean
  (pY (:pointer :int))
  (pX (:pointer :int))
  (to_screen :boolean))

(defcfun "wmouse_trafo" :boolean
  (win (:pointer window))
  (pY (:pointer :int))
  (pX (:pointer :int))
  (to_screen :boolean))

(defcfun "mouseinterval" :int
  (erval :int))
