

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(on b e)
(on c d)
(on d a)
(ontable e)
(clear c)
)
(:goal
(and
(on a d)
(on b a)
(on d c)
(on e b))
)
)

