

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a d)
(on b c)
(on c e)
(ontable d)
(ontable e)
(clear a)
(clear b)
)
(:goal
(and
(on a c)
(on c e)
(on d b))
)
)


