

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(ontable b)
(on c d)
(on d b)
(ontable e)
(clear a)
(clear c)
(clear e)
)
(:goal
(and
(on b e)
(on c b)
(on d c)
(on e a))
)
)

