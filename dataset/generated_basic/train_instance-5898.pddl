

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b d)
(on c e)
(on d c)
(ontable e)
(clear a)
(clear b)
)
(:goal
(and
(on b c)
(on c a)
(on d e))
)
)


