

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a e)
(ontable b)
(ontable c)
(on d b)
(on e c)
(clear a)
(clear d)
)
(:goal
(and
(on a b)
(on b c)
(on c e)
(on e d))
)
)


