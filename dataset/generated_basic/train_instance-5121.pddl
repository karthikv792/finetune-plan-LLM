

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a d)
(ontable b)
(on c a)
(ontable d)
(on e b)
(clear c)
(clear e)
)
(:goal
(and
(on a b)
(on b e)
(on c d)
(on e c))
)
)


