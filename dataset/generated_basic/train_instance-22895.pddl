

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a c)
(on b d)
(ontable c)
(on d e)
(on e a)
(clear b)
)
(:goal
(and
(on b e)
(on c d)
(on d a)
(on e c))
)
)


