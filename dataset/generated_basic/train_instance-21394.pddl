

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(on b d)
(on c e)
(ontable d)
(on e a)
(clear c)
)
(:goal
(and
(on a b)
(on b e)
(on c a)
(on d c))
)
)

