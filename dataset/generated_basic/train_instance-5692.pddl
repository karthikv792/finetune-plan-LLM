

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b a)
(ontable c)
(on d b)
(on e c)
(clear d)
(clear e)
)
(:goal
(and
(on a b)
(on c d)
(on d a)
(on e c))
)
)


