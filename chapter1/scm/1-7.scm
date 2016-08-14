(define (abs x) (if (< x 0) (- x) x))
(define (square x) (* x x))
(define (relative-close-enough? guess x) (< (abs (- (square guess) x)) (* guess 0.0001)))
(define (delta-close-enough? old-guess guess) (< (abs (- old-guess guess)) 0.0001))
(define (delta-relative-close-enough? old-guess guess) (< (abs (- old-guess guess)) (* old-guess 0.0001)))

