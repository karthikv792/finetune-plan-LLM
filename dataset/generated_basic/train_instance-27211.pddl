

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b c)
(ontable c)
(on d a)
(on e d)
(clear b)
(clear e)
)
(:goal
(and
(on a c)
(on c b)
(on e a))
)
)


