(defrule inicial
(initial-fact)
=>
(printout t "Menu" crlf)

(printout t " 1- Triangulos x angulos" crlf)
(printout t " 2- Triangulos x lados" crlf)
(assert (opcion (read)))
)
(defrule lados
(opcion 1)
=>
(printout t " OPCION " crlf)
(printout t " 1- Angulo de noventa grados" crlf)
(printout t " 2- Angulo menor a noventa grados" crlf)
(printout t " 3- Angulo mayor a noventa grados" crlf)
(assert (trianguloangulo (read)))
)
(defrule igualnoventa  (trianguloangulo 1) =>(printout t "T. rectangulo" crlf))
(defrule menornoventa  (trianguloangulo 2) =>(printout t "T. acutangulo" crlf))
(defrule mayornoventa  (trianguloangulo 3) =>(printout t "T. obtusangulo" crlf))
(opcion 2)
(defrule angulos
=>
(printout t " OPCION " crlf)
(printout t " 1- Triangulo tres lados iguales" crlf)
(printout t " 2- Triangulo dos lados iguales" crlf)
(printout t " 3- Triangulo No tiene lados iguales" crlf)
(assert (triangulolados (read)))
)
(defrule tres-lados (triangulolados 1) => (printout t "T. equilatero" crlf))
(defrule dos-lados (triangulolados 2) => (printout t "T. isosceles" crlf))
(defrule ningun-lado (triangulolados 3) => (printout t "T. escaleno" crlf))
