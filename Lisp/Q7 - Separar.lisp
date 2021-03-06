(defun separate (arr &aux temp)
  (setq temp '())
  (setq even '())
  (setq odd '())
  (dolist (i arr)                          ; for a in list_a
    (when (equal (mod i 2) 0)              ; if a % 2 == 0
      (push i even))
    (when (equal (mod i 2) 1)              ; if a % 2 == 1
      (push i odd))
  )
  (setq temp (cons (nreverse odd) temp))
  (setq temp (cons (nreverse even) temp))
  (nreverse temp)
)
