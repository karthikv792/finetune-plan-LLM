

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a e)
(on b a)
(on c d)
(on d b)
(ontable e)
(clear c)
)
(:goal
(and
(on a b)
(on b e)
(on d c)
(on e d))
)
)


