

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b e)
(ontable c)
(on d a)
(ontable e)
(clear b)
(clear c)
(clear d)
)
(:goal
(and
(on d c)
(on e a))
)
)


