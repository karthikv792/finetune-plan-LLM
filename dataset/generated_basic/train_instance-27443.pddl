

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
(on a e)
(on d b)
(on e c))
)
)


