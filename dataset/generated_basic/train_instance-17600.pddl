

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a d)
(on b a)
(ontable c)
(on d c)
(on e b)
(clear e)
)
(:goal
(and
(on b e)
(on c a)
(on d c)
(on e d))
)
)


