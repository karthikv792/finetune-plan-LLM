

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b c)
(on c e)
(ontable d)
(on e a)
(clear b)
(clear d)
)
(:goal
(and
(on a b)
(on b c)
(on c e)
(on e d))
)
)


