

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(ontable b)
(on c d)
(ontable d)
(on e c)
(clear a)
(clear b)
(clear e)
)
(:goal
(and
(on b d)
(on c a)
(on e c))
)
)


