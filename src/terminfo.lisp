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
