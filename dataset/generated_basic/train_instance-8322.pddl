

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a c)
(ontable b)
(on c e)
(ontable d)
(on e b)
(clear a)
(clear d)
)
(:goal
(and
(on a b)
(on b d)
(on c e)
(on d c))
)
)


