

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a e)
(ontable b)
(ontable c)
(ontable d)
(on e b)
(clear a)
(clear c)
(clear d)
)
(:goal
(and
(on a d)
(on b a)
(on d c)
(on e b))
)
)


