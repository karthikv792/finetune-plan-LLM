

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a d)
(on b e)
(ontable c)
(on d c)
(ontable e)
(clear a)
(clear b)
)
(:goal
(and
(on b a)
(on d b)
(on e c))
)
)


