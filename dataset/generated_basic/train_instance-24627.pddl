

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a d)
(ontable b)
(on c b)
(on d e)
(on e c)
(clear a)
)
(:goal
(and
(on c a)
(on d c)
(on e b))
)
)


