

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(on b e)
(ontable c)
(ontable d)
(on e c)
(clear a)
(clear d)
)
(:goal
(and
(on c a)
(on e b))
)
)

