

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(ontable b)
(on c e)
(ontable d)
(on e a)
(clear c)
(clear d)
)
(:goal
(and
(on a e)
(on b a)
(on c b)
(on d c))
)
)


