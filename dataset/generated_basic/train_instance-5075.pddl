

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(on b e)
(ontable c)
(on d c)
(on e d)
(clear a)
)
(:goal
(and
(on a e)
(on b d)
(on c a)
(on e b))
)
)


