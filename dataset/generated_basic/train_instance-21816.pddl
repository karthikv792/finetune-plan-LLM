

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a d)
(ontable b)
(on c a)
(on d b)
(ontable e)
(clear c)
(clear e)
)
(:goal
(and
(on b a)
(on c e)
(on e b))
)
)


