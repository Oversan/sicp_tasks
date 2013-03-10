(define (square x) (* x x))

(define (good-enough? guess x)
        (< (abs (- (square guess) x)) 0.001))

(define (average x y)
    (/ (+ x y) 2))

(define (improve guess x)
    (average guess (/ x guess)))

;(define (sqrt-iter guess x)
;    (if (good-enough? guess x)
;      guess
;      (sqrt-iter (improve guess x)
;                 x)))

(define (new-if predicate then-clause else-clause)
      (cond (predicate then-clause)
        (else else-clause)))

(define (sqrt-iter guess x)
    (new-if (good-enough? guess x)
          guess
          (sqrt-iter (improve guess x)
                     x)))

(define (sqrt x)
    (sqrt-iter 1.0 x))


; Интерпретатор BiwaScheme. Используется апликативный порядок, поэтому в функции new-if всегда 
; будут вычисляться оба аргумента независимо от результата предиката.
; Это приводит к бесконечной рекурсии.
; if в отличии от new-if учитывает предикат и вычисляет соответствующее выражение 
; тем самым останавливая рекурсивные вычисления.