

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a c)
(ontable b)
(ontable c)
(on d a)
(ontable e)
(clear b)
(clear d)
(clear e)
)
(:goal
(and
(on a d)
(on d e))
)
)


