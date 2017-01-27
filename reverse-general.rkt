(DEFINE (reverse-general L)
  (COND
    ((NULL? L) L)
    ((LIST? (CAR L))
     (append (reverse-general (CAR L)) (CDR L))
    )
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
         ((NULL? L2)
          (COND
           ((NULL? (CDR L1)) (CAR L1))
           ((<(CAR L1) (min-above-min (CDR L1) L2)) (CAR L1))
           (ELSE
            (min-above-min (CDR L1) L2))
           )
          )
         (ELSE
          (min-above-min 
           (CONS
            (COND
              ((NULL? (CDR L1)) #F)
              ((> (CAR L1) (min-above-min L2 (LIST))) (CAR L1))
              (ELSE
               (min-above-min (CDR L1) L2))
            ) (LIST)
           ) (LIST))
          )
         )
        )
(DEFINE (greater-than L a)
        (COND
         ((NULL? L) #f)
         ((NOT (NUMBER? (CAR L)) (greater-than (CDR L) a)))
         ((< (CAR L) a) (greater-than (CDR L) a))
         (ELSE
          (CONS (CAR L) (greater-than (CDR L) a))
         )
        )
       )