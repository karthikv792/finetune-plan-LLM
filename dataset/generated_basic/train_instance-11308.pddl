

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a e)
(ontable b)
(on c b)
(ontable d)
(on e d)
(clear a)
(clear c)
)
(:goal
(and
(on b d)
(on c b)
(on d a))
)
)


