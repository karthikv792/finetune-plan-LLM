

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b d)
(ontable c)
(on d c)
(on e b)
(clear a)
(clear e)
)
(:goal
(and
(on c a)
(on d b)
(on e c))
)
)


