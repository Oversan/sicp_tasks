(define (p) (p))
(define (test x y)
        (if (= x 0)
          0
          y)
)

(test 0 (p))

; При нормальном порядке высислений в функцию test подставляются оба аргумента 'x' и 'y' без их непосрественного вычисления, поэтому в результате (test 0 (p)) будет 0
; При апликативном порядке сразу вычисляются аргументы 'x' и 'y', где вычисление 'y' вызовет бесконечную рекурсию