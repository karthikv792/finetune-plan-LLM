

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a d)
(ontable b)
(ontable c)
(on d b)
(ontable e)
(clear a)
(clear c)
(clear e)
)
(:goal
(and
(on a b)
(on b d)
(on c a)
(on d e))
)
)


