

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(ontable b)
(on c d)
(on d e)
(on e b)
(clear a)
(clear c)
)
(:goal
(and
(on a c)
(on b a)
(on c e)
(on d b))
)
)


