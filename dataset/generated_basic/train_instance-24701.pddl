

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a d)
(on b a)
(on c b)
(ontable d)
(on e c)
(clear e)
)
(:goal
(and
(on b e)
(on c a)
(on d c))
)
)


