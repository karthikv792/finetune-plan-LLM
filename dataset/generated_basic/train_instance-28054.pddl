

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b a)
(ontable c)
(on d e)
(ontable e)
(clear b)
(clear c)
(clear d)
)
(:goal
(and
(on b d)
(on d e)
(on e c))
)
)


