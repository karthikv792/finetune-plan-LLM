

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a c)
(ontable b)
(on c b)
(ontable d)
(on e d)
(clear a)
(clear e)
)
(:goal
(and
(on b d)
(on d a)
(on e c))
)
)


