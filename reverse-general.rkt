(DEFINE (reverse-general L)
  (COND
    ((NULL? L) L)
    ((LIST? (CAR L))
        (reverse-general (CAR L)))
    (CONS (CAR L) (CDR (CDR L)))
    (ELSE reverse-general (CDR L))
  )
 )
(DEFINE (sum-up-numbers-simple L)
        (COND
         ((NULL? L) 0)
         ((NUMBER? (CAR L))
          (+ (CAR L) (sum-up-numbers-simple (CDR L))))
         (ELSE
          (+ 0 (sum-up-numbers-simple (CDR L))))
         )
        )
(DEFINE (sum-up-numbers-general L)
        (COND
         ((NULL? L) 0)
         )
        )