(in-package #:binding)

#|
int slk_init(int fmt);

int slk_set(int labnum, const char *label, int fmt);
int slk_wset(int labnum, const wchar_t *label, int fmt);

char *slk_label(int labnum);

int slk_refresh(void);
int slk_noutrefresh(void);
int slk_clear(void);
int slk_restore(void);
int slk_touch(void);

int slk_attron(const chtype attrs);
int slk_attroff(const chtype attrs);
int slk_attrset(const chtype attrs);
int slk_attr_on(attr_t attrs, void* opts);
int slk_attr_off(const attr_t attrs, void * opts);
int slk_attr_set(const attr_t attrs, short pair, void* opts);

attr_t slk_attr(void);

int slk_color(short pair);
/* extension */
int extended_slk_color(int pair);

|#

(defcfun "slk_init" :int
  (fmt :int))

(defcfun "slk_set" :int
  (labnum :int)
  (label :string)
  (fmt :int))
;; TODO: slk_wset

(defcfun "slk_label" :string
  (labnum :int))

(defcfun "slk_refresh" :int)

(defcfun "slk_noutrefresh" :int)

(defcfun "slk_clear" :int)

(defcfun "slk_restore" :int)

(defcfun "slk_touch" :int)

(defcfun "slk_attron" :int
  (attrs chtype))

(defcfun "slk_attroff" :int
  (attrs chtype))

(defcfun "slk_attrset" :int
  (attrs chtype))

(defcfun "slk_attr_on" :int
  (attrs attr-t)
  (opts :pointer))

(defcfun "slk_attr_off" :int
  (attrs attr-t)
  (opts :pointer))

(defcfun "slk_attr_set" :int
  (attrs attr-t)
  (pair :short)
  (opts :pointer))

(defcfun "slk_attr" :int)

(defcfun "slk_color" :int
  (pair :short))

(defcfun "extended_slk_color" :int
  (pair :int))


