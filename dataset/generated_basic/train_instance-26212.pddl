

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b a)
(ontable c)
(on d e)
(on e b)
(clear c)
(clear d)
)
(:goal
(and
(on a e)
(on b d)
(on c b)
(on e c))
)
)

