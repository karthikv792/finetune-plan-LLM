

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a d)
(ontable b)
(on c e)
(on d b)
(on e a)
(clear c)
)
(:goal
(and
(on b d)
(on c a)
(on e b))
)
)


