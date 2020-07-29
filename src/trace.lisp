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
