

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a d)
(on b e)
(ontable c)
(on d b)
(on e c)
(clear a)
)
(:goal
(and
(on a e)
(on d b)
(on e c))
)
)


