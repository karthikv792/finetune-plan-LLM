

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b c)
(ontable c)
(on d e)
(on e b)
(clear a)
(clear d)
)
(:goal
(and
(on a e)
(on b a)
(on c d)
(on e c))
)
)


