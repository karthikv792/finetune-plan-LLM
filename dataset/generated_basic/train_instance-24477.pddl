

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a d)
(ontable b)
(ontable c)
(on d c)
(on e a)
(clear b)
(clear e)
)
(:goal
(and
(on a d)
(on c b)
(on d e)
(on e c))
)
)

