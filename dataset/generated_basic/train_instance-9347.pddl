

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(ontable b)
(on c b)
(on d a)
(on e d)
(clear c)
(clear e)
)
(:goal
(and
(on b d)
(on c b)
(on e c))
)
)


