;15 задача  Определите функцию, вычисляющую скалярное произведение векторов, заданных списками целых чисел.
(defun scal-prod (lst1 lst2)
 ( if(or(null lst1)(null lst2)) 0
 (+(*(car lst1) (car lst2)) (scal-prod (cdr lst1) (cdr lst2)))))

(print(scal-prod '(3  4  2 ) '( 3  4  2)))
(print(scal-prod '(0 ) ' (3  4  2))) 


;Задача 3 Определите функцию, заменяющую в исходном списке все вхождения заданного значения другими

 (defun rep (lst  needch  (turn 0))
    ((lambda (first rest)
        (cond ((null lst) nil)
           (( eq first needch) (cons r (rep rest needch turn))
                     (t (cons first (rep rest needch turn))))
     )
     (car lst)(cdr lst)
   )
)
        
;(print (rep '(1 2 3 1 1) 1 'a))
;(A 2 3 A A) 
;(print (rep '((1 2 3) 4 5 6 1) 1 44))
;((44 2 3) 4 5 6 44)
;Задача 9

;Определите функцию, раздляющую список на 2 списка. С четными номерами и нечетными.

(defun separate (arr)
    ( 
         (lambda (first second rest) 
            (
                 cond
                    ( (null arr) (list NIL NIL))
                    ((null second) (list (list first) NIL))
                    (T (list 
                            (cons first (car (separate rest))) 
                            (cons second (cadr (separate rest))) 
                       )
                    )
             )
        ) (car arr) (cadr arr) (cddr arr)
    )
)



(print (separate `(a b c d e f g))
((A C E G) (B D F))
45. Напишите функцию (РАССТОЯНИЕ c1 c2), вычисляющую расстояние между городами.

(defun Road (city1 &optional(city2 `Saki)) 
  (sqrt (+ (expt (- (get city1 'x) (get city2 'x)) 2)
           (expt (- (get city1 'y) (get city2 'y)) 2))
  )
)
 
(defun City(Name-of-the-city &key x y ) 
    (setf (get Name-of-the-city 'x) x)
    (setf (get Name-of-the-city 'y) y)
  
)

(City  'Bali :x 1770 :y -445)
(City  'Saki :x -300 :y 50)


(print(Road 'Bali 'Saki))
2128.362 
(print(Road 'Saki ))
0
(print(Road 'Saki 'Bali))
2128.362 
