;;;; package.lisp
(defpackage #:raw-ncurses-binding
  (:nicknames #:binding)
  (:use #:cl #:cffi)
  (:export
   ;; add-wch.lisp
   ;; add-wchstr.lisp
   ;; addch.lisp
   #:addch
   #:waddch
   #:mvaddch
   #:mvwaddch
   #:echochar
   #:wechochar
   ;; addchstr.lisp
   #:addchstr
   #:addchnstr
   #:waddchstr
   #:waddchnstr
   #:mvaddchstr
   #:mvaddchnstr
   #:mvwaddchstr
   #:mvwaddchnstr
   ;; addstr.lisp
   #:addstr
   #:addnstr
   #:waddstr
   #:waddnstr
   #:mvaddstr
   #:mvaddnstr
   #:mvwaddstr
   #:mvwaddnstr
   ;; addwstr.lisp
   ;; attr.lisp
   #:attr-get
   #:wattr-get
   #:attr-set
   #:wattr-set
   #:attr-off
   #:wattr-off
   #:attr-on
   #:wattr-on
   #:attroff
   #:wattroff
   #:attron
   #:wattron
   #:attrset
   #:wattrset
   #:chgat
   #:wchgat
   #:mvchgat
   #:mvwchgat
   #:color-set
   #:wcolor-set
   #:standend
   #:wstandend
   #:standout
   #:wstandout
   ;; beep.lisp
   #:beep
   #:flash
   ;; bkgd.lisp
   #:bkgdset
   #:wbkgdset
   #:bkgd
   #:wbkgd
   #:getbkgd
   ;; bkgrnd.lisp
   #:bkgrnd
   #:wbkgrnd
   #:bkgrndset
   #:wbkgrndset
   #:getbkgrnd
   #:wgetbkgrndt
   ;; border-set.lisp
   #:border-set
   #:wborder-set
   #:box-set
   #:hline-set
   #:whline-set
   #:vline-set
   #:wvline-set
   #:mvhline-set
   #:mvwhline-set
   #:mvvline-set
   #:mvwvline-set
   ;; border.lisp
   #:border
   #:wborder
   #:box
   #:hline
   #:whline
   #:vline
   #:wvline
   #:mvhline
   #:mvwhline
   #:mvvline
   #:mvwvline
   ;; clear.lisp
   #:erase
   #:werase
   #:clear
   #:wclear
   #:clrtobot
   #:wclrtobot
   #:clrtoeol
   #:wclrtoeol
   ;; color.lisp
   #:start-color
   #:has-colors
   #:can-change-color
   #:init-pair
   #:init-color
   #:init-extended-pair
   #:init-extended-color
   #:color-content
   #:pair-content
   #:extended-color-content
   #:extended-pair-content
   #:reset-color-pairs
   #:COLOR-PAIR
   ;; default-colors.lisp
   #:use-default-colors
   #:assume-default-colors
   ;; define-key.lisp
   #:define-key
   ;; delch.lisp
   #:delch
   #:wdelch
   #:mvdelch
   #:mvwdelch
   ;; deleteln.lisp
   #:deleteln
   #:wdeleteln
   #:insdelln
   #:winsdelln
   #:insertln
   #:winsertln
   ;; dummy.lisp
   ;; extend.lisp
   #:curses-version
   #:user-extended-names
   ;; get-wch.lisp
   ;; get-wstr.lisp
   ;; getcchar.lisp
   #:getcchar
   #:setcchar
   ;; getch.lisp
   #:getch
   #:wgetch
   #:mvgetch
   #:mvwgetch
   #:ungetch
   #:has-key
   ;; getstr.lisp
   #:getstr
   #:getnstr
   #:wgetstr
   #:wgetnstr
   #:mvgetstr
   #:mvwgetstr
   #:mvgetnstr
   #:mvwgetnstr
   ;; getyx-wrapper.lisp
   ;; grovel-constants.lisp
   #:+NCURSES-VERSION-MAJOR+
   #:+NCURSES-VERSION-MINOR+
   #:+NCURSES-VERSION-PATCH+
   #:+NCURSES-WIDECHAR+
   #:+NCURSES-VERSION+
   #:+WA-ATTRIBUTES+
   #:+WA-NORMAL+
   #:+WA-STANDOUT+
   #:+WA-UNDERLINE+
   #:+WA-REVERSE+
   #:+WA-BLINK+
   #:+WA-DIM+
   #:+WA-BOLD+
   #:+WA-ALTCHARSET+
   #:+WA-INVIS+
   #:+WA-PROTECT+
   #:+WA-HORIZONTAL+
   #:+WA-LEFT+
   #:+WA-LOW+
   #:+WA-RIGHT+
   #:+WA-TOP+
   #:+WA-VERTICAL+
   #:+WA-ITALIC+
   #:+A-NORMAL+
   #:+A-ATTRIBUTES+
   #:+A-CHARTEXT+
   #:+A-COLOR+
   #:+A-STANDOUT+
   #:+A-UNDERLINE+
   #:+A-REVERSE+
   #:+A-BLINK+
   #:+A-DIM+
   #:+A-BOLD+
   #:+A-ALTCHARSET+
   #:+A-INVIS+
   #:+A-PROTECT+
   #:+A-HORIZONTAL+
   #:+A-LEFT+
   #:+A-LOW+
   #:+A-RIGHT+
   #:+A-TOP+
   #:+A-VERTICAL+
   #:+A-ITALIC+
   #:+NCURSES-BUTTON-RELEASED+
   #:+NCURSES-BUTTON-PRESSED+
   #:+NCURSES-BUTTON-CLICKED+
   #:+NCURSES-DOUBLE-CLICKED+
   #:+NCURSES-TRIPLE-CLICKED+
   #:+NCURSES-RESERVED-EVENT+
   #:+BUTTON1-RELEASED+
   #:+BUTTON1-PRESSED+
   #:+BUTTON1-CLICKED+
   #:+BUTTON1-DOUBLE-CLICKED+
   #:+BUTTON1-TRIPLE-CLICKED+
   #:+BUTTON2-RELEASED+
   #:+BUTTON2-PRESSED+
   #:+BUTTON2-CLICKED+
   #:+BUTTON2-DOUBLE-CLICKED+
   #:+BUTTON2-TRIPLE-CLICKED+
   #:+BUTTON3-RELEASED+
   #:+BUTTON3-PRESSED+
   #:+BUTTON3-CLICKED+
   #:+BUTTON3-DOUBLE-CLICKED+
   #:+BUTTON3-TRIPLE-CLICKED+
   #:+BUTTON4-RELEASED+
   #:+BUTTON4-PRESSED+
   #:+BUTTON4-CLICKED+
   #:+BUTTON4-DOUBLE-CLICKED+
   #:+BUTTON4-TRIPLE-CLICKED+
   #:+BUTTON5-RELEASED+
   #:+BUTTON5-PRESSED+
   #:+BUTTON5-CLICKED+
   #:+BUTTON5-DOUBLE-CLICKED+
   #:+BUTTON5-TRIPLE-CLICKED+
   #:+BUTTON-CTRL+
   #:+BUTTON-SHIFT+
   #:+BUTTON-ALT+
   #:+REPORT-MOUSE-POSITION+
   #:+ALL-MOUSE-EVENTS+
   #:+KEY-CODE-YES+
   #:+KEY-MIN+
   #:+KEY-BREAK+
   #:+KEY-SRESET+
   #:+KEY-RESET+
   #:+KEY-DOWN+
   #:+KEY-UP+
   #:+KEY-LEFT+
   #:+KEY-RIGHT+
   #:+KEY-HOME+
   #:+KEY-BACKSPACE+
   #:+KEY-F0+
   #:+KEY-DL+
   #:+KEY-IL+
   #:+KEY-DC+
   #:+KEY-IC+
   #:+KEY-EIC+
   #:+KEY-CLEAR+
   #:+KEY-EOS+
   #:+KEY-EOL+
   #:+KEY-SF+
   #:+KEY-SR+
   #:+KEY-NPAGE+
   #:+KEY-PPAGE+
   #:+KEY-STAB+
   #:+KEY-CTAB+
   #:+KEY-CATAB+
   #:+KEY-ENTER+
   #:+KEY-PRINT+
   #:+KEY-LL+
   #:+KEY-A1+
   #:+KEY-A3+
   #:+KEY-B2+
   #:+KEY-C1+
   #:+KEY-C3+
   #:+KEY-BTAB+
   #:+KEY-BEG+
   #:+KEY-CANCEL+
   #:+KEY-CLOSE+
   #:+KEY-COMMAND+
   #:+KEY-COPY+
   #:+KEY-CREATE+
   #:+KEY-END+
   #:+KEY-EXIT+
   #:+KEY-FIND+
   #:+KEY-HELP+
   #:+KEY-MARK+
   #:+KEY-MESSAGE+
   #:+KEY-MOVE+
   #:+KEY-NEXT+
   #:+KEY-OPEN+
   #:+KEY-OPTIONS+
   #:+KEY-PREVIOUS+
   #:+KEY-REDO+
   #:+KEY-REFERENCE+
   #:+KEY-REFRESH+
   #:+KEY-REPLACE+
   #:+KEY-RESTART+
   #:+KEY-RESUME+
   #:+KEY-SAVE+
   #:+KEY-SBEG+
   #:+KEY-SCANCEL+
   #:+KEY-SCOMMAND+
   #:+KEY-SCOPY+
   #:+KEY-SCREATE+
   #:+KEY-SDC+
   #:+KEY-SDL+
   #:+KEY-SELECT+
   #:+KEY-SEND+
   #:+KEY-SEOL+
   #:+KEY-SEXIT+
   #:+KEY-SFIND+
   #:+KEY-SHELP+
   #:+KEY-SHOME+
   #:+KEY-SIC+
   #:+KEY-SLEFT+
   #:+KEY-SMESSAGE+
   #:+KEY-SMOVE+
   #:+KEY-SNEXT+
   #:+KEY-SOPTIONS+
   #:+KEY-SPREVIOUS+
   #:+KEY-SPRINT+
   #:+KEY-SREDO+
   #:+KEY-SREPLACE+
   #:+KEY-SRIGHT+
   #:+KEY-SRSUME+
   #:+KEY-SSAVE+
   #:+KEY-SSUSPEND+
   #:+KEY-SUNDO+
   #:+KEY-SUSPEND+
   #:+KEY-UNDO+
   #:+KEY-MOUSE+
   #:+KEY-RESIZE+
   #:+KEY-EVENT+
   #:+KEY-MAX+
   #:+COLOR-BLACK+
   #:+COLOR-RED+
   #:+COLOR-GREEN+
   #:+COLOR-YELLOW+
   #:+COLOR-BLUE+
   #:+COLOR-MAGENTA+
   #:+COLOR-CYAN+
   #:+COLOR-WHITE+
   ;; grovel-types.lisp
   #:chtype
   #:mmask-t
   #:wchar-t
   ;; in-wch.lisp
   ;; in-wchstr.lisp
   ;; inch.lisp
   #:inch
   #:winch
   #:mvinch
   #:mvwinch
   ;; inchstr.lisp
   #:inchstr
   #:inchnstr
   #:winchstr
   #:winchnstr
   #:mvinchstr
   #:mvinchnstr
   #:mvwinchstr
   #:mvwinchnstr
   ;; initscr.lisp
   #:initscr
   #:endwin
   #:isendwin
   ;; inopts.lisp
   #:cbreak
   #:nocbreak
   #:echo
   #:noecho
   #:halfdelay
   #:intrflush
   #:keypad
   #:meta
   #:nodelay
   #:raw
   #:noraw
   #:noqiflush
   #:qiflush
   #:notimeout
   #:timeout
   #:wtimeout
   #:typeahead
   ;; ins-wch.lisp
   ;; ins-wstr.lisp
   ;; insch.lisp
   #:insch
   #:winsch
   #:mvinsch
   #:mvwinsch
   ;; insstr.lisp
   #:insstr
   #:insnstr
   #:winsstr
   #:winsnstr
   #:mvinsstr
   #:mvinsnstr
   #:mvwinsstr
   #:mvwinsnstr
   ;; instr.lisp
   #:instr
   #:innstr
   #:winstr
   #:winnstr
   #:mvinstr
   #:mvinnstr
   #:mvwinstr
   #:mvwinnstr
   ;; inwstr.lisp
   ;; kernel.lisp
   #:def-prog-mode
   #:def-shell-mode
   #:reset-prog-mode
   #:reset-shell-mode
   #:resetty
   #:savetty
   #:getsyx
   #:setsyx
   #:curs-set
   #:napms
   ;; key-defined.lisp
   #:key-defined
   ;; keybound.lisp
   #:keybound
   ;; keyok.lisp
   #:keyok
   ;; legacy-coding.lisp
   #:use-legacy-coding
   ;; legacy.lisp
   #:getattrs
   #:getbegx
   #:getbegy
   #:getcurx
   #:getcury
   #:getmaxx
   #:getmaxy
   #:getparx
   #:getpary
   ;; memleaks.lisp
   ;; mouse.lisp
   #:has-mouse
   #:getmouse
   #:ungetmouse
   #:mousemask
   #:wenclose
   #:mouse-trafo
   #:wmouse-trafo
   #:mouseinterval
   ;; move.lisp
   #:move
   #:wmove
   ;; new-pair.lisp
   #:alloc-pair
   #:find-pair
   #:free-pair
   ;; opaque.lisp
   #:is-cleared
   #:is-idcok
   #:is-idlok
   #:is-immedok
   #:is-keypad
   #:is-leaveok
   #:is-nodelay
   #:is-notimeout
   #:is-pad
   #:is-scollok
   #:is-subwin
   #:is-syncok
   #:wgetparent
   #:wgetdelay
   #:wgetscrreg
   ;; outopts.lisp
   #:clearok
   #:idlok
   #:idcok
   #:immedok
   #:leaveok
   #:setscrreg
   #:wsetscrreg
   #:scrollok
   #:nl
   #:nonl
   ;; overlay.lisp
   #:overlay
   #:overwrite
   #:copywin
   ;; pad.lisp
   #:newpad
   #:subpad
   #:prefresh
   #:pnoutrefresh
   #:pechochar
   ;; print.lisp
   #:mcprint
   ;; printw.lisp
   #:printw
   #:wprintw
   #:mvprintw
   #:mvwprintw
   ;; refresh.lisp
   #:refresh
   #:wrefresh
   #:wnoutrefresh
   #:doupdate
   #:redrawwin
   #:wredrawln
   ;; resizeterm.lisp
   #:is-term-resized
   #:resize-term
   #:resizeterm
   ;; scanw.lisp
   #:scanw
   #:wscanw
   #:mvscanw
   #:mvwscanw
   ;; scr-dump.lisp
   #:scr-dump
   #:scr-restore
   #:scr-init
   #:scr-set
   ;; scroll.lisp
   #:scroll
   #:scrl
   #:wscrl
   ;; slk.lisp
   #:slk-init
   #:slk-set
   #:slk-label
   #:slk-refresh
   #:slk-noutrefresh
   #:slk-clear
   #:slk-restore
   #:slk-touch
   #:slk-attron
   #:slk-attroff
   #:slk-attrset
   #:slk-attr-on
   #:slk-attr-off
   #:slk-attr-set
   #:slk-attr
   #:slk-color
   #:extended-slk-color
   ;; termattrs.lisp
   #:baudrate
   #:erasechar
   #:has-ic
   #:has-il
   #:killchar
   #:longname
   #:tedrm-attrs
   #:termattrs
   #:termname
   ;; termcap.lisp
   ;; terminfo.lisp
   ;; touch.lisp
   #:touchwin
   #:touchline
   #:untouchwin
   #:wtouchln
   #:is-linetouched
   #:is-wintouched
   ;; types.lisp
   #:ncurses-size-t
   #:attr-t
   #:cchar-t
   #:pdat
   #:win-st
   #:window
   #:mevent
   #:file-ptr
   ;; util.lisp
   #:unctrl
   #:wunctrl
   #:keyname
   #:key-name
   #:filter
   #:nofilter
   #:use-env
   #:use-tioctl
   #:putwin
   #:getwin
   #:delay-output
   #:flushnip
   ;; variables.lisp
   #:*curscr*
   #:*newscr*
   #:*stdscr*
   #:*ttytype*
   #:*COLORS*
   #:*COLORS-PAIRS*
   #:*COLS*
   #:*ESCDELAY*
   #:*LINES*
   #:*TABSIZE*
   ;; window.lisp
   #:newwin
   #:delwin
   #:mvwin
   #:subwin
   #:derwin
   #:mvderwin
   #:dupwin
   #:wsyncup
   #:syncok
   #:wcursyncup
   #:wsyncdown
   ;; wresize.lisp
   #:wresize
   ))
