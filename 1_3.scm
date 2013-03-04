(define (sum-sqrs-of-highest-nums x y z)
    (cond ((and (<= x y) (<= x z))
            (+ (* y y) (* z z)))
          ((and (<= y x) (<= y z))
            (+ (* x x) (* z z)))
          ((and (<= z y) (<= z x))
            (+ (* y y) (* x x)))
    )
)