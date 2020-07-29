(in-package #:binding)

#|

       int baudrate(void);
       char erasechar(void);
       int erasewchar(wchar_t *ch);
       bool has_ic(void);
       bool has_il(void);
       char killchar(void);
       int killwchar(wchar_t *ch);
       char *longname(void);
       attr_t term_attrs(void);
       chtype termattrs(void);
       char *termname(void);
|#

(defcfun "baudrate" :int)

(defcfun "erasechar" :char)

(defcfun "erasewchar" :int
  (ch :pointer (:struct wchar_t)))

(defcfun "has_ic" :boolean)

(defcfun "has_il" :boolean)

(defcfun "killchar" :char)

(defcfun "killwchar" :int
  (ch :pointer (:struct wchar_t)))

(defcfun "longname" :string)

(defcfun "term_attrs" attr_t)

(defcfun "termatts" chtype)

(defcfun "termname" :string)
