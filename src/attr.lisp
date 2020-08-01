(in-package #:binding)

#|
int attr_get(attr_t *attrs, short *pair, void *opts);
int wattr_get(WINDOW *win, attr_t *attrs, short *pair, void *opts);
int attr_set(attr_t attrs, short pair, void *opts);
int wattr_set(WINDOW *win, attr_t attrs, short pair, void *opts);

int attr_off(attr_t attrs, void *opts);
int wattr_off(WINDOW *win, attr_t attrs, void *opts);
int attr_on(attr_t attrs, void *opts);
int wattr_on(WINDOW *win, attr_t attrs, void *opts);

int attroff(int attrs);
int wattroff(WINDOW *win, int attrs);
int attron(int attrs);
int wattron(WINDOW *win, int attrs);
int attrset(int attrs);
int wattrset(WINDOW *win, int attrs);

int chgat(int n, attr_t attr, short pair, const void *opts);
int wchgat(WINDOW *win,
int n, attr_t attr, short pair, const void *opts);
int mvchgat(int y, int x,
int n, attr_t attr, short pair, const void *opts);
int mvwchgat(WINDOW *win, int y, int x,
int n, attr_t attr, short pair, const void *opts);

int color_set(short pair, void* opts);
int wcolor_set(WINDOW *win, short pair, void* opts);

int standend(void);
int wstandend(WINDOW *win);
int standout(void);
int wstandout(WINDOW *win);
|#

(defcfun "attr_get" :int
  (attrs (:pointer attr-t))
  (pair (:pointer short))
  (opts :pointer))

(defcfun "wattr_get" :int
  (win (:pointer window))
  (attrs (:pointer attr-t))
  (pair (:pointer :short))
  (opts :pointer))

(defcfun "attr_set" :int
  (attrs attr-t)
  (pair :short)
  (opts :pointer))

(defcfun "wattr_set" :int
  (win (:pointer window))
  (attrs attr-t)
  (pair :short)
  (opts :pointer))

;; --------------------
(defcfun "attr_off" :int
  (attrs attr-t)
  (opts :pointer))

(defcfun "wattr_off" :int
  (win (:pointer window))
  (attrs attr-t)
  (opts :pointer))

(defcfun "attr_on" :int
  (attrs attr-t)
  (opts :pointer))

(defcfun "wattr_on" :int
  (win (:pointer window))
  (attrs attr-t)
  (opts :pointer))
;; --------------------

(defcfun "attroff" :int
  (attrs :int))

(defcfun "wattroff" :int
  (win (:pointer window))
  (attrs :int))

(defcfun "attron" :int
  (attrs :int))

(defcfun "wattron" :int
  (win (:pointer window))
  (attrs :int))

(defcfun "attrset" :int
  (attrs :int))

(defcfun "wattrset" :int
  (win (:pointer window))
  (attrs :int))
;; --------------------

(defcfun "chgat" :int
  (n :int)
  (attr attr-t)
  (pair :short)
  (opts :pointer))

(defcfun "wchgat" :int
  (win (:pointer window))
  (n :int)
  (attr attr-t)
  (pair :short)
  (opts :pointer))

(defcfun "mvchgat" :int
  (y :int)
  (x :int)
  (n :int)
  (attr attr-t)
  (pair :short)
  (opts :pointer))

(defcfun "mvwchgat" :int
  (win (:pointer window))
  (y :int)
  (x :int)
  (n :int)
  (attr attr-t)
  (pair :short)
  (opts :pointer))
;; --------------------

(defcfun "color_set" :int
  (pair :short)
  (opts :pointer))

(defcfun "wcolor_set" :int
  (win (:pointer window))
  (pair :short)
  (opts :pointer))

;; --------------------
(defcfun "standend" :int)

(defcfun "wstandend" :int
  (win (:pointer window)))

(defcfun "standout" :int)
(defcfun "wstandout" :int
  (win (:pointer window)))

