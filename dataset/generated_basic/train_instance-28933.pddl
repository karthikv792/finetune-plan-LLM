

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(on b c)
(ontable c)
(on d e)
(on e a)
(clear d)
)
(:goal
(and
(on a e)
(on b a)
(on c b)
(on e d))
)
)


