

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a e)
(on b a)
(ontable c)
(on d b)
(ontable e)
(clear c)
(clear d)
)
(:goal
(and
(on a e)
(on b d)
(on d c)
(on e b))
)
)

