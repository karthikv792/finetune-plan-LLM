

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a d)
(ontable b)
(ontable c)
(on d c)
(on e b)
(clear a)
(clear e)
)
(:goal
(and
(on b c)
(on c a)
(on d e)
(on e b))
)
)


