(in-package #:binding)

(defun initialization-demo ()
  (let ((stdscr (initscr)))
    (clear)
    (raw)
    (keypad stdscr t)
    (noecho)
    (printw (format nil "Type any character to see it in bold ~%"))
    (let ((ch (getch)))
      (printw "The pressed key is ")
      (attron +a-bold+)
      (printw "%c" :char ch)
      (attroff +a-bold+))
    (refresh)
    (getch)
    (endwin)))
