

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b c)
(on c d)
(on d e)
(ontable e)
(clear a)
(clear b)
)
(:goal
(and
(on a c)
(on b d)
(on d a)
(on e b))
)
)


