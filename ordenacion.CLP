(defrule ini
(vector $?x)
=>
(assert (vector-aux ?x)))
(defrule ordenar
?f <- (vector-aux $?b ?q1 ?w2&:(< ?w2 ?q1) $?e)
=>
(retract ?f)
(assert (vector-aux $?b ?w2 ?q1 $?e)))
(defrule fin
(not (vector-aux $?b ?q1 ?w2&:(< ?w2 ?q1) $?e))
(vector $?x)
(vector-aux $?y)
=>
(printout t "La ordenacion de " ?x " es " ?y crlf))