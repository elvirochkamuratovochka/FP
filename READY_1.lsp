;задача 12 Определите функцию, заменяющую в исходном списке два подряд идущих одинаковых элемента одним.

(defun dr2 (li)
	(if (null li)
		nil
		(( lambda (first second restail)
			(if (equal first second)
				restail 
				(cons first restail)
			)
		) (car li) (cadr li) (dr2 (cdr li)) ) 
	)
)

(print (dr2 '(1 1 2 1 2 1)))
(print (dr2 '(2 2 1 2 1 2)))

;Задача 30 Определите функцию, удаляющие в исходном списке все повторные вхождения элементов.

(defun prefix (lst)
   (cond ((null lst) nil)
         ((atom lst) lst)
         (t (list (prefix (cadr lst)) (prefix (car lst) ) (prefix (caddr lst)))
         )
    )
 )



(print  (prefix '((-2 + 2 ) *  4 )))
(print  (prefix '((7 + -3 ) *  6 )))
(print  (prefix '((1 + 15 ) *  2 )))


;Задача 3 Определите функцию, заменяющую в исходном списке все вхождения заданного значения другими
(defun rep (lst w r)
  (cond ((null lst) nil)
        ((equal (car lst) w) (cons r (rep (cdr lst) w r)))
        ((listp (car lst)) (cons (rep (car lst) w r) (rep (cdr lst) w r)))
        (t (cons (car lst) (rep (cdr lst) w r))))) 


        
(print (rep '(1 2 3 1 1) 1 'a))

(print (rep '((1 2 3) 4 5 6 1) 1 44))

;18/Определите предикат, проверяющий, является ли аргумент одноуровневым
;списком.
(defun is_linear (lst)
	(cond
		((null lst) T)
		((atom (car lst)) (is_linear(cdr lst)))
		(T nil)))

(print (is_linear `(1 2 2 5)))
(print (is_linear `(1 (2 3) 5)))

;45. Напишите функцию (РАССТОЯНИЕ c1 c2), вычисляющую расстояние между городами.

;15 задача  Определите функцию, вычисляющую скалярное произведение векторов, заданных списками целых чисел.
