

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a d)
(on b a)
(on c b)
(ontable d)
(ontable e)
(clear c)
(clear e)
)
(:goal
(and
(on a b)
(on b e)
(on d a))
)
)


