

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a c)
(ontable b)
(on c e)
(on d a)
(ontable e)
(clear b)
(clear d)
)
(:goal
(and
(on a d)
(on b a)
(on c e))
)
)

