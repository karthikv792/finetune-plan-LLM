

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(ontable b)
(on c e)
(ontable d)
(on e a)
(clear b)
(clear c)
(clear d)
)
(:goal
(and
(on a d)
(on b c)
(on e b))
)
)


