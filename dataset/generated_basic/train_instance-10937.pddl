

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(on b d)
(on c e)
(on d c)
(ontable e)
(clear a)
)
(:goal
(and
(on a b)
(on c e)
(on e d))
)
)


