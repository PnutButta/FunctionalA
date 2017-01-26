(DEFINE (reverse-general L)
  (COND
    ((NULL? L) L)
    ((LIST? L)
     (append (reverse-general (CDR L))
             (LIST (reverse-general (CAR L)))
     )
    )
     (ELSE L)
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
          (+ (CAR L) (sum-up-numbers-general (CDR L))))
         ((LIST? (CAR L))
           (+ 0 (sum-up-numbers-general (CAR L)) (sum-up-numbers-general (CDR L)))
         )
         (ELSE
          (+ 0 (sum-up-numbers-general (CDR L))))
         )
        )
(DEFINE (min-above-min L1 L2)
        (COND
         ((NULL? L1) #F)
         ((NOT (NUMBER? (CAR L1))) (min-above-min (CDR L1) L2))
         ((NULL? L2)
          (COND
           ((NULL? (CDR L1)) (CAR L1))
           ((NOT (NUMBER? (CAR L2))) (min-above-min L1 (CDR L2)))
           ((< (CAR L1) (min-above-min (CDR L1) L2)) (CAR L1))
           (ELSE
            (min-above-min (CDR L1) L2))
           )
          )
         (ELSE
          (min-above-min 
           (CONS
            (COND
              ((> (CAR L1) (min-above-min L2 (LIST))) (CAR L1))
              (ELSE
               (min-above-min (CDR L1) L2))
            ) (LIST)
           ) (LIST))
          )
         )
        )