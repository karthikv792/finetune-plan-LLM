

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(ontable b)
(ontable c)
(on d a)
(ontable e)
(clear c)
(clear d)
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


