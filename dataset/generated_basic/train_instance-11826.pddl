

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(ontable b)
(on c e)
(ontable d)
(on e d)
(clear a)
(clear c)
)
(:goal
(and
(on b d)
(on c a)
(on d c))
)
)

