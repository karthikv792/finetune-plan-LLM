

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a c)
(on b e)
(ontable c)
(ontable d)
(on e d)
(clear a)
(clear b)
)
(:goal
(and
(on b d)
(on d c)
(on e a))
)
)


