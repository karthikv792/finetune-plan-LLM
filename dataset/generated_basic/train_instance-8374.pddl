

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(ontable b)
(on c d)
(on d e)
(on e a)
(clear c)
)
(:goal
(and
(on b e)
(on c d)
(on e a))
)
)


