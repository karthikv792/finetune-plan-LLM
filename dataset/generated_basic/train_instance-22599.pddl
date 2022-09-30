

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(on b d)
(on c a)
(ontable d)
(on e c)
(clear e)
)
(:goal
(and
(on a e)
(on b a)
(on e d))
)
)


