(in-package #:binding)

#|
int addch(const chtype ch);
int waddch(WINDOW *win, const chtype ch);
int mvaddch(int y, int x, const chtype ch);
int mvwaddch(WINDOW *win, int y, int x, const chtype ch);
int echochar(const chtype ch);
int wechochar(WINDOW *win, const chtype ch);
|#
(defcfun "addch" :int (ch chtype))
(defcfun "waddch" :int (win window) (ch chtype))
(defcfun "mvaddch" :int (y :int) (x :int) (ch chtype))
(defcfun "mvwaddch" :int (win window) (y :int) (x :int) (ch chtype))
(defcfun "echochar" :int (ch chtype))
(defcfun "wechochar" :int (win window) (ch chtype))

(in-package #:binding)

#|
int addchstr(const chtype *chstr);
int addchnstr(const chtype *chstr, int n);
int waddchstr(WINDOW *win, const chtype *chstr);
int waddchnstr(WINDOW *win, const chtype *chstr, int n);
int mvaddchstr(int y, int x, const chtype *chstr);
int mvaddchnstr(int y, int x, const chtype *chstr, int n);
int mvwaddchstr(WINDOW *win, int y, int x, const chtype *chstr);
int mvwaddchnstr(WINDOW *win, int y, int x, const chtype *chstr, int n);
|#

;; TODO
(in-package #:binding)

#|
int addstr(const char *str);
int addnstr(const char *str, int n);
int waddstr(WINDOW *win, const char *str);
int waddnstr(WINDOW *win, const char *str, int n);
int mvaddstr(int y, int x, const char *str);
int mvaddnstr(int y, int x, const char *str, int n);
int mvwaddstr(WINDOW *win, int y, int x, const char *str);
int mvwaddnstr(WINDOW *win, int y, int x, const char *str, int n);
|#

(defcfun "addstr" :int (str :string))
(defcfun "addnstr" :int (str :string) (n :int))
(defcfun "waddstr" :int (win window) (str :string))
(defcfun "waddnstr" :int (win window) (str :string) (n :int))
(defcfun "mvaddstr" :int (y :int) (x :int) (str :string))
(defcfun "mvaddnstr" :int (y :int) (x :int) (str :string) (n :int))
(defcfun "mvwaddstr" :int (win window) (y :int) (x :int) (str :string))
(defcfun "mvwaddnstr" :int (win window) (y :int) (x :int) (str :string) (n :int))
(in-package #:binding)

#|
int add_wch( const cchar_t *wch );
int wadd_wch( WINDOW *win, const cchar_t *wch );
int mvadd_wch( int y, int x, const cchar_t *wch );
int mvwadd_wch( WINDOW *win, int y, int x, const cchar_t *wch );
int echo_wchar( const cchar_t *wch );
int wecho_wchar( WINDOW *win, const cchar_t *wch );
|#

(defcfun "add_wch" :int (wch :pointer (:struct cchar_t)))
(defcfun "wadd_wch" :int (win window) (wch :pointer (:struct cchar_t)))
(defcfun "mvadd_wch" :int (y :int) (x :int) (wch :pointer (:struct cchar_t)))
(defcfun "mvwadd_wch" :int (win window) (y :int) (x :int) (wch :pointer (:struct cchar_t)))
(defcfun "echo_wchar" :int (wch :pointer (:struct cchar_t)))
(defcfun "wecho_wchar" :int (win window) (wch :pointer (:struct cchar_t)))
(in-package #:binding)

#|
int add_wchstr(const cchar_t *wchstr);
int add_wchnstr(const cchar_t *wchstr, int n);
int wadd_wchstr(WINDOW * win, const cchar_t *wchstr);
int wadd_wchnstr(WINDOW * win, const cchar_t *wchstr, int n);
int mvadd_wchstr(int y, int x, const cchar_t *wchstr);
int mvadd_wchnstr(int y, int x, const cchar_t *wchstr, int n);
int mvwadd_wchstr(WINDOW *win, int y, int x, const cchar_t *wchstr);
int mvwadd_wchnstr(WINDOW *win, int y, int x, const cchar_t *wchstr, int n);
|#


;; TODO
(in-package #:binding)

#|
int addwstr(const wchar_t *wstr);
int addnwstr(const wchar_t *wstr, int n);
int waddwstr(WINDOW *win, const wchar_t *wstr);
int waddnwstr(WINDOW *win, const wchar_t *wstr, int n);
int mvaddwstr(int y, int x, const wchar_t *wstr);
int mvaddnwstr(int y, int x, const wchar_t *wstr, int n);
int mvwaddwstr(WINDOW *win, int y, int x, const wchar_t *wstr);
int mvwaddnwstr(WINDOW *win, int y, int x, const wchar_t *wstr, int n);
|#


;; TODO
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

;; TODO


(defcfun "color_set" :int
  (pair :short)
  (opts (:pointer :void)))
(in-package #:binding)

#|
int beep(void);
int flash(void);
|#

(defcfun "beep" :int)
(defcfun "flash" :int)
(in-package #:binding)

#|
void bkgdset(chtype ch);
void wbkgdset(WINDOW *win, chtype ch);
int bkgd(chtype ch);
int wbkgd(WINDOW *win, chtype ch);
chtype getbkgd(WINDOW *win);
|#

(defcfun "bkgdset" :void (ch chtype))
(defcfun "wbkgdset" :void (win window) (ch chtype))
(defcfun "bkgd" :int (ch chtype))
(defcfun "wbkgd" :int (win window) (ch chtype))
(defcfun "getbkgd" chtype (win window))
(in-package #:binding)

#|
int bkgrnd( const cchar_t *wch);
int wbkgrnd( WINDOW *win, const cchar_t *wch);
void bkgrndset(const cchar_t *wch );
void wbkgrndset(WINDOW *win, const cchar_t *wch);
int getbkgrnd(cchar_t *wch);
int wgetbkgrnd(WINDOW *win, cchar_t *wch);
|#

;; TODO
(in-package #:binding)

#|
int border(chtype ls, chtype rs, chtype ts, chtype bs,
chtype tl, chtype tr, chtype bl, chtype br);
int wborder(WINDOW *win, chtype ls, chtype rs,
chtype ts, chtype bs, chtype tl, chtype tr,
chtype bl, chtype br);
int box(WINDOW *win, chtype verch, chtype horch);
int hline(chtype ch, int n);
int whline(WINDOW *win, chtype ch, int n);
int vline(chtype ch, int n);
int wvline(WINDOW *win, chtype ch, int n);
int mvhline(int y, int x, chtype ch, int n);
int mvwhline(WINDOW *, int y, int x, chtype ch, int n);
int mvvline(int y, int x, chtype ch, int n);
int mvwvline(WINDOW *, int y, int x, chtype ch, int n);
|#

(defcfun "border" :int (ls chtype) (rs chtype) (ts chtype) (bs chtype) (tl chtype) (tr chtype) (bl chtype) (br chtype))
(defcfun "wborder" :int (win window) (ls chtype) (rs chtype) (ts chtype) (bs chtype) (tl chtype) (tr chtype) (bl chtype) (br chtype))
(defcfun "box" :int (win window) (verch chtype) (horch chtype))
(defcfun "hline" :int (ch chtype) (n :int))
(defcfun "whline" :int (win window) (ch chtype) (n :int))
(defcfun "vline" :int (ch chtype) (n :int))
(defcfun "wvline" :int (win window) (ch chtype) (n :int))
(defcfun "mvhline" :int (y :int) (x :int) (ch chtype) (n :int))
(defcfun "mvwhline" :int (win window) (y :int) (x :int) (ch chtype) (n :int))
(defcfun "mvvline" :int (y :int) (x :int) (ch chtype) (n :int))
(defcfun "mvwvline" :int (win window) (y :int) (x :int) (ch chtype) (n :int))
(in-package #:binding)

#|
int border_set(const cchar_t *ls, const cchar_t *rs, const cchar_t *ts, const cchar_t *bs, const cchar_t *tl, const cchar_t *tr, const cchar_t *bl, const cchar_t *br );
int wborder_set( WINDOW *win, const cchar_t *ls, const cchar_t *rs, const cchar_t *ts, const cchar_t *bs, const cchar_t *tl, const cchar_t *tr, const cchar_t *bl, const cchar_t *br);
int box_set(WINDOW *win, const cchar_t *verch, const cchar_t *horch);
int hline_set( const cchar_t *wch, int n);
int whline_set( WINDOW *win, const cchar_t *wch, int n);
int mvhline_set( int y, int x, const cchar_t *wch, int n);
int mvwhline_set( WINDOW *win, int y, int x,
const cchar_t *wch, int n); 
int vline_set( const cchar_t *wch, int n);
int wvline_set( WINDOW *win, const cchar_t *wch, int n);
int mvvline_set( int y, int x, const cchar_t *wch, int n);
int mvwvline_set( WINDOW *win, int y, int x, const cchar_t *wch, int n);
|#

; TODO
(in-package #:binding)

#|
int erase(void);
int werase(WINDOW *win);
int clear(void);
int wclear(WINDOW *win);
int clrtobot(void);
int wclrtobot(WINDOW *win);
int clrtoeol(void);
int wclrtoeol(WINDOW *win);
|#

(defcfun "erase" :int)
(defcfun "werase" :int (win window))
(defcfun "clear" :int)
(defcfun "wclear" :int (win window))
(defcfun "clrtobot" :int)
(defcfun "wclrtobot" :int (win window))
(defcfun "clrtoeol" :int)
(defcfun "wclrtoeol" :int (win window))
(in-package #:binding)

#|
int start_color(void);

bool has_colors(void);
bool can_change_color(void);

int init_pair(short pair, short f, short b);
int init_color(short color, short r, short g, short b);
int init_extended_pair(int pair, int f, int b);
int init_extended_color(int color, int r, int g, int b);

int color_content(short color, short *r, short *g, short *b);
int pair_content(short pair, short *f, short *b);
int extended_color_content(int color, int *r, int *g, int *b);
int extended_pair_content(int pair, int *f, int *b);

void reset_color_pairs(void);

int COLOR_PAIR(int n);
PAIR_NUMBER(attrs);
|#

(defcfun "start_color" :int)

(defcfun "has_colors" :boolean)
(defcfun "can_colors" :boolean)

(defcfun "init_pair" :int
  (pair :short)
  (f :short)
  (b :short))

(defcfun "init_color" :int
  (color :short)
  (r :short)
  (g :short)
  (b :short))

(defcfun "init_extended_pair" :int
  (pair :int)
  (f :int)
  (b :int))

(defcfun "init_extended_color" :int
  (color :int)
  (r :int)
  (g :int)
  (b :int))

(defcfun "color_content" :int
  (color :short)
  (r (:pointer :short))
  (g (:pointer :short))
  (b (:pointer :short)))

(defcfun "pair_content" :int
  (pair :short)
  (f (:pointer :short))
  (b (:pointer :short)))

(defcfun "extended_color_content" :int
  (color :int)
  (r (:pointer :int))
  (g (:pointer :int))
  (b (:pointer :int)))

(defcfun "extended_pair_content" :int
  (pair :int)
  (f (:pointer :int))
  (b (:pointer :int)))

(defcfun "reset_color_pairs" :void)

(defcfun "COLOR_PAIR" :int (n :int))
(defcfun "PAIR_NUMBER" :int (attrs :int))

(defconstant +COLOR_BLACK+ 0)
(defconstant +COLOR_RED+ 1)
(defconstant +COLOR_GREEN+ 2)
(defconstant +COLOR_YELLOW+ 3)
(defconstant +COLOR_BLUE+ 4)
(defconstant +COLOR_MAGEN+ 5)
(defconstant +COLOR_CYAN+ 6)
(defconstant +COLOR_WHITE+ 7)
(in-package #:binding)

;; Colors
(defconstant +COLOR_BLACK+ 0)
(defconstant +COLOR_RED+ 1)
(defconstant +COLOR_GREEN+ 2)
(defconstant +COLOR_YELLOW+ 3)
(defconstant +COLOR_BLUE+ 4)
(defconstant +COLOR_MAGEN+ 5)
(defconstant +COLOR_CYAN+ 6)
(defconstant +COLOR_WHITE+ 7)


(defmacro define-curl-options (name type-offsets &rest enum-args)
    "As with CFFI:DEFCENUM, except each of ENUM-ARGS is as follows:
   
      (NAME TYPE NUMBER)
   
  Where the arguments are as they are with the CINIT macro defined
  in curl.h, except NAME is a keyword.
   
  TYPE-OFFSETS is a plist of TYPEs to their integer offsets, as
  defined by the CURLOPTTYPE_LONG et al constants in curl.h."
    (flet ((enumerated-value (type offset)
             (+ (getf type-offsets type) offset)))
      `(progn
         (defcenum ,name
           ,@(loop for (name type number) in enum-args
                collect (list name (enumerated-value type number))))
         ',name)))                ;for REPL users' sanity
   
(define-curl-options curl-option
      (long 0 objectpoint 10000 functionpoint 20000 off-t 30000)
    (:noprogress long 43)
    (:nosignal long 99)
    (:errorbuffer objectpoint 10)
    (:url objectpoint 2))


;; Attributes
(defconstant +NCURSES_ATT_SHIFT+ 8)

#define NCURSES_ATTR_SHIFT       8
#define NCURSES_BITS(mask,shift) (NCURSES_CAST(chtype,(mask)) << ((shift) + NCURSES_ATTR_SHIFT))

#define A_NORMAL	(1U - 1U)
#define A_ATTRIBUTES	NCURSES_BITS(~(1U - 1U),0)
#define A_CHARTEXT	(NCURSES_BITS(1U,0) - 1U)
#define A_COLOR		NCURSES_BITS(((1U) << 8) - 1U,0)
#define A_STANDOUT	NCURSES_BITS(1U,8)
#define A_UNDERLINE	NCURSES_BITS(1U,9)
#define A_REVERSE	NCURSES_BITS(1U,10)
#define A_BLINK		NCURSES_BITS(1U,11)
#define A_DIM		NCURSES_BITS(1U,12)
#define A_BOLD		NCURSES_BITS(1U,13)
#define A_ALTCHARSET	NCURSES_BITS(1U,14)
#define A_INVIS		NCURSES_BITS(1U,15)
#define A_PROTECT	NCURSES_BITS(1U,16)
#define A_HORIZONTAL	NCURSES_BITS(1U,17)
#define A_LEFT		NCURSES_BITS(1U,18)
#define A_LOW		NCURSES_BITS(1U,19)
#define A_RIGHT		NCURSES_BITS(1U,20)
#define A_TOP		NCURSES_BITS(1U,21)
#define A_VERTICAL	NCURSES_BITS(1U,22)

#if 1
#define A_ITALIC	NCURSES_BITS(1U,23)	/* ncurses extension */
#endif


;; X/Open attributes
(defconstant +WA_ATTRIBUTES+ +A_ATTRIBUTES+)
(defconstant +WA_NORMAL+ +A_NORMAL+)
(defconstant +WA_STANDOUT+ +A_STANDOUT+)
(defconstant +WA_UNDERLINE+ +A_UNDERLINE+)
(defconstant +WA_REVERSE+ +A_REVERSE+)
(defconstant +WA_BLINK+	+A_BLINK+)
(defconstant +WA_DIM+ +A_DIM+)
(defconstant +WA_BOLD+ +A_BOLD+)
(defconstant +WA_ALTCHARSET+ +A_ALTCHARSET+)
(defconstant +WA_INVIS+ +A_INVIS+)
(defconstant +WA_PROTECT+ +A_PROTECT+)
(defconstant +WA_HORIZONTAL+ +A_HORIZONTAL+)
(defconstant +WA_LEFT+ +A_LEFT+)
(defconstant +WA_LOW+ +A_LOW+)
(defconstant +WA_RIGHT+	+A_RIGHT+)
(defconstant +WA_TOP+ +A_TOP+)
(defconstant +WA_VERTICAL+ +A_VERTICAL+)

(in-package #:binding)

#|
int use_default_colors(void);
int assume_default_colors(int fg, int bg);
|#

(defcfun "use_default_colors" :int)
(defcfun "assume_default_colors" :int (fg :int) (bg :int))

(defconstant +COLOR_BLACK+ 0)
(defconstant +COLOR_RED+ 1)
(defconstant +COLOR_GREEN+ 2)
(defconstant +COLOR_YELLOW+ 3)
(defconstant +COLOR_BLUE+ 4)
(defconstant +COLOR_MAGEN+ 5)
(defconstant +COLOR_CYAN+ 6)
(defconstant +COLOR_WHITE+ 7)
(in-package #:binding)

#|
int define_key(const char *definition, int keycode);
|#

(defcfun "define_key" :int (definition :string) (keycode :int))
(in-package #:binding)

#|
int delch(void);
int wdelch(WINDOW *win);
int mvdelch(int y, int x);
int mvwdelch(WINDOW *win, int y, int x);
|#

(defcfun "delch" :int)
(defcfun "wdelch" :int (win window))
(defcfun "mvdelch" :int (y :int) (x :int))
(defcfun "mvwdelch" :int (win window) (y :int) (x :int))
(in-package #:binding)

#|
int deleteln(void);
int wdeleteln(WINDOW *win);
int insdelln(int n);
int winsdelln(WINDOW *win, int n);
int insertln(void);
int winsertln(WINDOW *win);
|#

(defcfun "deleteln" :int)

(defcfun "wdeleteln" :int
  (win window))

(defcfun "insdelln" :int
  (n :int))

(defcfun "winsdelln" :int
  (win window)
  (n :int))

(defcfun "insertln" :int)

(defcfun "winsertln" :int (win window))
(in-package #:binding)

#|
const char * curses_version(void);
int use_extended_names(bool enable);
|#

(defcfun "curses_version" :string)

(defcfun "use_extended_names" :int
  (enable :boolean))
(in-package #:binding)

#|

int getcchar(const cchar_t *wcval, wchar_t *wch, attr_t *attrs, short *color_pair, void *opts );

int setcchar(cchar_t *wcval, const wchar_t *wch, const attr_t attrs, short color_pair, const void *opts );
|#

;; TODO
(in-package #:binding)

#|
int getch(void);
int wgetch(WINDOW *win);
int mvgetch(int y, int x);
int mvwgetch(WINDOW *win, int y, int x);
int ungetch(int ch);
int has_key(int ch);
|#

(defcfun "getch" :int)

(defcfun "wgetch" :int
  (win window))

(defcfun "mvgetch" :int
  (y :int)
  (x :int))

(defcfun "mvwgetch" :int
  (win window)
  (y :int)
  (x :int))

(defcfun "ungetch" :int
  (ch :int))

(defcfun "has_key" :int
  (ch :int))
(in-package #:binding)

#|
int getstr(char *str);
int getnstr(char *str, int n);
int wgetstr(WINDOW *win, char *str);
int wgetnstr(WINDOW *win, char *str, int n);
int mvgetstr(int y, int x, char *str);
int mvwgetstr(WINDOW *win, int y, int x, char *str);
int mvgetnstr(int y, int x, char *str, int n);
int mvwgetnstr(WINDOW *, int y, int x, char *str, int n);
|#

(defcfun "getstr" :int
  (str :string))

(defcfun "getnstr" :int
  (str :string)
  (n :int))

(defcfun "wgetstr" :int
  (win window)
  (str :string))

(defcfun "wgetnstr" :int
  (win window)
  (str :string)
  (n :int))

(defcfun "mvgetstr" :int
  (y :int)
  (x :int)
  (str :string))

(defcfun "mvwgetstr" :int
  (win window)
  (y :int)
  (x :int)
  (str :string))

(defcfun "mvgetnstr" :int
  (y :int)
  (x :int)
  (str :string)
  (n :int))

(defcfun "mvwgetnstr" :int
  (win window)
  (y :int)
  (x :int)
  (str :string)
  (n :int))
(in-package #:binding)

#|
int get_wch(wint_t *wch);
int wget_wch(WINDOW *win, wint_t *wch);
int mvget_wch(int y, int x, wint_t *wch);
int mvwget_wch(WINDOW *win, int y, int x, wint_t *wch);
int unget_wch(const wchar_t wch);
|#

;; TODO
(in-package #:binding)

#|
int get_wstr(wint_t *wstr);
int getn_wstr(wint_t *wstr, int n);
int wget_wstr(WINDOW *win, wint_t *wstr);
int wgetn_wstr(WINDOW *win, wint_t *wstr, int n);
int mvget_wstr(int y, int x, wint_t *wstr);
int mvgetn_wstr(int y, int x, wint_t *wstr, int n);
int mvwget_wstr(WINDOW *win, int y, int x, wint_t *wstr);
int mvwgetn_wstr(WINDOW *win, int y, int x, wint_t *wstr, int n);
|#

;; TODO
(in-package #:binding)

#|
void getyx(WINDOW *win, int y, int x);
void getparyx(WINDOW *win, int y, int x);
void getbegyx(WINDOW *win, int y, int x);
void getmaxyx(WINDOW *win, int y, int x);
|#

(defcfun "getyx" :void
  (win window)
  (y :int)
  (x :int))

(defcfun "getparyx" :void
  (win window)
  (y :int)
  (x :int))

(defcfun "getbegyx" :void
  (win window)
  (y :int)
  (x :int))

(defcfun "getmaxyx" :void
  (win window)
  (y :int)
  (x :int))
(in-package #:binding)

(include "ncurses.h")

(ctype chtype "chtype")
(ctype mmask_t "mmask_t")
(ctype wchar_t "wchar_t")
(ctype bool "bool") 
(ctype chtype "chtype")
(ctype attr_t "attr_t")


(constant (+NCURSES_VERSION_MAJOR+ "NCURSES_VERSION_MAJOR"))
(constant (+NCURSES_VERSION_MINOR+ "NCURSES_VERSION_MINOR"))
(constant (+NCURSES_VERSION_VERSION_PATCH+ "NCURSES_VERSION_PATCH"))
(in-package #:binding)

#|
chtype inch(void);
chtype winch(WINDOW *win);
chtype mvinch(int y, int x);
chtype mvwinch(WINDOW *win, int y, int x);
|#

(defcfun "inch" chtype)

(defcfun "winch" chtype
  (win window))

(defcfun "mvinch" chtype
  (y :int)
  (x :int))

(defcfun "mvwinch" chtype
  (win window)
  (y :int)
  (x :int))

(in-package #:binding)

#|
int inchstr(chtype *chstr);
int inchnstr(chtype *chstr, int n);
int winchstr(WINDOW *win, chtype *chstr);
int winchnstr(WINDOW *win, chtype *chstr, int n);
int mvinchstr(int y, int x, chtype *chstr);
int mvinchnstr(int y, int x, chtype *chstr, int n);
int mvwinchstr(WINDOW *win, int y, int x, chtype *chstr);
int mvwinchnstr(WINDOW *win, int y, int x, chtype *chstr, int n);
|#

;; TODO
(in-package #:binding)

#|
WINDOW *initscr(void);
int endwin(void);
bool isendwin(void);
SCREEN *newterm(const char *type, FILE *outfd, FILE *infd);
SCREEN *set_term(SCREEN *new);
void delscreen(SCREEN* sp);
|#

(defcfun "initscr" window)

(defcfun "endwin" :int)

(defcfun "isendwin" :bool)

(defcfun "newterm" screen
  (type :string)
  (outfd file)
  (infd file))

(defcfun "set_term" screen
  (new screen))

(defcfun "delscreen" :void
  (sp screen))
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
(in-package #:binding)

#|
int insch(chtype ch);
int winsch(WINDOW *win, chtype ch);
int mvinsch(int y, int x, chtype ch);
int mvwinsch(WINDOW *win, int y, int x, chtype ch);
|#

(defcfun "insch" :int
  (ch chtype))

(defcfun "winsch" :int
  (win window)
  (ch chtype))

(defcfun "mvinsch" :int
  (y :int)
  (x :int)
  (ch chtype))

(defcfun "mvwinsch" :int
  (win window)
  (y :int)
  (x :int)
  (ch chtype))
(in-package #:binding)

#|
int insstr(const char *str);
int insnstr(const char *str, int n);
int winsstr(WINDOW *win, const char *str);
int winsnstr(WINDOW *win, const char *str, int n);
int mvinsstr(int y, int x, const char *str);
int mvinsnstr(int y, int x, const char *str, int n);
int mvwinsstr(WINDOW *win, int y, int x, const char *str);
int mvwinsnstr(WINDOW *win, int y, int x, const char *str, int n);
|#


(defcfun "insstr" :int
  (str :string))

(defcfun "insnstr" :int
  (str :string)
  (n :int))

(defcfun "winsstr" :int
  (win window)
  (str :string))

(defcfun "winsnstr" :int
  (win window)
  (str :string)
  (n :int))

(defcfun "mvinsstr" :int
  (y :int)
  (x :int)
  (str :string))

(defcfun "mvinsnstr" :int
  (y :int)
  (x :int)
  (str :string)
  (n :int))

(defcfun "mvwinsstr" :int
  (win window)
  (y :int)
  (x :int)
  (str :string))

(defcfun "mvwinsnstr" :int
  (win window)
  (y :int)
  (x :int)
  (str :string)
  (n :int))
(in-package #:binding)

#|
int instr(char *str);
int innstr(char *str, int n);
int winstr(WINDOW *win, char *str);
int winnstr(WINDOW *win, char *str, int n);
int mvinstr(int y, int x, char *str);
int mvinnstr(int y, int x, char *str, int n);
int mvwinstr(WINDOW *win, int y, int x, char *str);
int mvwinnstr(WINDOW *win, int y, int x, char *str, int n);
|#

(defcfun "instr" :int
  (str :string))

(defcfun "innstr" :int
  (str :string)
  (n :int))

(defcfun "winstr" :int
  (win window)
  (str :string))

(defcfun "winnstr" :int
  (win window)
  (str :string)
  (n :int))

(defcfun "mvinstr" :int
  (y :int)
  (x :int)
  (str :string))

(defcfun "mvinnstr" :int
  (y :int)
  (x :int)
  (str :string)
  (n :int))

(defcfun "mvwinstr" :int
  (win window)
  (y :int)
  (x :int)
  (str :string))

(defcfun "mvwinnstr" :int
  (win window)
  (y :int)
  (x :int)
  (str :string)
  (n :int))
(in-package #:binding)

#|
int ins_wch(const cchar_t *wch);
int wins_wch(WINDOW *win, const cchar_t *wch);
int mvins_wch(int y, int x, const cchar_t *wch);
int mvwins_wch(WINDOW *win, int y, int x, const cchar_t *wch);
|#

;; TODO
(in-package #:binding)

#|

|#
(in-package #:binding)

#|
int in_wch(cchar_t *wcval);
int mvin_wch(int y, int x, cchar_t *wcval);
int mvwin_wch(WINDOW *win, int y, int x, cchar_t *wcval);
int win_wch(WINDOW *win, cchar_t *wcval);
|#

(defcfun "in_wch" :int
  (wcval :pointer (:struct cchar_t)))

(defcfun "mvin_wch" :int
  (y :int)
  (x :int)
  (wcval :pointer (:struct cchar_t)))

(defcfun "mvwin_wch" :int
  (win window)
  (y :int)
  (x :int)
  (wcval :pointer (:struct cchar_t)))

(defcfun "win_wch" :int
  (win window)
  (wcval :pointer (:struct cchar_t)))
(in-package #:binding)

#|
int ins_wstr(const wchar_t *wstr);
int ins_nwstr(const wchar_t *wstr, int n);
int wins_wstr(WINDOW *win, const wchar_t *wstr);
int wins_nwstr(WINDOW *win, const wchar_t *wstr, int n);
int mvins_wstr(int y, int x, const wchar_t *wstr);
int mvins_nwstr(int y, int x, const wchar_t *wstr, int n);
int mvwins_wstr(WINDOW *win, int y, int x, const wchar_t *wstr);
int mvwins_nwstr(WINDOW *win, int y, int x, const wchar_t *wstr, int n);
|#

;; TODO
(in-package #:binding)

#|
int inwstr(wchar_t *wstr);
int innwstr(wchar_t *wstr, int n);
int winwstr(WINDOW *win, wchar_t *wstr);
int winnwstr(WINDOW *win, wchar_t *wstr, int n);
int mvinwstr(int y, int x, wchar_t *wstr);
int mvinnwstr(int y, int x, wchar_t *wstr, int n);
int mvwinwstr(WINDOW *win, int y, int x, wchar_t *wstr);
int mvwinnwstr(WINDOW *win, int y, int x, wchar_t *wstr, int n);
|#

;; TODo
(in-package #:binding)

#|
int def_prog_mode(void);
int def_shell_mode(void);
int reset_prog_mode(void);
int reset_shell_mode(void);
int resetty(void);
int savetty(void);
void getsyx(int y, int x);
void setsyx(int y, int x);
int ripoffline(int line, int (*init)(WINDOW *, int));
int curs_set(int visibility);
int napms(int ms);
|#

(defcfun "def_prog_mode" :int)

(defcfun "def_shell_mode" :int)

(defcfun "reset_prog_mode" :int)

(defcfun "reset_shell_mode" :int)

(defcfun "resetty" :int)

(defcfun "savetty" :int)

(defcfun "getsyx" :int
  (y :int)
  (x :int))

(defcfun "setsyx" :int
  (y :int)
  (x :int))

;; TODO int ripoffline(int line, int (*init)(WINDOW *, int));

(defcfun "curs_set" :int
  (visibility :int))

(defcfun "napms" :int
  (ms :int))
(in-package #:binding)

#|
char * keybound(int keycode, int count);
|#

(defcfun "keybound" :string
  (keycode :int)
  (count :int))
(in-package #:binding)

#|
int key_defined(const char *definition);
|#

(defcfun "key_defined" :int
  (definition :string))
(in-package #:binding)

#|
int keyok(int keycode, bool enable);
|#

(defcfun "keyok" :int
  (keycode :int)
  (enable :bool))
(in-package #:binding)

#|
int use_legacy_coding(int level);
|#

(defcfun "use_legacy_coding" :int
  (level :int))
(in-package #:binding)

#|
int getattrs(const WINDOW *win);
int getbegx(const WINDOW *win);
int getbegy(const WINDOW *win);
int getcurx(const WINDOW *win);
int getcury(const WINDOW *win);
int getmaxx(const WINDOW *win);
int getmaxy(const WINDOW *win);
int getparx(const WINDOW *win);
int getpary(const WINDOW *win);
|#

(defcfun "getattrs" :int
  (win window))

(defcfun "getbegx" :int
  (win window))

(defcfun "getbegy" :int
  (win window))

(defcfun "getcurx" :int
  (win window))

(defcfun "getcury" :int
  (win window))

(defcfun "getmaxx" :int
  (win window))

(defcfun "getmaxy" :int
  (win window))

(defcfun "getparx" :int
  (win window))

(defcfun "getpary" :int
  (win window))
(in-package #:binding)

#+(or unicode sb-unicode)
(define-foreign-library libncurses
  (:unix (:or "libncursesw.so.6.2"
              "libncursesw.so.6"
              "libncursesw.so"))
  (:t (:default "libncursesw")))

#-(or unicode sb-unicode)
(define-foreign-library libncurses
  (:unix (:or "libncurses.so.6.2"
              "libncurses.so.6"
              "libncurses.so"))
  (:t (:default "libncurses")))

(cffi:use-foreign-library libncurses)
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
bool wmouse_trafo(const WINDOW* win, int* pY, int* pX,
bool to_screen);
int mouseinterval(int erval);
|#

;; TODO
(in-package #:binding)

#|
int move(int y, int x);
int wmove(WINDOW *win, int y, int x);
|#

(defcfun "move" :int
  (y :int)
  (x :int))

(defcfun "wmove" :int
  (win window)
  (y :int)
  (x :int))
(in-package #:binding)

#|
int alloc_pair(int fg, int bg);
int find_pair(int fg, int bg);
int free_pair(int pair);
|#


(defcfun "alloc_pair" :int
  (fg :int)
  (bg :int))

(defcfun "find_pair" :int
  (fg :int)
  (bg :int))

(defcfun "free_pair" :int
  (pair :int))
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
  (win window))

(defcfun "is_idcok" :boolean
  (win window))

(defcfun "is_idlok" :boolean
  (win window))

(defcfun "is_immedok" :boolean
  (win window))

(defcfun "is_keypad" :boolean
  (win window))

(defcfun "is_leaveok" :boolean
  (win window))

(defcfun "is_nodelay" :boolean
  (win window))

(defcfun "is_notimeout" :boolean
  (win window))

(defcfun "is_pad" :boolean
  (win window))

(defcfun "is_scrollok" :boolean
  (win window))

(defcfun "is_subwin" :boolean
  (win window))

(defcfun "is_syncok" :boolean
  (win window))

(defcfun "wgetparent" window
  (win window))

(defcfun "wgetdelay" :int
  (win window))

(defcfun "wgetscrreg" :int
  (win window)
  (top :pointer :int)
  (bottom :pointer :int))

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
  (win window)
  (bf :boolean))

(defcfun "idlok" :int
  (win window)
  (bf :boolean))

(defcfun "idcok" :void
  (win window)
  (bf :boolean))

(defcfun "immedok" :void
  (win window)
  (bf :boolean))

(defcfun "leaveok" :int
  (win window)
  (bf :boolean))

(defcfun "setscrreg" :int
  (top :int)
  (bot :int))

(defcfun "wsetscrreg" :int
  (win window)
  (top :int)
  (bot :int))

(defcfun "scrollok" :int
  (win window)
  (bf :boolean))

(defcfun "nl" :int)

(defcfun "nonl" :int)
(in-package #:binding)

#|
int overlay(const WINDOW *srcwin, WINDOW *dstwin);
int overwrite(const WINDOW *srcwin, WINDOW *dstwin);
int copywin(const WINDOW *srcwin, WINDOW *dstwin, int sminrow,
int smincol, int dminrow, int dmincol, int dmaxrow,
int dmaxcol, int overlay);
|#

(defcfun "overlay" :int
  (srcwin window)
  (dstwin window))

(defcfun "overwrite" :int
  (srcwin window)
  (dstwin window))

(defcfun "copywin" :int
  (srcwin window)
  (dstwin window)
  (sminrow :int)
  (smincol :int)
  (dminrow :int)
  (dmincol :int)
  (dmaxrow :int)
  (dmaxcol :int)
  (overlay :int))
;;;; package.lisp
(defpackage #:raw-ncurses-binding
  (:nicknames #:binding)
  (:use #:cl #:cffi))
(in-package #:binding)

#|
WINDOW *newpad(int nlines, int ncols);
WINDOW *subpad(WINDOW *orig, int nlines, int ncols, int begin_y, int begin_x);
int prefresh(WINDOW *pad, int pminrow, int pmincol, int sminrow, int smincol, int smaxrow, int smaxcol);
int pnoutrefresh(WINDOW *pad, int pminrow, int pmincol, int sminrow, int smincol, int smaxrow, int smaxcol);
int pechochar(WINDOW *pad, chtype ch);
int pecho_wchar(WINDOW *pad, const cchar_t *wch);
|#

(defcfun "newpad" window
  (nlines :int)
  (nclos :int))

(defcfun "subpad" window
  (orig window)
  (nlines :int)
  (ncols :int)
  (begin_y :int)
  (begin_x :int))

(defcfun "prefresh" :int
  (pad window)
  (pminrow :int)
  (pmincol :int)
  (sminrow :int)
  (smincol :int)
  (smaxrow :int)
  (smaxcol :int))

(defcfun "pnoutrefresh" :int
  (pad window)
  (pminrow :int)
  (pmincol :int)
  (sminrow :int)
  (smincol :int)
  (smaxrow :int)
  (smaxcol :int))

(defcfun "pechochar" :int
  (pad window)
  (ch chtype))

(defcfun "pecho_wchar" :int
  (pad window)
  (ch :pointer (:struct cchar_t)))
(in-package #:binding)

#|
int mcprint(char *data, int len);
|#

;; TODO
(in-package #:binding)

#|
int printw(const char *fmt, ...);
int wprintw(WINDOW *win, const char *fmt, ...);
int mvprintw(int y, int x, const char *fmt, ...);
int mvwprintw(WINDOW *win, int y, int x, const char *fmt, ...);
int vw_printw(WINDOW *win, const char *fmt, va_list varglist);
|#

;; TODO
(in-package #:binding)

#|
int refresh(void);
int wrefresh(WINDOW *win);
int wnoutrefresh(WINDOW *win);
int doupdate(void);
int redrawwin(WINDOW *win);
int wredrawln(WINDOW *win, int beg_line, int num_lines);
|#

(defcfun "refresh" :int)

(defcfun "wrefresh" :int
  (win window))

(defcfun "wnoutrefresh" :int
  (win window))

(defcfun "doupdate" :int)

(defcfun "redrawwin" :int
  (win window))

(defcfun "wredrawln" :int
  (win window)
  (beg_line :int)
  (num_lines :int))
(in-package #:binding)

#|
bool is_term_resized(int lines, int columns);
int resize_term(int lines, int columns);
int resizeterm(int lines, int columns);
|#

(defcfun "is_term_resized" :boolean
  (lines :int)
  (columns :int))

(defcfun "resize_term" :int
  (lines :int)
  (columns :int))

(defcfun "resizeterm" :int
  (lines :int)
  (columns :int))
(in-package #:binding)

#|
int scanw(const char *fmt, ...);
int wscanw(WINDOW *win, const char *fmt, ...);
int mvscanw(int y, int x, const char *fmt, ...);
int mvwscanw(WINDOW *win, int y, int x, const char *fmt, ...);
int vw_scanw(WINDOW *win, const char *fmt, va_list varglist);
|#

;; TODO
(in-package #:binding)

#|
int scr_dump(const char *filename);
int scr_restore(const char *filename);
int scr_init(const char *filename);
int scr_set(const char *filename);
|#

(defcfun "scr_dump" :int
  (filename :string))

(defcfun "scr_restore" :int
  (filename :string))

(defcfun "scr_init" :int
  (filename :string))

(defcfun "scr_set" :int
  (filename :string))
(in-package #:binding)

#|
int scroll(WINDOW *win);
int scrl(int n);
int wscrl(WINDOW *win, int n);
|#

(defcfun "scroll" :int
  (win window))

(defcfun "scrl" :int
  (n :int))

(defcfun wscrl :int
  (win window)
  (n :int))
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

;; TODO
(in-package #:binding)

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
(in-package #:binding)

#|
extern char PC;
extern char * UP;
extern char * BC;
extern short ospeed;

int tgetent(char *bp, const char *name);
int tgetflag(const char *id);
int tgetnum(const char *id);
char *tgetstr(const char *id, char **area);
char *tgoto(const char *cap, int col, int row);
int tputs(const char *str, int affcnt, int (*putc)(int));
|#

;; TODO
(in-package #:binding)

#|
TERMINAL *cur_term;

const char * const boolnames[];
const char * const boolcodes[];
const char * const boolfnames[];
const char * const numnames[];
const char * const numcodes[];
const char * const numfnames[];
const char * const strnames[];
const char * const strcodes[];
const char * const strfnames[];

int setupterm(const char *term, int filedes, int *errret);
int setterm(const char *term);
TERMINAL *set_curterm(TERMINAL *nterm);
int del_curterm(TERMINAL *oterm);
int restartterm(const char *term, int filedes, int *errret);

char *tparm(const char *str, ...);
int tputs(const char *str, int affcnt, int (*putc)(int));
int putp(const char *str);

int vidputs(chtype attrs, int (*putc)(int));
int vidattr(chtype attrs);
int vid_puts(attr_t attrs, short pair, void *opts, int (*putc)(int));
int vid_attr(attr_t attrs, short pair, void *opts);

int mvcur(int oldrow, int oldcol, int newrow, int newcol);

int tigetflag(const char *capname);
int tigetnum(const char *capname);
char *tigetstr(const char *capname);

char *tiparm(const char *str, ...);
|#

;; TODO
(in-package #:binding)

#|
int touchwin(WINDOW *win);
int touchline(WINDOW *win, int start, int count);
int untouchwin(WINDOW *win);
int wtouchln(WINDOW *win, int y, int n, int changed);
bool is_linetouched(WINDOW *win, int line);
bool is_wintouched(WINDOW *win);
|#

(defcfun "touchwin" :int
  (win window))

(defcfun "touchline" :int
  (win window)
  (start :int)
  (count :int))

(defcfun "untouchwin" :int
  (win window))

(defcfun "wtouchln" :int
  (win window)
  (y :int)
  (n :int)
  (changed :int))

(defcfun "is_linetouched" :boolean
  (win window)
  (line :int))

(defcfun "is_wintouched" :boolean
  (win window))
(in-package #:binding)

#|
unsigned curses_trace(const unsigned param);

void _tracef(const char *format, ...);

char *_traceattr(attr_t attr);
char *_traceattr2(int buffer, chtype ch);
char *_tracecchar_t(const cchar_t *string);
char *_tracecchar_t2(int buffer, const cchar_t *string);
char *_tracechar(int ch);
char *_tracechtype(chtype ch);
char *_tracechtype2(int buffer, chtype ch);

void _tracedump(const char *label, WINDOW *win);
char *_nc_tracebits(void);
char *_tracemouse(const MEVENT *event);

/* deprecated */
void trace(const unsigned int param);
|#

;; TODO
(in-package #:binding)

(defctype window :pointer)
(defctype screen :pointer)
(defctype file :pointer)

(defcstruct cchar_t
  (cchar_t-attr attr_t)
  (cchar_t-chars wchar_t :count 5)
  (cchar_t-ext_color :int))
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

(defcfun "wunctrl" wchar_t
  (c :pointer (:struct cchar_t)))

(defcfun "keyname" :string
  (c :int))

(defcfun "key_name" :string
  (c wchar_t))

(defcfun "filter" :void)

(defcfun "nofilter" :void)

(defcfun "use_env" :void
  (f :boolean))

(defcfun "use_tioctl" :void
  (f :boolean))

;TODO
;; (defcfun "putwin" :int
;;   (win windo)
;;   (filep file))

;; (defcfun "getwin" window
;;   (filep :pointer (struct file)))

(defcfun "delay_output" :int
  (ms :int))

(defcfun "flushnip" :int)

(in-package #:binding)

#|
WINDOW *newwin(int nlines, int ncols,int begin_y, int begin_x); 
int delwin(WINDOW *win);
int mvwin(WINDOW *win, int y, int x);
WINDOW *subwin(WINDOW *orig, int nlines, int ncols, int begin_y, int begin_x);
-- WINDOW *derwin(WINDOW *orig, int nlines, int ncols, int begin_y, int begin_x);
-- int mvderwin(WINDOW *win, int par_y, int par_x);
WINDOW *dupwin(WINDOW *win);
-- void wsyncup(WINDOW *win);
int syncok(WINDOW *win, bool bf);
--void wcursyncup(WINDOW *win);
--void wsyncdown(WINDOW *win);

The subwindow functions (subwin, derwin, mvderwin, wsyncup,  wsyncdown, wcursyncup,  syncok)  are flaky, incompletely implemented, and not well tested.
|#

(defcfun "newwin" window
  (nlines :int)
  (ncols :int)
  (begin_y :int)
  (begin_x :int))

(defcfun "delwin" window
  (win window))

(defcfun "mvwin" window
  (win window)
  (y :int)
  (x :int))


(defcfun "subwin" window
  (orig window)
  (nlines :int)
  (ncols :int)
  (begin_y :int)
  (begin_x :int))

(defcfun "dupwin" window
  (win window))

(defcfun "syncok" :int
  (win window)
  (bf :boolean))
(in-package #:binding)

#|
int wresize(WINDOW *win, int lines, int columns);
|#

(defcfun "wresize" :int
  (win window)
  (lines :int)
  (columns :int))
