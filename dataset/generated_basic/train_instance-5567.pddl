

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b e)
(ontable c)
(ontable d)
(ontable e)
(clear a)
(clear b)
(clear c)
(clear d)
)
(:goal
(and
(on a b)
(on b e)
(on d a)
(on e c))
)
)

