

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b c)
(on c d)
(ontable d)
(on e a)
(clear b)
(clear e)
)
(:goal
(and
(on a c)
(on c b)
(on d e)
(on e a))
)
)


