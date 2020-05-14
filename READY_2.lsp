;3. Определите функционал который применяет каждую функ-цию списка к списку х возвращает список, сформированный из результатов(defun list-to-list-function (lst1 lst2)
    (cond
         ((null (car lst1)) nil) 
         (t (cons (apply (car lst1) lst2)
                  (list-to-list-function (cdr lst1) lst2))))             
)

(print (list-to-list-function '(+ - * +) '(1 2 3 4 5))) 
;5 Определитефункциональныйпредикат(НЕКОТОРЫй пред список),которыйистинен, когда, являющейся функциональным аргументом предикат пред истинен хотя бы для одного элемента списка список.

(defun some-1 (p li)
	(not (null (mapcan 
		#'(lambda (x) (if (funcall p x) (list t))) li)))
)

(print (some-1 'numberp '(5 e u 9)))
(print (some-1 'numberp '(5g e7 u r)))
(print (some-1 'numberp '((5 6 7) e u p)))
(print (some-1 'numberp '(5)))

;9 Напишите генератор порождения чисел Фибоначчи: 0, 1, 1, 2, 3, 5, ...

(defun fib ()
	(let ((prev-prev -1) (prev 0) (next 1))
		(lambda () 
			(if (= prev-prev -1)
				(setq prev-prev 0)
				(setq prev-prev prev prev next next (+ prev prev-prev))
			)
		)
	)
)

(print (setq f (fib)))
(print (funcall f))

(print (funcall f))

(print (funcall f))

(print (funcall f))

(print (funcall f))

(print (funcall f))
