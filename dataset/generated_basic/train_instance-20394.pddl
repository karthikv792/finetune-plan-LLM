

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a c)
(ontable b)
(ontable c)
(on d b)
(on e d)
(clear a)
(clear e)
)
(:goal
(and
(on a c)
(on b a)
(on e d))
)
)

