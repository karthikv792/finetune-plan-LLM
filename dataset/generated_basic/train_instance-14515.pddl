

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b e)
(ontable c)
(on d b)
(on e a)
(clear c)
(clear d)
)
(:goal
(and
(on b e)
(on c b)
(on d c))
)
)


