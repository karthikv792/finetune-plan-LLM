

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(on b d)
(ontable c)
(on d c)
(ontable e)
(clear a)
(clear e)
)
(:goal
(and
(on b d)
(on c e)
(on d c))
)
)

