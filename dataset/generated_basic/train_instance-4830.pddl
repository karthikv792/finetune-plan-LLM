

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(on b e)
(on c d)
(ontable d)
(ontable e)
(clear a)
(clear c)
)
(:goal
(and
(on b c)
(on d b)
(on e a))
)
)


