

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(ontable b)
(on c a)
(on d e)
(ontable e)
(clear b)
(clear c)
(clear d)
)
(:goal
(and
(on a c)
(on b d)
(on c b))
)
)


