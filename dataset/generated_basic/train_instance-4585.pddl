

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b a)
(ontable c)
(on d c)
(on e b)
(clear d)
(clear e)
)
(:goal
(and
(on b c)
(on c e)
(on d a)
(on e d))
)
)


