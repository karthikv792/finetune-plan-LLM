

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a e)
(ontable b)
(on c b)
(ontable d)
(ontable e)
(clear a)
(clear c)
(clear d)
)
(:goal
(and
(on a e)
(on b d)
(on c a)
(on e b))
)
)


