

(define (problem BW-rand-4)
(:domain blocksworld-4ops)
(:objects a b c d )
(:init
(handempty)
(ontable a)
(on b c)
(on c a)
(on d b)
(clear d)
)
(:goal
(and
(on a b)
(on c d)
(on d a))
)
)


