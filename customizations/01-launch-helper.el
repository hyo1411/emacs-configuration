;;; Misc --- Summary
;;; Commentary:
;;; Code:

(defun get-frame-name (&optional frame)
  "Return the string that names FRAME (a frame).  Default is selected frame."
  (unless frame (setq frame  (selected-frame)))
  (if (framep frame)
      (cdr (assq 'name (frame-parameters frame)))
    (error "Function `get-frame-name': Argument not a frame: `%s'" frame)))

(defun find-and-select-window-frame ()
  "Return a frame that can be use to create window frame."
  (let ((i 0)(windows-frame nil)
        (f1-frame nil)
        (frames (frame-list)))
    (while (and
            (not windows-frame)
            (<= i (length frames)))

      (let ((cur-frame (elt frames i)))
        (when (equal (framep cur-frame) 'w32)
          (setq windows-frame cur-frame))
        (when (and (equal (framep cur-frame) 't)
                   (equal (get-frame-name cur-frame) "F1"))
          (setq f1-frame cur-frame))
        )
      (setq i (1+ i)))
    (if  windows-frame
        (progn (select-frame windows-frame)
               't )
      (progn (select-frame f1-frame)
             nil )
      )
    )
  )


;;; 01-launch-helper.el ends here
