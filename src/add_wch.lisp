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
