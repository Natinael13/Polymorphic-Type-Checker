;; step 5
;;(check-type 3 int)
;;(check-type #t bool)
;;(check-type 'hello sym)

;; step 6
;;(check-type (if #t 1 0) int)
;;(check-type (if #f #t #f) bool)
;;(check-type-error (if 5 1 0))
;;(check-type-error (if #t #f 0))

;; step 7
;;(check-type + (int int -> int))
;;(check-type-error y)

;; step 9
;;(val testint 9)
;;(val testbool #t)
;;(check-type testint int)
;;(check-type testbool bool)

;; step 10
;;(check-type (+ 1 1) int)
;;(check-type ((@ = bool) #t #f) bool)
;;(check-type-error (+ #f 1))
;;(check-type-error (+ 1))

;; step 11
;;(check-type (let ([x (+ 1 1)]) x) int)
;;(check-type (let ([z (if #f #f #f)]) z) bool)
;;(check-type-error (let ([x k]) x))

;; step 12
;;(check-type (lambda ([x : int]) (+ 1 x)) (int -> int))
;;(check-type (lambda ([x : int]) #t) (int -> bool))
;;(check-type-error (lambda ([x : int]) k))

;; step 13
;;Set
;;(val settester 10)
;;(check-type (set settester 1) int)
;;(check-type-error (set settester #f))
;;(check-type-error (set unboundvar #t))
;;While
;;(check-type (while #t (if #t 1 0)) unit)
;;(check-type-error (while 10 10))
;;(check-type-error (while 10 k))
;;(check-type-error (while 10 (if 5 1 0)))
;;Begin
;;(check-type (begin #t 5) int)
;;(check-type (begin 5 #t) bool)
;;(check-type-error (begin k #t))

;;Step 14
;;(check-type (let* ([x (+ 1 1)]) x) int)
;;(check-type (let* ([z (if #f #f #f)]) z) bool)
;;(check-type-error (let* ([x k]) x))
;;(check-type-error (let* ([x (+ 1 1)] [y k]) x))

;;Step 15
;;(check-type (letrec [[[x : int] (+ 1 1)]] x) int)
;;(check-type (letrec [[[z : bool] (if #f #f #f)]] z) bool)
;;(check-type (letrec [[[x : int] (+ 1 1)] [[b : int] (+ x 1)]] b) int)
;;(check-type-error (letrec [[[x : int] k]] x))
;;(check-type-error (letrec [[[x : int] (+ 1 1)] [[y : int] k]] x))
;;(check-type-error (letrec [[[x : int] (+ 1 1)] [[b : int] (+ k 1)]] b))

;;step 16
;;val-rec
;;(val-rec [vrint : int] (+ 1 1)) 
;;(val-rec [vrbool : int] (if #f #f #f))passed-comment-to-avoid-error
;;(check-type vrint int)
;;(check-type-error vrbool) passed 
;;define
;;(define int defineInt ([x : int] [y : int]) (+ x y))
;;(define int defineInt ([x : int] [y : int]) #t) passed
;;(check-type defineInt (int int -> int))
;;(check-type (defineInt 6 4) int)
;;(check-type-error (defineInt #t 4))

;;step 17
;;tyapply
;;(check-type ((@ = bool) #t #f) bool)
;;(check-type-error ((@ + int) 1 1))
;;tylambda
;;(type-lambda (x-'a) (lambda (x) x))
;;(check-type (type-lambda ['a] (lambda ([x : 'a]) x)) int)
;;not enough time











