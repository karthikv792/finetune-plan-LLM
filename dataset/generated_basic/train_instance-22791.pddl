

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(ontable b)
(on c e)
(on d a)
(ontable e)
(clear c)
(clear d)
)
(:goal
(and
(on c e)
(on d c)
(on e a))
)
)


