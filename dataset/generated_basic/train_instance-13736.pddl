

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(ontable b)
(ontable c)
(on d b)
(on e d)
(clear a)
(clear c)
(clear e)
)
(:goal
(and
(on a b)
(on b c)
(on e d))
)
)


