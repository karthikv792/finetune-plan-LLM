

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a e)
(ontable b)
(on c d)
(ontable d)
(on e c)
(clear a)
(clear b)
)
(:goal
(and
(on c d)
(on d b)
(on e a))
)
)

