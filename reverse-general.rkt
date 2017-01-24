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
         ((NUMBER? (CAR L))
          (+ (CAR L) (sum-up-numbers-simple (CDR L))))
         ((LIST? (CAR L))
           ((NULL? (CAR L)) 0)
           (+ (CAR (CAR L)) (sum-up-numbers-simple (CDR (CAR L))))
          )
         (ELSE
          (+ 0 (sum-up-numbers-simple (CDR L))))
         )
        )
(DEFINE (min-above-min L1 L2)
        (COND
         ((NULL? L1) 0)
         ((NULL? L2) (sum-up-numbers-simple '(L1)))
         
         )
        )