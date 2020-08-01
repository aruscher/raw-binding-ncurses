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
