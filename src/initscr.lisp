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
