(define (even? x)
  (= (remainder x 2) 0))


;This method is based on repeatedly squaring the base and dividing the exponent by 2.
;If the exponent is odd, we subtract one from it and multiply the total by the current base.
;Then at the end we multiply the base into the total again and that is our result
(define (power-iter base e total)
  (cond 
    ((= e 1) (* base total))
    ((even? e) (power-iter (* base base) (/ e 2) total))
    (else (power-iter base (- e 1) (* total base)))))

(define (power b e) (power-iter b e 1))
