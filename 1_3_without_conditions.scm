(define (min-of-two a b) (- (/ (+ a b) 2) (/ (abs(- a b)) 2)))
(define (max-of-two a b) (+ (/ (+ a b) 2) (/ (abs(- a b)) 2)))
(define (sqr a) (* a a))

(define (sqr-of-two-max x y z)
        (define (max) (max-of-two (max-of-two x y) (max-of-two y z)))
        (define (min) (min-of-two (min-of-two x y) (min-of-two y z)))
        (define (sum) (+ x y z))

        (+ (sqr(max)) (sqr(- (sum) (max) (min))))
)