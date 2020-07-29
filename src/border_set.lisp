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
