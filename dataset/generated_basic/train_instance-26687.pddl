

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a b)
(ontable b)
(ontable c)
(on d a)
(on e c)
(clear d)
(clear e)
)
(:goal
(and
(on a e)
(on b a))
)
)


