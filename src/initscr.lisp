(in-package #:binding)

#|
WINDOW *initscr(void);
int endwin(void);
bool isendwin(void);
SCREEN *newterm(const char *type, FILE *outfd, FILE *infd);
SCREEN *set_term(SCREEN *new);
void delscreen(SCREEN* sp);
|#

(defcfun "initscr"
    (:pointer window))

(defcfun "endwin" :int)

(defcfun "isendwin" :boolean)

;; TODO: (defcfun "newterm" (:pointer screen) (type :string) (outfd file-ptr) (infd file-ptr))

;; TODO: (defcfun "set_term" (:pointer screen) (new (:pointer screen)))

;; TODO: (defcfun "delscreen" :void (sp (:pointer screen)))
