

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b d)
(ontable c)
(on d a)
(on e b)
(clear c)
(clear e)
)
(:goal
(and
(on b a)
(on c e)
(on d b)
(on e d))
)
)


