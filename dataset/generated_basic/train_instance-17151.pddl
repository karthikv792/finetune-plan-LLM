

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a d)
(on b c)
(ontable c)
(on d e)
(on e b)
(clear a)
)
(:goal
(and
(on a e)
(on d c)
(on e b))
)
)


