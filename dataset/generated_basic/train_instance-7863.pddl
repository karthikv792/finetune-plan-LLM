

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a e)
(on b a)
(ontable c)
(on d b)
(ontable e)
(clear c)
(clear d)
)
(:goal
(and
(on b e)
(on c a))
)
)


