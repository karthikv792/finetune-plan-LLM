

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(ontable b)
(on c a)
(on d c)
(on e d)
(clear e)
)
(:goal
(and
(on b d)
(on c a)
(on d e)
(on e c))
)
)


