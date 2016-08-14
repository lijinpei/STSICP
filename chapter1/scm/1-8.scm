(define (abs x) (if (< x 0) (- x) x))
(define (delta-relative-close-enough? old-guess guess) (< (abs (- old-guess guess)) (* old-guess 0.0001)))
(define (improve x y) (/ (+ (/ x (* y y)) (* 2 y)) 3))
(define (cube-root-iter old-x x y) (if (delta-relative-close-enough? old-x x) x (cube-root-iter x (improve y x) y)))
(define (cube-root y) (cube-root-iter 0 1.0 y))
(cube-root 27)
(cube-root 3)
(cube-root (* 3 3 3))