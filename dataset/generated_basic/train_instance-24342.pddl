

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a d)
(ontable b)
(on c b)
(ontable d)
(on e c)
(clear a)
(clear e)
)
(:goal
(and
(on b e)
(on c a)
(on d b)
(on e c))
)
)


