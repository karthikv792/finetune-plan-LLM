

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a d)
(ontable b)
(on c e)
(on d b)
(ontable e)
(clear a)
(clear c)
)
(:goal
(and
(on a c)
(on b e)
(on d a))
)
)


