

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(on b c)
(on c e)
(on d a)
(ontable e)
(clear d)
)
(:goal
(and
(on a c)
(on c d)
(on d b))
)
)


