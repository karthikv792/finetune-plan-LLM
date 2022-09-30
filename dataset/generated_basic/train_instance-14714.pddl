

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(on b e)
(ontable c)
(on d c)
(ontable e)
(clear a)
(clear d)
)
(:goal
(and
(on a b)
(on b c)
(on c d)
(on e a))
)
)


