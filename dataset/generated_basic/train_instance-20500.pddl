

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a c)
(ontable b)
(on c d)
(on d e)
(on e b)
(clear a)
)
(:goal
(and
(on a e)
(on b d)
(on c a)
(on d c))
)
)


