

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a c)
(on b d)
(ontable c)
(on d a)
(on e b)
(clear e)
)
(:goal
(and
(on a b)
(on b d)
(on c a)
(on e c))
)
)


