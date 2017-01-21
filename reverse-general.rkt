(DEFINE (reverse-general L)
  (COND
    ((NULL? L) L)
    ((LIST? (CAR L))
        (reverse-general (CAR L)))
  )
)