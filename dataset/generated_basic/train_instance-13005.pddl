

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(ontable b)
(ontable c)
(on d b)
(on e c)
(clear a)
(clear d)
(clear e)
)
(:goal
(and
(on b e)
(on c d)
(on d b)
(on e a))
)
)


