

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(ontable b)
(ontable c)
(on d e)
(on e c)
(clear a)
(clear d)
)
(:goal
(and
(on a b)
(on b e)
(on c a))
)
)


