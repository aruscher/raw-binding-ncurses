(in-package #:binding)

#|
bool is_cleared(const WINDOW *win);
bool is_idcok(const WINDOW *win);
bool is_idlok(const WINDOW *win);
bool is_immedok(const WINDOW *win);
bool is_keypad(const WINDOW *win);
bool is_leaveok(const WINDOW *win);
bool is_nodelay(const WINDOW *win);
bool is_notimeout(const WINDOW *win);
bool is_pad(const WINDOW *win);
bool is_scrollok(const WINDOW *win);
bool is_subwin(const WINDOW *win);
bool is_syncok(const WINDOW *win);
WINDOW * wgetparent(const WINDOW *win);
int wgetdelay(const WINDOW *win);
int wgetscrreg(const WINDOW *win, int *top, int *bottom);
|#

(defcfun "is_cleared" :boolean
  (win (:pointer window)))

(defcfun "is_idcok" :boolean
  (win (:pointer window)))

(defcfun "is_idlok" :boolean
  (win (:pointer window)))

(defcfun "is_immedok" :boolean
  (win (:pointer window)))

(defcfun "is_keypad" :boolean
  (win (:pointer window)))

(defcfun "is_leaveok" :boolean
  (win (:pointer window)))

(defcfun "is_nodelay" :boolean
  (win (:pointer window)))

(defcfun "is_notimeout" :boolean
  (win (:pointer window)))

(defcfun "is_pad" :boolean
  (win (:pointer window)))

(defcfun "is_scollok" :boolean
  (win (:pointer window)))

(defcfun "is_subwin" :boolean
  (win (:pointer window)))

(defcfun "is_syncok" :boolean
  (win (:pointer window)))

(defcfun "wgetparent" (:pointer window)
  (win (:pointer window)))

(defcfun "wgetdelay" :int
  (win (:pointer window)))

(defcfun "wgetscrreg" :int
  (win (:pointer window))
  (top (:pointer :int))
  (bottom (:pointer :int)))
