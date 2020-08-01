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

;; TODO: erasewchar

(defcfun "has_ic" :boolean)

(defcfun "has_il" :boolean)

(defcfun "killchar" :char)

;; TODOO: killwchar

(defcfun "longname" :string)

(defcfun "tedrm_attrs" attr-t)

(defcfun "termattrs" chtype)

(defcfun "termname" :string)
