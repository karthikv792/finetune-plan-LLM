

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a c)
(on b d)
(on c e)
(ontable d)
(on e b)
(clear a)
)
(:goal
(and
(on a d)
(on b e)
(on c b)
(on d c))
)
)


