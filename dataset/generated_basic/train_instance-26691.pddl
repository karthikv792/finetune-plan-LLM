

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(on b e)
(ontable c)
(on d a)
(ontable e)
(clear c)
(clear d)
)
(:goal
(and
(on b d)
(on c a)
(on e c))
)
)


