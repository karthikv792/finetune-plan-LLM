

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a e)
(on b a)
(ontable c)
(on d c)
(ontable e)
(clear b)
(clear d)
)
(:goal
(and
(on a c)
(on b d)
(on c e)
(on e b))
)
)


