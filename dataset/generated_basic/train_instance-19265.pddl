

(define (problem BW-rand-5)
(:domain blocksworld-4ops)
(:objects a b c d e )
(:init
(handempty)
(on a d)
(ontable b)
(ontable c)
(on d e)
(on e b)
(clear a)
(clear c)
)
(:goal
(and
(on a e)
(on d a)
(on e b))
)
)


