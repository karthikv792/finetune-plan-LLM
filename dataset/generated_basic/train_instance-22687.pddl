

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b e)
(ontable c)
(on d c)
(on e a)
(clear b)
(clear d)
)
(:goal
(and
(on a c)
(on b e)
(on d b)
(on e a))
)
)

