;;ArrayAt tests
(define int ArrayAtInt ([i : int] [a : (array int)])
    (array-at a i))

(check-function-type ArrayAtInt (int (array int) -> int))


(define bool ArrayAtBool ([i : int] [a : (array bool)])
    (array-at a i))

(check-function-type ArrayAtBool (int (array bool) -> bool))



;;ArrayPut tests
(define int ArrayPutInt ([i : int] [a : (array int)] [v : int])
    (array-put a i v))

(check-function-type ArrayPutInt (int (array int) int -> int))


(define bool ArrayPutBool ([i : int] [a : (array bool)] [v : bool])
    (array-put a i v))

(check-function-type ArrayPutBool (int (array bool) bool -> bool))



;;ArraySize tests
(define int ArraySizeInt ([a : (array int)])
    (array-size a))

(check-function-type ArraySizeInt ((array int) -> int))


(define int ArraySizeBool ([a : (array bool)])
    (array-size a))

(check-function-type ArraySizeBool ((array bool) -> int))



;;ArrayMake tests
(define (array int) ArrayMakeInt ([l : int] [init : int])
    (make-array l init))

(check-function-type ArrayMakeInt (int int -> (array int)))


(define (array bool) ArrayMakeBool ([l : int] [init : bool])
    (make-array l init))

(check-function-type ArrayMakeBool (int bool -> (array bool)))