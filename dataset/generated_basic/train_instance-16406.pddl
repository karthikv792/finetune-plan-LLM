

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a e)
(on b d)
(ontable c)
(on d c)
(on e b)
(clear a)
)
(:goal
(and
(on a e)
(on c a)
(on e b))
)
)


