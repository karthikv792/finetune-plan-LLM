

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a e)
(on b a)
(on c b)
(ontable d)
(ontable e)
(clear c)
(clear d)
)
(:goal
(and
(on a b)
(on b c)
(on d a)
(on e d))
)
)


