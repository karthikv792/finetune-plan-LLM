

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a c)
(ontable b)
(ontable c)
(ontable d)
(on e a)
(clear b)
(clear d)
(clear e)
)
(:goal
(and
(on c b)
(on d a)
(on e c))
)
)

