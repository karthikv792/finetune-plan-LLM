

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(ontable b)
(ontable c)
(ontable d)
(on e a)
(clear b)
(clear c)
(clear d)
(clear e)
)
(:goal
(and
(on b a)
(on c d)
(on d e)
(on e b))
)
)


