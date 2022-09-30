

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a c)
(ontable b)
(on c e)
(on d b)
(on e d)
(clear a)
)
(:goal
(and
(on a e)
(on c b)
(on d a)
(on e c))
)
)


