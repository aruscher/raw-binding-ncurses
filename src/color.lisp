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
