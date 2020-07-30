(in-package #:binding)

(defcfun "addchstr" :int (chstr (:pointer chtype)))
(defcfun "addnstr" :int (str :string) (n :int))
(defcfun "addstr" :int (str :string))
(defcfun "attroff" :int (attrs :int))
(defcfun "attron" :int (attrs :int))
(defcfun "attrset" :int (attrs :int))
(defcfun "attr_get" :int (attrs (:pointer attr_t) (pair (:pointer short) (opts :pointer))))
(defcfun "attr_off" :int (attrs attr_t) (opts :pointer))
(defcfun "attr_on" :int (attrs attr_t) (opts :pointer))
(defcfun "attr_set" :int (attrs attr_t) (pair :short) (opts :pointer))
(defcfun "baudrate" :int)
(defcfun "beep" :int)
(defcfun "bkgd" :int (ch chtype))
(defcfun "bkgdset" :void (ch chtype))
(defcfun "border" :int (ls chtype) (rs chtype) (ts chtype) (bs chtype) (tl chtype) (tr chtype) (bl chtype) (br chtype))
(defcfun "box" :int (win window-ptr) (verch chtype) (horch chtype))
;TODO can_change_color
(defcfun "cbreak" :int)
;TODO chgat
(defcfun "clear" :int)
(defcfun "clearok" :int (win window-ptr) (bf :boolean))
(defcfun "clrtobot" :int)
(defcfun "clrtoeol" :int)
(defcfun "color_content" :int (color :short) (r (:pointer :short)))
(defcfun "color_set" :int (pair :short) (opts (:pointer :void)))
(defcfun "COLOR_PAIR" :int (n :int))
(defcfun "copywin" :int (srcwin window-ptr) (dstwin window-ptr) (sminrow :int) (smincol :int) (dminrow :int) (dmincol :int) (dmaxrow :int) (dmaxcol :int) (overlay :int))
(defcfun "curs_set" :int (visibility :int))
(defcfun "def_prog_mode" :int)
(defcfun "def_shell_mode" :int)
(defcfun "delay_output" :int (ms :int))
(defcfun "delch" :int)
(defcfun "delscreen" :void (sp screen-ptr))
(defcfun "delwin" window-ptr (win window-ptr))
(defcfun "deleteln" :int)
(defcfun "derwin" window-ptr (orig window-ptr) (nlines :int) (ncols :int) (begin_y :int) (begin_x :int))
(defcfun "doupdate" :int)
(defcfun "dupwin" window-ptr (win window-ptr))
(defcfun "echo" :int)
(defcfun "echochar" :int (ch chtype))
(defcfun "erase" :int)
(defcfun "endwin" :int)
(defcfun "erasechar" :char)
(defcfun "filter" :void)
(defcfun "flash" :int)
(defcfun "flushnip" :int)
(defcfun "getbkgd" chtype (win window-ptr))
(defcfun "getch" :int)
(defcfun "getnstr" :int (str :string) (n :int))
(defcfun "getstr" :int (str :string))
(defcfun "getwin" window-ptr (filep file-ptr))
(defcfun "halfdelay" :int (tenths :int))
(defcfun "has_colors" :boolean)
(defcfun "has_ic" :boolean)
(defcfun "has_il" :boolean)
(defcfun "hline" :int (ch chtype) (n :int))
(defcfun "idcok" :void (win window-ptr) (bf :boolean))
(defcfun "idlok" :int (win window-ptr) (bf :boolean))
(defcfun "immedok" :void (win window-ptr) (bf :boolean))
(defcfun "inch" chtype)
(defcfun "inchnstr" :int (inchstr (:pointer chtype)) (n :int))
(defcfun "inchstr" :int (inchstr (:pointer chtype)))
(defcfun "initscr" window-ptr)
(defcfun "init_color" :int (color :short) (r :short) (g :short) (b :short))
(defcfun "init_pair" :int (pair :short) (f :short) (b :short))
(defcfun "innstr" :int (str :string) (n :int))
(defcfun "insch" :int (ch chtype))
(defcfun "insdelln" :int (n :int))
(defcfun "insertln" :int)
(defcfun "insnstr" :int (str :string) (n :int))
(defcfun "insstr" :int (str :string))
(defcfun "instr" :int (str :string))
(defcfun "intrflush" :int (win window-ptr) (bf :boolean))
(defcfun "isendwin" :bool)
(defcfun "is_linetouched" :boolean (win window-ptr) (line :int))
(defcfun "is_wintouched" :boolean (win window-ptr))
(defcfun "keyname" :string (c :int))
(defcfun "keypad" :int (win window-ptr) (bf :boolean))
(defcfun "killchar" :char)
(defcfun "leaveok" :int (win window-ptr) (bf :boolean))
(defcfun "longname" :string)
(defcfun "meta" :int (win window-ptr) (bf :boolean))
(defcfun "move" :int (y :int) (x :int))
(defcfun "mvaddch" :int (y :int) (x :int) (ch chtype))
(defcfun "mvaddchnstr" :int (y :int) (x :int) (chstr (:pointer chtype) (n :int)))
(defcfun "mvaddchstr" :int (y :int) (x :int) (chstr (:pointer chtype)))
(defcfun "mvaddnstr" :int (y :int) (x :int) (str :string) (n :int))
(defcfun "mvaddstr" :int (y :int) (x :int) (str :string))
(defcfun "mvchgat" :int (y :intf (x :int) (n :int) (attr attr_t) (pair :short) (opts :pointer)))
(defcfun "mvcur" :int (oldrow :int) (oldcol :int) (newrow :int) (newcol :int))
(defcfun "mvdelch" :int (y :int) (x :int))
(defcfun "mvderwin" :int (win window-ptr) (par_y :int) (par_x :int))
(defcfun "mvgetch" :int (y :int) (x :int))
(defcfun "mvgetnstr" :int (y :int) (x :int) (str :string) (n :int))
(defcfun "mvgetstr" :int (y :int) (x :int) (str :string))
(defcfun "mvhline" :int (y :int) (x :int) (ch chtype) (n :int))
(defcfun "mvinch" chtype (y :int) (x :int))
(defcfun "mvinchnstr" :int (y :int) (x :int) (chstr (:pointer chtype)) (n :int))
(defcfun "mvinchstr" :int (y :int) (x :int) (chstr (:pointer chtype)))
(defcfun "mvinnstr" :int (y :int) (x :int) (str :string) (n :int))
(defcfun "mvinsch" :int (y :int) (x :int) (ch chtype))
(defcfun "mvinsnstr" :int (y :int) (x :int) (str :string) (n :int))
(defcfun "mvinsstr" :int (y :int) (x :int) (str :string))
(defcfun "mvinstr" :int (y :int) (x :int) (str :string))
(defcfun "mvprintw" :int (y :int) (x :int) (fmt :string) &rest)
;TODO mvscanw
(defcfun "mvvline" :int (y :int) (x :int) (ch chtype) (n :int))
(defcfun "mvwaddch" :int (win window-ptr) (y :int) (x :int) (ch chtype))
;TODO mvwaddchnstr
;TODO mvwaddchstr
(defcfun "mvwaddnstr" :int (win window-ptr) (y :int) (x :int) (str :string) (n :int))
(defcfun "mvwaddstr" :int (win window-ptr) (y :int) (x :int) (str :string))
;TODO mvwchgat
(defcfun "mvwdelch" :int (win window-ptr) (y :int) (x :int))
(defcfun "mvwgetch" :int (win window-ptr) (y :int) (x :int))
(defcfun "mvwgetnstr" :int (win window-ptr) (y :int) (x :int) (str :string) (n :int))
(defcfun "mvwgetstr" :int (win window-ptr) (y :int) (x :int) (str :string))
(defcfun "mvwhline" :int (win window-ptr) (y :int) (x :int) (ch chtype) (n :int))
(defcfun "mvwin" window-ptr (win window-ptr) (y :int) (x :int))
(defcfun "mvwinch" chtype (win window-ptr) (y :int) (x :int))
;TODO mvwinchnstr
;TODO mvwinchstr
(defcfun "mvwinnstr" :int (win window-ptr) (y :int) (x :int) (str :string) (n :int))
(defcfun "mvwinsch" :int (win window-ptr) (y :int) (x :int) (ch chtype))
(defcfun "mvwinsnstr" :int (win window-ptr) (y :int) (x :int) (str :string) (n :int))
(defcfun "mvwinsstr" :int (win window-ptr) (y :int) (x :int) (str :string))
(defcfun "mvwinstr" :int (win window-ptr) (y :int) (x :int) (str :string))
(defcfun "mvwprintw" :int (win window-ptr) (y :int) (x :int) (fmt :string) &rest)
;TODO mvwscanw
(defcfun "mvwvline" :int (win window-ptr) (y :int) (x :int) (ch chtype) (n :int))
(defcfun "napms" :int (ms :int))
(defcfun "newpad" window-ptr (nlines :int) (nclos :int))
(defcfun "newterm" screen-ptr (type :string) (outfd file-ptr) (infd file-ptr))
(defcfun "newwin" window-ptr (nlines :int) (ncols :int) (begin_y :int) (begin_x :int))
(defcfun "nl" :int)
(defcfun "nocbreak" :int)
(defcfun "nodelay" :int (win window-ptr) (bf :boolean))
(defcfun "noecho" :int)
(defcfun "nonl" :int)
(defcfun "noqiflush" :void)
(defcfun "noraw" :int)
(defcfun "notimeout" :int (win window-ptr) (bf :boolean))
(defcfun "overlay" :int (srcwin window-ptr) (dstwin window-ptr))
(defcfun "overwrite" :int (srcwin window-ptr) (dstwin window-ptr))
(defcfun "pair_content" :int (pair :short) (f (:pointer :short)))
(defcfun "PAIR_NUMBER" :int (attrs :int))
(defcfun "pechochar" :int (pad window-ptr) (ch chtype))
(defcfun "pnoutrefresh" :int (pad window-ptr) (pminrow :int) (pmincol :int) (sminrow :int) (smincol :int) (smaxrow :int) (smaxcol :int))
(defcfun "prefresh" :int (pad window-ptr) (pminrow :int) (pmincol :int) (sminrow :int) (smincol :int) (smaxrow :int) (smaxcol :int))
(defcfun "printw" :int (fmt :string) &rest)
;TODO printw
;TODO putwin
(defcfun "qiflush" :void)
(defcfun "raw" :int)
(defcfun "redrawwin" :int (win window-ptr))
(defcfun "refresh" :int)
(defcfun "resetty" :int)
(defcfun "reset_prog_mode" :int)
(defcfun "reset_shell_mode" :int)
;TODO ripoffline
(defcfun "savetty" :int)
;TODO scanw
(defcfun "scr_dump" :int (filename :string))
(defcfun "scr_init" :int (filename :string))
(defcfun "scrl" :int (n :int))
(defcfun "scroll" :int (win window-ptr))
(defcfun "scrollok" :int (win window-ptr) (bf :boolean))
(defcfun "scr_restore" :int (filename :string))
(defcfun "scr_set" :int (filename :string))
(defcfun "setscrreg" :int (top :int) (bot :int))
(defcfun "set_term" screen-ptr (new screen-ptr))
;TODO slk_attroff
;TODO slk_attr_off
;TODO slk_attron
;TODO slk_attr_on
;TODO slk_attrset
;TODO slk_attr
;TODO slk_attr_set
;TODO slk_clear
;TODO slk_color
;TODO slk_init
;TODO slk_label
;TODO slk_noutrefresh
;TODO slk_refresh
;TODO slk_restore
;TODO slk_set
;TODO slk_touch
;TODO standout
;TODO standend
(defcfun "start_color" :int)
(defcfun "subpad" window-ptr (orig window-ptr) (nlines :int) (ncols :int) (begin_y :int) (begin_x :int))
(defcfun "subwin" window-ptr (orig window-ptr) (nlines :int) (ncols :int) (begin_y :int) (begin_x :int))
(defcfun "syncok" :int (win window-ptr) (bf :boolean))
;TODO termattrs
(defcfun "termname" :string)
(defcfun "timeout" :void (delay :int))
(defcfun "touchline" :int (win window-ptr) (start :int) (count :int))
(defcfun "touchwin" :int (win window-ptr))
(defcfun "typeahead" :int (fd :int))
(defcfun "ungetch" :int (ch :int))
(defcfun "untouchwin" :int (win window-ptr))
(defcfun "use_env" :void (f :boolean))
(defcfun "use_tioctl" :void (f :boolean))
;TODO vidattr
;TODO vidputs
(defcfun "vline" :int (ch chtype) (n :int))
(defcfun "vwprintw" :int (win window-ptr) (fmt :string) (varglist va_list))
(defcfun "vw_printw" :int (win window-ptr) (fmt :string) (varglist va_list))
;TODO vw_printw
;TODO vwscanw
;TODO vw_scanw
(defcfun "waddch" :int (win window-ptr) (ch chtype))
;TODO waddchnstr
;TODO waddchstr
(defcfun "waddnstr" :int (win window-ptr) (str :string) (n :int))
(defcfun "waddstr" :int (win window-ptr) (str :string))
;TODO wattron
;TODO wattroff
;TODO wattrset
;TODO wattr_get
;TODO wattr_on
;TODO wattr_off
;TODO wattr_set
(defcfun "wbkgd" :int (win window-ptr) (ch chtype))
(defcfun "wbkgdset" :void (win window-ptr) (ch chtype))
(defcfun "wborder" :int (win window-ptr) (ls chtype) (rs chtype) (ts chtype) (bs chtype) (tl chtype) (tr chtype) (bl chtype) (br chtype))
;TODO wchgat
(defcfun "wclear" :int (win window-ptr))
(defcfun "wclrtobot" :int (win window-ptr))
(defcfun "wclrtoeol" :int (win window-ptr))
;TODO wcolor_set
;TODO wcursyncup
(defcfun "wdelch" :int (win window-ptr))
(defcfun "wdeleteln" :int (win window-ptr))
(defcfun "wechochar" :int (win window-ptr) (ch chtype))
(defcfun "werase" :int (win window-ptr))
(defcfun "wgetch" :int (win window-ptr))
(defcfun "wgetnstr" :int (win window-ptr) (str :string) (n :int))
(defcfun "wgetstr" :int (win window-ptr) (str :string))
(defcfun "whline" :int (win window-ptr) (ch chtype) (n :int))
(defcfun "winch" chtype (win window-ptr))
;TODO winchnstr
;TODO winchstr
(defcfun "winnstr" :int (win window-ptr) (str :string) (n :int))
(defcfun "winsch" :int (win window-ptr) (ch chtype))
(defcfun "winsdelln" :int (win window-ptr) (n :int))
(defcfun "winsertln" :int (win window-ptr))
(defcfun "winsnstr" :int (win window-ptr) (str :string) (n :int))
(defcfun "winsstr" :int (win window-ptr) (str :string))
(defcfun "winstr" :int (win window-ptr) (str :string))
(defcfun "wmove" :int (win window-ptr) (y :int) (x :int))
(defcfun "wnoutrefresh" :int (win window-ptr))
(defcfun "wprintw" :int (win window-ptr) (fmt :string) &rest)
(defcfun "wredrawln" :int (win window-ptr) (beg_line :int) (num_lines :int))
(defcfun "wrefresh" :int (win window-ptr))
;TODO wscanw
;TODO wscrl
(defcfun "wsetscrreg" :int (win window-ptr) (top :int) (bot :int))
;TODO wstandout
;TODO wstandend
;TODO wsyncdown
;TODO wsyncup
(defcfun "wtimeout" :void (win window-ptr) (delay :int))
(defcfun "wtouchln" :int (win window-ptr) (y :int) (n :int) (changed :int))
(defcfun "wvline" :int (win window-ptr) (ch chtype) (n :int))
