(in-package #:binding)





(defcfun "baudrate" :int)







(defcfun "cbreak" :int)

(defcfun "clear" :int)
(defcfun "clearok" :int (win (:pointer window)) (bf :boolean))
(defcfun "clrtobot" :int)
(defcfun "clrtoeol" :int)



(defcfun "copywin" :int (srcwin (:pointer window)) (dstwin (:pointer window)) (sminrow :int) (smincol :int) (dminrow :int) (dmincol :int) (dmaxrow :int) (dmaxcol :int) (overlay :int))
(defcfun "curs_set" :int (visibility :int))
(defcfun "def_prog_mode" :int)
(defcfun "def_shell_mode" :int)
(defcfun "delay_output" :int (ms :int))
(defcfun "delch" :int)
;;(defcfun "delscreen" :void (sp (:pointer screen)))
(defcfun "delwin" (:pointer window) (win (:pointer window)))
(defcfun "deleteln" :int)
(defcfun "derwin" (:pointer window) (orig (:pointer window)) (nlines :int) (ncols :int) (begin_y :int) (begin_x :int))
(defcfun "doupdate" :int)
(defcfun "dupwin" (:pointer window) (win (:pointer window)))
(defcfun "echo" :int)

(defcfun "erase" :int)
(defcfun "endwin" :int)
(defcfun "erasechar" :char)
(defcfun "filter" :void)

(defcfun "flushnip" :int)

(defcfun "getch" :int)
(defcfun "getnstr" :int (str :string) (n :int))
(defcfun "getstr" :int (str :string))
(defcfun "getwin" (:pointer window) (filep file-ptr))
(defcfun "halfdelay" :int (tenths :int))

(defcfun "has_ic" :boolean)
(defcfun "has_il" :boolean)

(defcfun "idcok" :void (win (:pointer window)) (bf :boolean))
(defcfun "idlok" :int (win (:pointer window)) (bf :boolean))
(defcfun "immedok" :void (win (:pointer window)) (bf :boolean))
(defcfun "inch" chtype)
(defcfun "inchnstr" :int (inchstr (:pointer chtype)) (n :int))
(defcfun "inchstr" :int (inchstr (:pointer chtype)))
(defcfun "initscr" (:pointer window))


(defcfun "innstr" :int (str :string) (n :int))
(defcfun "insch" :int (ch chtype))
(defcfun "insdelln" :int (n :int))
(defcfun "insertln" :int)
(defcfun "insnstr" :int (str :string) (n :int))
(defcfun "insstr" :int (str :string))
(defcfun "instr" :int (str :string))
(defcfun "intrflush" :int (win (:pointer window)) (bf :boolean))
(defcfun "isendwin" :bool)
(defcfun "is_linetouched" :boolean (win (:pointer window)) (line :int))
(defcfun "is_wintouched" :boolean (win (:pointer window)))
(defcfun "keyname" :string (c :int))
(defcfun "keypad" :int (win (:pointer window)) (bf :boolean))
(defcfun "killchar" :char)
(defcfun "leaveok" :int (win (:pointer window)) (bf :boolean))
(defcfun "longname" :string)
(defcfun "meta" :int (win (:pointer window)) (bf :boolean))
(defcfun "move" :int (y :int) (x :int))






(defcfun "mvcur" :int (oldrow :int) (oldcol :int) (newrow :int) (newcol :int))
(defcfun "mvdelch" :int (y :int) (x :int))
(defcfun "mvderwin" :int (win (:pointer window)) (par_y :int) (par_x :int))
(defcfun "mvgetch" :int (y :int) (x :int))
(defcfun "mvgetnstr" :int (y :int) (x :int) (str :string) (n :int))
(defcfun "mvgetstr" :int (y :int) (x :int) (str :string))

(defcfun "mvinch" chtype (y :int) (x :int))
(defcfun "mvinchnstr" :int (y :int) (x :int) (chstr (:pointer chtype)) (n :int))
(defcfun "mvinchstr" :int (y :int) (x :int) (chstr (:pointer chtype)))
(defcfun "mvinnstr" :int (y :int) (x :int) (str :string) (n :int))
(defcfun "mvinsch" :int (y :int) (x :int) (ch chtype))
(defcfun "mvinsnstr" :int (y :int) (x :int) (str :string) (n :int))
(defcfun "mvinsstr" :int (y :int) (x :int) (str :string))
(defcfun "mvinstr" :int (y :int) (x :int) (str :string))
(defcfun "mvprintw" :int (y :int) (x :int) (fmt :string) &rest)
(defcfun "mvscanw" :int (y :int) (x :int) (fmt string) &rest)







(defcfun "mvwdelch" :int (win (:pointer window)) (y :int) (x :int))
(defcfun "mvwgetch" :int (win (:pointer window)) (y :int) (x :int))
(defcfun "mvwgetnstr" :int (win (:pointer window)) (y :int) (x :int) (str :string) (n :int))
(defcfun "mvwgetstr" :int (win (:pointer window)) (y :int) (x :int) (str :string))

(defcfun "mvwin" (:pointer window) (win (:pointer window)) (y :int) (x :int))
(defcfun "mvwinch" chtype (win (:pointer window)) (y :int) (x :int))
(defcfun "mvwinchnstr" :int (win (:pointer window)) (y :int) (x :int) (chstr (:pointer chtype) (n :int)))
(defcfun "mvwinchstr" :int (win (:pointer window)) (y :int) (x :int) (chstr (:pointer chtype)))
(defcfun "mvwinnstr" :int (win (:pointer window)) (y :int) (x :int) (str :string) (n :int))
(defcfun "mvwinsch" :int (win (:pointer window)) (y :int) (x :int) (ch chtype))
(defcfun "mvwinsnstr" :int (win (:pointer window)) (y :int) (x :int) (str :string) (n :int))
(defcfun "mvwinsstr" :int (win (:pointer window)) (y :int) (x :int) (str :string))
(defcfun "mvwinstr" :int (win (:pointer window)) (y :int) (x :int) (str :string))
(defcfun "mvwprintw" :int (win (:pointer window)) (y :int) (x :int) (fmt :string) &rest)
(defcfun "mvwscanw" :int (win (:pointer window)) (y :int) (x :int) (fmt :string) &rest)

(defcfun "napms" :int (ms :int))
(defcfun "newpad" (:pointer window) (nlines :int) (nclos :int))
;;(defcfun "newterm" (:pointer screen) (type :string) (outfd file-ptr) (infd file-ptr))
(defcfun "newwin" (:pointer window) (nlines :int) (ncols :int) (begin_y :int) (begin_x :int))
(defcfun "nl" :int)
(defcfun "nocbreak" :int)
(defcfun "nodelay" :int (win (:pointer window)) (bf :boolean))
(defcfun "noecho" :int)
(defcfun "nonl" :int)
(defcfun "noqiflush" :void)
(defcfun "noraw" :int)
(defcfun "notimeout" :int (win (:pointer window)) (bf :boolean))
(defcfun "overlay" :int (srcwin (:pointer window)) (dstwin (:pointer window)))
(defcfun "overwrite" :int (srcwin (:pointer window)) (dstwin (:pointer window)))

(defcfun "PAIR_NUMBER" :int (attrs :int))
(defcfun "pechochar" :int (pad (:pointer window)) (ch chtype))
(defcfun "pnoutrefresh" :int (pad (:pointer window)) (pminrow :int) (pmincol :int) (sminrow :int) (smincol :int) (smaxrow :int) (smaxcol :int))
(defcfun "prefresh" :int (pad (:pointer window)) (pminrow :int) (pmincol :int) (sminrow :int) (smincol :int) (smaxrow :int) (smaxcol :int))
(defcfun "printw" :int (fmt :string) &rest)
(defcfun "putwin" :int (win (:pointer window)) (filep file-ptr))
(defcfun "qiflush" :void)
(defcfun "raw" :int)
(defcfun "redrawwin" :int (win (:pointer window)))
(defcfun "refresh" :int)
(defcfun "resetty" :int)
(defcfun "reset_prog_mode" :int)
(defcfun "reset_shell_mode" :int)
;TODO ripoffline -- int ripoffline(int line, int (*init)(WINDOW *, int));
(defcfun "savetty" :int)
(defcfun "scanw" :int (fmt string) &rest)
(defcfun "scr_dump" :int (filename :string))
(defcfun "scr_init" :int (filename :string))
(defcfun "scrl" :int (n :int))
(defcfun "scroll" :int (win (:pointer window)))
(defcfun "scrollok" :int (win (:pointer window)) (bf :boolean))
(defcfun "scr_restore" :int (filename :string))
(defcfun "scr_set" :int (filename :string))
(defcfun "setscrreg" :int (top :int) (bot :int))
;;(defcfun "set_term" (:pointer screen) (new (:pointer screen)))
(defcfun "slk_attroff" :int (attrs chtype))
(defcfun "slk_attr_off" :int (attrs attr-t) (opts :pointer))
(defcfun "slk_attron" :int (attrs chtype))
(defcfun "slk_attr_on" :int (attrs attr-t) (opts :pointer))
(defcfun "slk_attrset" :int (attrs chtype))
(defcfun "slk_attr" :int)
(defcfun "slk_attr_set" :int (attrs attr-t) (pair :short) (opts :pointer))
(defcfun "slk_clear" :int)
(defcfun "slk_color" :int (pair :short))
(defcfun "slk_init" :int (fmt :int))
(defcfun "slk_label" :string (labnum :int))
(defcfun "slk_noutrefresh" :int)
(defcfun "slk_refresh" :int)
(defcfun "slk_restore" :int)
(defcfun "slk_set" :int (labnum :int) (label :string) (fmt :int))
(defcfun "slk_touch" :int)

(defcfun "subpad" (:pointer window) (orig (:pointer window)) (nlines :int) (ncols :int) (begin_y :int) (begin_x :int))
(defcfun "subwin" (:pointer window) (orig (:pointer window)) (nlines :int) (ncols :int) (begin_y :int) (begin_x :int))
(defcfun "syncok" :int (win (:pointer window)) (bf :boolean))
(defcfun "termattrs" chtype)
(defcfun "termname" :string)
(defcfun "timeout" :void (delay :int))
(defcfun "touchline" :int (win (:pointer window)) (start :int) (count :int))
(defcfun "touchwin" :int (win (:pointer window)))
(defcfun "typeahead" :int (fd :int))
(defcfun "ungetch" :int (ch :int))
(defcfun "untouchwin" :int (win (:pointer window)))
(defcfun "use_env" :void (f :boolean))
(defcfun "use_tioctl" :void (f :boolean))
(defcfun "vidattr" :int (attrs chtype))
;TODO vidputs -  int vidputs(chtype attrs, int (*putc)(int));

;(defcfun "vwprintw" :int (win (:pointer window)) (fmt :string) (varglist va_list))
;(defcfun "vw_printw" :int (win (:pointer window)) (fmt :string) (varglist va_list))
;(defcfun "vwscanw" :int (win (:pointer window)) (fmt :string) (varglist va_list))
;(defcfun "vw_scanw" :int (win (:pointer window)) (fmt :string) (varglist va_list))







(defcfun "wclear" :int (win (:pointer window)))
(defcfun "wclrtobot" :int (win (:pointer window)))
(defcfun "wclrtoeol" :int (win (:pointer window)))

(defcfun "wcursyncup" :void (win (:pointer window)))
(defcfun "wdelch" :int (win (:pointer window)))
(defcfun "wdeleteln" :int (win (:pointer window)))

(defcfun "werase" :int (win (:pointer window)))
(defcfun "wgetch" :int (win (:pointer window)))
(defcfun "wgetnstr" :int (win (:pointer window)) (str :string) (n :int))
(defcfun "wgetstr" :int (win (:pointer window)) (str :string))

(defcfun "winch" chtype (win (:pointer window)))
(defcfun "winchnstr" :int (win (:pointer window)) (chstr (:pointer chtype)) (n :int))
(defcfun "winchstr" :int (win (:pointer window)) (chstr (:pointer chtype)))
(defcfun "winnstr" :int (win (:pointer window)) (str :string) (n :int))
(defcfun "winsch" :int (win (:pointer window)) (ch chtype))
(defcfun "winsdelln" :int (win (:pointer window)) (n :int))
(defcfun "winsertln" :int (win (:pointer window)))
(defcfun "winsnstr" :int (win (:pointer window)) (str :string) (n :int))
(defcfun "winsstr" :int (win (:pointer window)) (str :string))
(defcfun "winstr" :int (win (:pointer window)) (str :string))
(defcfun "wmove" :int (win (:pointer window)) (y :int) (x :int))
(defcfun "wnoutrefresh" :int (win (:pointer window)))
(defcfun "wprintw" :int (win (:pointer window)) (fmt :string) &rest)
(defcfun "wredrawln" :int (win (:pointer window)) (beg_line :int) (num_lines :int))
(defcfun "wrefresh" :int (win (:pointer window)))
(defcfun "wscanw" :int (win (:pointer window)) (fmt :string) &rest)
(defcfun "wscrl" :int (win (:pointer window)) (n :int))
(defcfun "wsetscrreg" :int (win (:pointer window)) (top :int) (bot :int))

(defcfun "wsyncdown" :void (win (:pointer window)))
(defcfun "wsyncup" :void (win (:pointer window)))
(defcfun "wtimeout" :void (win (:pointer window)) (delay :int))
(defcfun "wtouchln" :int (win (:pointer window)) (y :int) (n :int) (changed :int))


#|
extern NCURSES_EXPORT(bool) is_term_resized (int, int);
extern NCURSES_EXPORT(char *) keybound (int, int);
extern NCURSES_EXPORT(const char *) curses_version (void);
extern NCURSES_EXPORT(int) alloc_pair (int, int);
extern NCURSES_EXPORT(int) assume_default_colors (int, int);
extern NCURSES_EXPORT(int) define_key (const char *, int);

extern NCURSES_EXPORT(int) extended_slk_color(int);
extern NCURSES_EXPORT(int) find_pair (int, int);
extern NCURSES_EXPORT(int) free_pair (int);
extern NCURSES_EXPORT(int) get_escdelay (void);


extern NCURSES_EXPORT(int) key_defined (const char *);
extern NCURSES_EXPORT(int) keyok (int, bool);

extern NCURSES_EXPORT(int) resize_term (int, int);
extern NCURSES_EXPORT(int) resizeterm (int, int);
extern NCURSES_EXPORT(int) set_escdelay (int);
extern NCURSES_EXPORT(int) set_tabsize (int);
extern NCURSES_EXPORT(int) use_default_colors (void);
extern NCURSES_EXPORT(int) use_extended_names (bool);
extern NCURSES_EXPORT(int) use_legacy_coding (int);
extern NCURSES_EXPORT(int) use_screen (SCREEN *, NCURSES_SCREEN_CB, void *);
extern NCURSES_EXPORT(int) use_window (WINDOW *, NCURSES_WINDOW_CB, void *);
extern NCURSES_EXPORT(int) wresize (WINDOW *, int, int);
extern NCURSES_EXPORT(void) nofilter(void);|#

(defcfun "wgetparent" (:pointer window) (win (:pointer window)))
(defcfun "is_cleared" :boolean (win (:pointer window)))
(defcfun "is_idcok" :boolean (win (:pointer window)))
(defcfun "is_idlok" :boolean (win (:pointer window)))
(defcfun "is_immedok" :boolean (win (:pointer window)))
(defcfun "is_keypad" :boolean (win (:pointer window)))
(defcfun "is_leaveok" :boolean (win (:pointer window)))
(defcfun "is_nodelay" :boolean (win (:pointer window)))
(defcfun "is_notimeout" :boolean (win (:pointer window)))
(defcfun "is_pad" :boolean (win (:pointer window)))
(defcfun "is_scollok" :boolean (win (:pointer window)))
(defcfun "is_subwin" :boolean (win (:pointer window)))
(defcfun "is_syncok" :boolean (win (:pointer window)))
(defcfun "wgetdelay" :int (win (:pointer window)))
(defcfun "wgetscrreg" :int (win (:pointer window)) (top (:pointer :int)) (bottom (:pointer :int)))

(defcfun "has_mouse" :boolean)
(defcfun "getmouse" :int (event (:pointer (:struct mevent))) )
(defcfun "ungetmouse" :int (event (:pointer (:struct mevent))) )
(defcfun "mousemask" mmask-t (newmask mmask-t) (oldmask (:pointer mmask-t)))
(defcfun "wenclose" :boolean (win (:pointer window)) (y :int) (x :int))
(defcfun "mouse_trafo" :boolean (pY (:pointer :int)) (pX (:pointer :int)) (to_screen :boolean))
(defcfun "wmouse_trafo" :boolean (win (:pointer window)) (pY (:pointer :int)) (pX (:pointer :int)) (to_screen :boolean))
(defcfun "mouseinterval" :int (erval :int))



(defcfun "getattrs" :int (win (:pointer window)))
(defcfun "getcurx" :int (win (:pointer window)))
(defcfun "getcury" :int (win (:pointer window)))
(defcfun "getbegx" :int (win (:pointer window)))
(defcfun "getbegy" :int (win (:pointer window)))
(defcfun "getmaxx" :int (win (:pointer window)))
(defcfun "getmaxy" :int (win (:pointer window)))
(defcfun "getparx" :int (win (:pointer window)))
(defcfun "getpary" :int (win (:pointer window)))
