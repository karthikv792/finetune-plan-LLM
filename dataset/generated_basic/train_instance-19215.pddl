

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(ontable b)
(on c a)
(ontable d)
(ontable e)
(clear b)
(clear c)
(clear d)
(clear e)
)
(:goal
(and
(on a d)
(on b a)
(on c b)
(on e c))
)
)

