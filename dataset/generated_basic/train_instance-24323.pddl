

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a e)
(on b d)
(ontable c)
(ontable d)
(ontable e)
(clear a)
(clear b)
(clear c)
)
(:goal
(and
(on c b)
(on d e))
)
)

