

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(ontable a)
(on b a)
(ontable c)
(ontable d)
(on e d)
(clear b)
(clear c)
(clear e)
)
(:goal
(and
(on a d)
(on b c)
(on c a)
(on d e))
)
)

