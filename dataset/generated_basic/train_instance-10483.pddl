

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(ontable b)
(on c a)
(on d b)
(on e d)
(clear c)
(clear e)
)
(:goal
(and
(on a c)
(on b d)
(on d a)
(on e b))
)
)


