

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a e)
(ontable b)
(ontable c)
(ontable d)
(on e c)
(clear a)
(clear b)
(clear d)
)
(:goal
(and
(on b e)
(on c d))
)
)


