(in-package #:binding)

(defctype ncurses-size-t :short)
(defctype attr-t chtype)

;; ------------------------------
;; CCHAR-T
(defcstruct cchar-t
  (attr attr-t)
  (chars wchar-t :count 5)
  (ext-color :int))

;; ------------------------------
;; Window
(defcstruct pdat
  (pad-y ncurses-size-t)
  (pad-x ncurses-size-t)
  (pad-top ncurses-size-t)
  (pad-left ncurses-size-t)
  (pad-bottom ncurses-size-t)
  (pad-right ncurses-size-t))

;; TODO: struct ldat *_line;	/* the actual line data */
(defcstruct win-st
  (cury ncurses-size-t)
  (curx ncurses-size-t)
  (flags :short)
  (attrs attr-t)
  (bkgd chtype)
  (notimeout :boolean)
  (clear :boolean)
  (leaveok :boolean)
  (scroll :boolean)
  (idlok :boolean)
  (idcok :boolean)
  (sync :boolean)
  (use-keypad :boolean)
  (delay :int)
  (line :pointer) 
  (regtop ncurses-size-t)
  (regbottom ncurses-size-t)
  (parx :int)
  (pary :int)
  (parent (:pointer (:struct win-st)))
  (pad (:struct pdat))
  (yoffset ncurses-size-t)
  (bkgrnd (:struct cchar-t ))
  (color :int))

(defctype window (:struct win-st))

;; ------------------------------
;; Mouse
(defcstruct mevent
  (id :short)
  (x :int)
  (y :int)
  (z :int)
  (bstate mmask-t))


(defctype file-ptr :pointer)
