

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(on b d)
(ontable c)
(on d e)
(on e c)
(clear a)
)
(:goal
(and
(on b d)
(on d c)
(on e b))
)
)

