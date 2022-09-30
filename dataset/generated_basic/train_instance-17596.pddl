

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a c)
(ontable b)
(on c b)
(on d a)
(on e d)
(clear e)
)
(:goal
(and
(on c a)
(on e b))
)
)


