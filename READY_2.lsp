;1 Определите FUNCALL через функционал APPLY.

(defun funcall-1 (f &rest x) (apply f x))

(print (funcall-1 '+ 2 3 4))
9
;5 Определитефункциональныйпредикат(НЕКОТОРЫй пред список),которыйистинен, когда, являющейся функциональным аргументом предикат пред истинен хотя бы для одного элемента списка список.

(defun some-1 (p li)
	(not (null (mapcan 
		#'(lambda (x) (if (funcall p x) (list t))) li)))
)

(print (some-1 'numberp '(5 e u 9)))
T
(print (some-1 'numberp '(5g e7 u r)))
NIL
(print (some-1 'numberp '((5 6 7) e u p)))
NIL
(print (some-1 'numberp '(5)))
T
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
0
(print (funcall f))
1
(print (funcall f))
1
(print (funcall f))
2
(print (funcall f))
3
(print (funcall f))
5
