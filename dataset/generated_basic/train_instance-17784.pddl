

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(ontable b)
(on c e)
(on d b)
(on e d)
(clear a)
(clear c)
)
(:goal
(and
(on b a)
(on c b)
(on d e)
(on e c))
)
)


