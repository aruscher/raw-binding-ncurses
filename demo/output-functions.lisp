(in-package #:binding)

(defun output-functions-demo ()
  (let ((msg "Just a string")
        (row 0)
        (col 0))
    (initscr)
    (clear)
    (refresh)
    (setf row (getmaxy *stdscr*))
    (setf col (getmaxx *stdscr*))
    (mvprintw (floor (/ row 2))
              (floor (/ (- col (length msg)) 2))
              "%s" :string msg)
    (mvprintw (- row 2)
             0
             (format nil "This screen has %d rows and %d column~%")
             :int row :int col)
    (printw "Try resizing your window (if possible) and then run this program agian.")
    (refresh)
    (getch)
    (endwin)))