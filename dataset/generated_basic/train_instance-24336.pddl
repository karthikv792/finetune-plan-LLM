

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(ontable b)
(on c d)
(ontable d)
(ontable e)
(clear a)
(clear c)
(clear e)
)
(:goal
(and
(on a b)
(on c a)
(on d c)
(on e d))
)
)


