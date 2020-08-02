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

;;TODO: Docstrings
(defcfun "start_color" :int)
;; ----------

(defcfun "has_colors" :boolean)

(defcfun "can_change_color" :bool)
;; ----------

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
  (color :short)
  (r :short)
  (g :short)
  (b :short))
;; ----------

(defcfun "color_content" :int
  (color :short)
  (r (:pointer :short))
  (g (:pointer :short))
  (b (:pointer :short)))

(defcfun "pair_content" :int
  (pair :short)
  (f (:pointer :short)))

(defcfun "extended_color_content" :int
  (color :int)
  (r (:pointer :int))
  (g (:pointer :int))
  (b (:pointer :int)))

(defcfun "extended_pair_content" :int
  (pair :short)
  (f (:pointer :int))
  (b (:pointer :int)))
;; ----------

(defcfun "reset_color_pairs" :void)
;; ----------

(defcfun "COLOR_PAIR" :int
  (n :int))

;; TODO: PAIR_NUMBER(attrs);
