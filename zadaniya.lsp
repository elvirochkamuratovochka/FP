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
(1 2 1 2 1)
(print (dr2 '(2 2 1 2 1 2)))
(2 1 2 1 2)

;Задача 30 Определите функцию, удаляющие в исходном списке все повторные вхождения элементов.
(defun pref (lst)
   (cond ((null lst) nil)
         ((atom lst) lst)
         (t (list (prefix (cadr lst)) (pref (car lst) ) (prefix (caddr lst)))
         )
    )
 )


(print  (calculate '((-2 + 9 ) *  4 )))
(print  (prefix '((-2 + 9 ) *  4 )))
(print  (calculate '((7 + -3 ) *  6 )))
(print  (prefix '((7 + -3 ) *  6 )))


;Задача 3 Определите функцию, заменяющую в исходном списке все вхождения заданного значения другими
(defun rep (lst w r)
  (cond ((null lst) nil)
        ((equal (car lst) w) (cons r (rep (cdr lst) w r)))
        ((listp (car lst)) (cons (rep (car lst) w r) (rep (cdr lst) w r)))
        (t (cons (car lst) (rep (cdr lst) w r))))) 


        
(print (rep '(1 2 3 1 1) 1 'a))
(A 2 3 A A) 
(print (rep '((1 2 3) 4 5 6 1) 1 44))
((44 2 3) 4 5 6 44)


;Задача 9  Определите функцию, раздляющую список на 2 списка. С четными номерами и нечетными.


(defun str (ls)
               ((lambda (el-cddr) 
                (cond ((null (car ls)) ls)
                    (t 
                        (list
                            (cons (car ls) (car(str el-cddr)))
                            (cons (cadr ls) (car(str el-cddr)))
                        )
                    )
                ) ) (cddr ls) )
)

(print (str '(1 7 6 4 53 6 11 67)))
(print (str '(h e l l o)))
(print (str `(a b c d e f g))

;45. Напишите функцию (РАССТОЯНИЕ c1 c2), вычисляющую расстояние между городами.

;15 задача  Определите функцию, вычисляющую скалярное произведение векторов, заданных списками целых чисел.
