

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b e)
(ontable c)
(on d c)
(on e d)
(clear a)
(clear b)
)
(:goal
(and
(on a c)
(on c d)
(on d b)
(on e a))
)
)

