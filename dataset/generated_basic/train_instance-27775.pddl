

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a e)
(on b d)
(on c a)
(ontable d)
(ontable e)
(clear b)
(clear c)
)
(:goal
(and
(on a e)
(on c a)
(on d c)
(on e b))
)
)


