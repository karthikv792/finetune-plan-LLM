

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b c)
(on c e)
(on d b)
(ontable e)
(clear a)
(clear d)
)
(:goal
(and
(on c a)
(on d c)
(on e d))
)
)


