

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a c)
(on b e)
(ontable c)
(ontable d)
(ontable e)
(clear a)
(clear b)
(clear d)
)
(:goal
(and
(on a d)
(on b a)
(on e c))
)
)


