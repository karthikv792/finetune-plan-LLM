

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(on b d)
(on c a)
(ontable d)
(ontable e)
(clear c)
(clear e)
)
(:goal
(and
(on a b)
(on b e)
(on c d)
(on d a))
)
)


