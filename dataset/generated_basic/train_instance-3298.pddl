

(define (problem BW-rand-4)
(:domain blocksworld-4ops)
(:objects a b c d )
(:init
(handempty)
(ontable a)
(on b a)
(ontable c)
(on d b)
(clear c)
(clear d)
)
(:goal
(and
(on a d)
(on d c))
)
)


