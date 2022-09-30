

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(on b c)
(on c e)
(ontable d)
(on e d)
(clear a)
)
(:goal
(and
(on b e)
(on c a)
(on d c)
(on e d))
)
)


