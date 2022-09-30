

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(ontable b)
(on c b)
(on d c)
(on e d)
(clear a)
(clear e)
)
(:goal
(and
(on a d)
(on b e)
(on c a))
)
)


