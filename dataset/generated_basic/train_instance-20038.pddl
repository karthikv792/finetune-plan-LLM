

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a d)
(ontable b)
(on c b)
(on d c)
(ontable e)
(clear a)
(clear e)
)
(:goal
(and
(on b d)
(on c e)
(on d c)
(on e a))
)
)


