

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a e)
(on b a)
(on c d)
(ontable d)
(ontable e)
(clear b)
(clear c)
)
(:goal
(and
(on a d)
(on c b)
(on e c))
)
)


