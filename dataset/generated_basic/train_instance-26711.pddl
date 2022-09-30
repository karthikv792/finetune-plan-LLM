

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a c)
(on b e)
(on c d)
(ontable d)
(on e a)
(clear b)
)
(:goal
(and
(on b c)
(on c d)
(on d a)
(on e b))
)
)


