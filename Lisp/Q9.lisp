(defun compactar (arr &aux temp)
  (setq temp '())
  (setq prev NIL)
  (setq cont 1)
  (dolist (i arr)
    (when (equal prev i)
      (incf cont)
    )
    (if prev
      (when (/= prev i)
        (when (equal cont 1)
          (push prev temp)
        )
        (when (> cont 1)
          (setq aux '())
          (push prev aux)
          (push cont aux)
          (setq temp (cons aux temp))
          (setq cont 1)
        )
      )
    )
    (setq prev i)
  )
  ; Acrescentar último item
  (when (equal cont 1)
    (push prev temp)
  )
  (when (> cont 1)
    (setq aux '())
    (push prev aux)
    (push cont aux)
    (setq temp (cons aux temp))
    (setq cont 1)
  )
  (nreverse temp)
)