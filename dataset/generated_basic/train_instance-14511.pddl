

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a d)
(on b a)
(ontable c)
(ontable d)
(on e c)
(clear b)
(clear e)
)
(:goal
(and
(on a c)
(on e d))
)
)

