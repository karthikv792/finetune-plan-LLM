

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b c)
(on c a)
(ontable d)
(ontable e)
(clear b)
(clear d)
(clear e)
)
(:goal
(and
(on a d)
(on b c)
(on c e)
(on e a))
)
)

