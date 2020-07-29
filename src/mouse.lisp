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
