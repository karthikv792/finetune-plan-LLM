

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a e)
(on b a)
(ontable c)
(ontable d)
(on e c)
(clear b)
(clear d)
)
(:goal
(and
(on b d)
(on d a)
(on e c))
)
)


