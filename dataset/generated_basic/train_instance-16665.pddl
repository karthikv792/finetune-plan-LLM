

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b d)
(ontable c)
(on d e)
(ontable e)
(clear a)
(clear b)
(clear c)
)
(:goal
(and
(on a e)
(on c d)
(on d b)
(on e c))
)
)


