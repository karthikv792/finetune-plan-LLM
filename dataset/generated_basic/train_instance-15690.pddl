

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b e)
(on c a)
(ontable d)
(on e d)
(clear b)
(clear c)
)
(:goal
(and
(on a b)
(on b d)
(on d e)
(on e c))
)
)


