

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(on b d)
(ontable c)
(ontable d)
(ontable e)
(clear a)
(clear c)
(clear e)
)
(:goal
(and
(on a d)
(on b a)
(on c e)
(on e b))
)
)


