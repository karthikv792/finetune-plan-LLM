

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(ontable b)
(on c b)
(on d e)
(on e a)
(clear c)
(clear d)
)
(:goal
(and
(on a c)
(on b e)
(on c d)
(on e a))
)
)


