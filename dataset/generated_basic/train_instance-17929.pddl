

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a e)
(on b a)
(ontable c)
(ontable d)
(on e d)
(clear b)
(clear c)
)
(:goal
(and
(on b d)
(on c a)
(on d c))
)
)


