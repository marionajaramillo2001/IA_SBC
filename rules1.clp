
(deffacts fets_inicials "Fets inicials"
	(initial-fact)
)

; Funció que implenta la pregunta per llegir un double
(deffunction ask-double (?question)
	(printout t ?question)
	(bind ?answer (read))
	(while (lexemep ?answer) do
		(printout t ?question)
		(bind ?answer (read))
		)
	(float ?answer)
)

; Funció que implenta la pregunta per llegir un int
(deffunction ask-int (?question)
	(printout t ?question)
	(bind ?answer (read))
	(while (lexemep ?answer) do
		(printout t ?question)
		(bind ?answer (read))
		)
	(integer ?answer))


; Funció que implenta la pregunta per llegir un string
(deffunction stringg-question (?question)
	(format t "%s" ?question)
	(bind ?answer (read))
	?answer
)

(deffunction ask-question (?question $?allowed-values)
   (printout t ?question)
   (bind ?answer (read))
   (if (lexemep ?answer)
       then (bind ?answer (lowcase ?answer)))
   (while (not (member$ ?answer ?allowed-values)) do
      (printout t ?question)
      (bind ?answer (read))
      (if (lexemep ?answer)
          then (bind ?answer (lowcase ?answer))))
   ?answer
)

; Funció que implenta la pregunta de tipus sí o no (booleana)
(deffunction yes-or-no-p (?question)
   (bind ?response (ask-question ?question si no s n))
   (if (or (eq ?response si) (eq ?response s))
       then TRUE
       else FALSE)
)


(defglobal
   ?*allok* = TRUE
   ?*menus* = 0
)

(defmodule MAIN (export ?ALL))

(defrule initial
    (initial-fact)
    =>
    (printout t "----BENVINGUTS AL SISTEMA DE RECOMANACIÓ DE MENÚS SETMANALS----" crlf)
    (printout t crlf)
    (assert(newPersona))
    (focus PREGUNTES)
)


(defmodule PREGUNTES (export ?ALL) (import MAIN ?ALL))


(defrule PREGUNTES::askName
	(newPersona)
	=>
	(bind ?name (stringg-question "Com et dius? "))
	(bind ?x (make-instance ?name of Persona))
	(send ?x put-Sucres_mult 1.0)
	(send ?x put-Fibra_mult 1.0)
	(send ?x put-Greixos_mult 1.0)
	(send ?x put-Sal_mult 1.0)
	(send ?x put-Colesterol_mult 1.0)
	(send ?x put-Ferro_mult 1.0)
	(send ?x put-Calci_mult 1.0)
	(send ?x put-Proteines_mult 1.0)
	(send ?x put-Sodi_mult 1.0)
	(send ?x put-Nom ?name)
)

(defrule PREGUNTES::askAge
	(newPersona)
    ?x <- (object(is-a Persona))
	=>
	(bind ?age (ask-int "Quants anys tens? "))
	(if (< ?age 65) then (printout t crlf "Ho sentim, no verifiques els requsits d'edat (>65)" crlf)(exit))
    (send ?x put-Edat ?age)
)

(defrule PREGUNTES::askHeight
	(newPersona)
    ?x <- (object(is-a Persona))
	=>
	(bind ?height (ask-int "Quant medeixes? "))
    (send ?x put-Alcada ?height)
)

(defrule PREGUNTES::askWeight
	(newPersona)
    ?x <- (object(is-a Persona))
	=>
	(bind ?weight (ask-double "Quant peses? "))
    (send ?x put-Pes ?weight)
)

(defrule PREGUNTES::askGender
	(newPersona)
    ?x <- (object(is-a Persona))
	=>
	(bind ?gender (stringg-question "Sexe: (Dona o Home) "))
    (send ?x put-Sexe ?gender)
)

(defrule PREGUNTES::askActivitatFisica
	(newPersona)
    ?x <- (object(is-a Persona))
	=>
	(bind ?intensity (ask-int "Quin és el teu nivell d'activitat física diària? (1-5) "))
	(if (or (> ?intensity 5) (< ?intensity 1) ) then (printout t crlf "Lo sentimos, el número introducido no está entra 1 y 5" crlf)(exit))

    (send ?x put-Nivell_activitat_fisica ?intensity)
)

(defrule PREGUNTES::askMalalties
	(newPersona)
    ?x <- (object(is-a Persona))
	=>
	(bind ?vegetaria (yes-or-no-p "Ets vegetarià? "))
	(if ?vegetaria then (slot-insert$ ?x pateix 1 [Vegetaria]))

	(bind ?celiac (yes-or-no-p "Pateixes celiaquia? "))
	(if ?celiac then (slot-insert$ ?x pateix 1 [Celiac]))
	(bind ?fruits_secs (yes-or-no-p "Pateixes alèrgia als fruits secs? "))
	(if ?fruits_secs then (slot-insert$ ?x pateix 1 [Alergia_fruits_secs]))
	(bind ?lactosa (yes-or-no-p "Pateixes intolerància a la lactosa? "))
	(if ?lactosa then (slot-insert$ ?x pateix 1 [Intolerancia_lactosa]))
	(bind ?marisc (yes-or-no-p "Pateixes alèrgia al marisc? "))
	(if ?marisc then (slot-insert$ ?x pateix 1 [Alergia_mariscs]))
	(bind ?diabetis (yes-or-no-p "Tens diabetis? "))
	(if ?diabetis then (slot-insert$ ?x pateix 1 [Diabetis]))
	(bind ?hipertensio (yes-or-no-p "Tens hipertensió? "))
	(if ?diabetis then (slot-insert$ ?x pateix 1 [Hipertensio]))
	(bind ?colesterol (yes-or-no-p "Tens el colesterol alt? "))
	(if ?colesterol then (slot-insert$ ?x pateix 1 [Colesterol_alt]))
	(bind ?anemia (yes-or-no-p "Tens anemia? "))
	(if ?anemia then (slot-insert$ ?x pateix 1 [Anemia]))
	(bind ?ulceres (yes-or-no-p "Tens úlceres? "))
	(if ?ulceres then (slot-insert$ ?x pateix 1 [Ulceres]))
	(bind ?osteoporosis (yes-or-no-p "Tens osteoporosis? "))
	(if ?osteoporosis then (slot-insert$ ?x pateix 1 [Osteoporosis]))
)

(defrule PREGUNTES::noMesPreguntes
	(newPersona)
	=>
	(assert (fiPreguntes))
	(focus ABSTRACCIO)
)

(defmodule ABSTRACCIO (export ?ALL) (import MAIN ?ALL) (import PREGUNTES ?ALL))

(defrule ABSTRACCIO::calculaCalories
	(fiPreguntes)
	?x <- (object(is-a Persona))
	=>
	(bind ?p (send ?x get-Pes))
	(bind ?h (send ?x get-Alcada))
	(bind ?a (send ?x get-Edat))
	(bind ?s (send ?x get-Sexe))
	(bind ?f (send ?x get-Nivell_activitat_fisica))
	(bind ?tmb (- (+ (* 10 ?p) (* 6.25 ?h)) (* 5 ?a)))
	(if (eq ?s "Home") then (bind ?tmb (+ 5 ?tmb)) else (bind ?tmb (- ?tmb 161)))
	(bind ?c (switch ?f
		(case 1 then (* 1.2 ?tmb))
		(case 2 then (* 1.375 ?tmb))
		(case 3 then (* 1.55 ?tmb))
		(case 4 then (* 1.725 ?tmb))
		(case 5 then (* 1.9 ?tmb))
	))
	(send ?x put-Calories_diaries_recomanades ?c)
)

(defrule ABSTRACCIO:multiDiabetis
	(fiPreguntes)
	?x <- (object(is-a Persona))
	=>
	(bind ?m (send ?x get-pateix))
	(if (member$ [Diabetis] ?m) then 
		(bind ?auxSucre (send ?x get-Sucres_mult))
		(bind ?auxFibra (send ?x get-Fibra_mult))
		(send ?x put-Sucres_mult (- ?auxSucre 0.2))
		(send ?x put-Fibra_mult (+ ?auxFibra 0.2))
	)
)

(defrule ABSTRACCIO:multiHipertensio
	(fiPreguntes)
	?x <- (object(is-a Persona))
	=>
	(bind ?m (send ?x get-pateix))
	(if (member$ [Hipertensio] ?m) then 
		(bind ?auxGreixos (send ?x get-Greixos_mult))
		(bind ?auxSal (send ?x get-Sal_mult))
		(send ?x put-Greixos_mult (- ?auxGreixos 0.2))
		(send ?x put-Sal_mult (- ?auxSal 0.2))
	)
)

(defrule ABSTRACCIO:multiColesterol
	(fiPreguntes)
	?x <- (object(is-a Persona))
	=>
	(bind ?m (send ?x get-pateix))
	(if (member$ [Colesterol] ?m) then 
		(bind ?auxGreixos (send ?x get-Greixos_mult))
		(bind ?auxColesterol (send ?x get-Colesterol_mult))
		(send ?x put-Greixos_mult (- ?auxGreixos 0.2))
		(send ?x put-Colesterol_mult (- ?auxColesterol 0.2))
	)
)

(defrule ABSTRACCIO:multiAnemia
	(fiPreguntes)
	?x <- (object(is-a Persona))
	=>
	(bind ?m (send ?x get-pateix))
	(if (member$ [Anemia] ?m) then 
		(bind ?auxFerro (send ?x get-Ferro_mult))
		(send ?x put-Ferro_mult (+ ?auxFerro 0.2))
	)
)

(defrule ABSTRACCIO:multiOsteoporosis
	(fiPreguntes)
	?x <- (object(is-a Persona))
	=>
	(bind ?m (send ?x get-pateix))
	(if (member$ [Osteoporosis] ?m) then
		(bind ?auxCalci (send ?x get-Calci_mult))
		(bind ?auxProteina (send ?x get-Proteines_mult))
		(bind ?auxSodi (send ?x get-Sodi_mult))
		(send ?x put-Calci_mult (+ ?auxCalci 0.2))
		(send ?x put-Proteines_mult (+ ?auxProteina 0.2))
		(send ?x put-Sodi_mult (+ ?auxSodi 0.2))
	)
)

(defrule ABSTRACCIO::noMesAbstraccio
	(fiPreguntes)
	=>
	(assert (fiAbstraccio))
	(focus INFERENCIA)
)

(defmodule INFERENCIA (export ?ALL) (import MAIN ?ALL) (import PREGUNTES ?ALL) (import ABSTRACCIO ?ALL))

(defrule INFERENCIA::nouDinar2Plats
	(fiAbstraccio)
	?x <- (object (is-a Persona) (Calories_diaries_recomanades ?calRecDiaries))

	?p1 <- (object (is-a Plat) (Es_dinable TRUE) (Es_primer_plat ?primer1) (Es_segon_plat ?segon1) (Calories ?cal1))
	?p2 <- (object (is-a Plat) (Es_dinable TRUE) (Es_segon_plat ?segon2) (Es_postre ?postre2) (Calories ?cal2))
	(test (not (eq ?p1 ?p2)))

	; Considerem només primer-postre, primer-segon i segon-postre
	(test (or (and ?primer1 ?segon2) (or (and ?primer1 ?postre2) (and ?segon1 ?postre2))))

	; Comprovem calories
	(test (> (+ ?cal1 ?cal2) (* ?calRecDiaries 0.4)))
	(test (< (+ ?cal1 ?cal2) (* ?calRecDiaries 0.5)))
	=>
	(bind ?name (sym-cat (str-cat "Dinar:" (str-cat (instance-name-to-symbol (instance-name ?p1)) (str-cat "+" (instance-name-to-symbol (instance-name ?p2)))))))
	(make-instance ?name of Dinar (dinar_conte ?p1 ?p2))
)


(defrule INFERENCIA::nouDinar3Plats
	(fiAbstraccio)
	?x <- (object (is-a Persona) (Calories_diaries_recomanades ?calRecDiaries))

	?p1 <- (object (is-a Plat) (Es_dinable TRUE) (Es_primer_plat TRUE) (Calories ?cal1))
	?p2 <- (object (is-a Plat) (Es_dinable TRUE) (Es_segon_plat TRUE) (Calories ?cal2))
	?p3 <- (object (is-a Plat) (Es_dinable TRUE) (Es_postre TRUE) (Calories ?cal3))
	(test (not (eq ?p1 ?p2)))
	(test (not (eq ?p1 ?p3)))
	(test (not (eq ?p2 ?p3)))

	; Comprovem calories
	(test (> (+ ?cal1 (+ ?cal2 ?cal3)) (* ?calRecDiaries 0.4)))
	(test (< (+ ?cal1 (+ ?cal2 ?cal3)) (* ?calRecDiaries 0.5)))
	=>
	(bind ?name1 (str-cat (instance-name-to-symbol (instance-name ?p1)) (str-cat "+" (instance-name-to-symbol (instance-name ?p2)))))
	(bind ?name (sym-cat (str-cat "Dinar:" (str-cat ?name1 (str-cat "+" (instance-name-to-symbol (instance-name ?p3)))))))
	(make-instance ?name of Dinar (dinar_conte ?p1 ?p2 ?p3))
)

(defrule INFERENCIA::nouSopar2Plats
	(fiAbstraccio)
	?x <- (object (is-a Persona) (Calories_diaries_recomanades ?calRecDiaries))

	?p1 <- (object (is-a Plat) (Es_sopable TRUE) (Es_primer_plat ?primer1) (Es_segon_plat ?segon1) (Calories ?cal1))
	?p2 <- (object (is-a Plat) (Es_sopable TRUE) (Es_segon_plat ?segon2) (Es_postre ?postre2) (Calories ?cal2))
	(test (not (eq ?p1 ?p2)))

	; Considerem només primer-postre, primer-segon i segon-postre
	(test (or (and ?primer1 ?segon2) (or (and ?primer1 ?postre2) (and ?segon1 ?postre2))))

	; Comprovem calories
	(test (> (+ ?cal1 ?cal2) (* ?calRecDiaries 0.2)))
	(test (< (+ ?cal1 ?cal2) (* ?calRecDiaries 0.3)))
	=>
	(bind ?name (sym-cat (str-cat "Sopar:" (str-cat (instance-name-to-symbol (instance-name ?p1)) (str-cat "+" (instance-name-to-symbol (instance-name ?p2)))))))
	(make-instance ?name of Sopar (sopar_conte ?p1 ?p2))
)


(defrule INFERENCIA::nouSopar3Plats
	(fiAbstraccio)
	?x <- (object (is-a Persona) (Calories_diaries_recomanades ?calRecDiaries))

	?p1 <- (object (is-a Plat) (Es_sopable TRUE) (Es_primer_plat TRUE) (Calories ?cal1))
	?p2 <- (object (is-a Plat) (Es_sopable TRUE) (Es_segon_plat TRUE) (Calories ?cal2))
	?p3 <- (object (is-a Plat) (Es_sopable TRUE) (Es_postre TRUE) (Calories ?cal3))
	(test (not (eq ?p1 ?p2)))
	(test (not (eq ?p1 ?p3)))
	(test (not (eq ?p2 ?p3)))

	; Comprovem calories
	(test (> (+ ?cal1 (+ ?cal2 ?cal3)) (* ?calRecDiaries 0.2)))
	(test (< (+ ?cal1 (+ ?cal2 ?cal3)) (* ?calRecDiaries 0.3)))
	=>
	(bind ?name1 (str-cat (instance-name-to-symbol (instance-name ?p1)) (str-cat "+" (instance-name-to-symbol (instance-name ?p2)))))
	(bind ?name (sym-cat (str-cat "Sopar:" (str-cat ?name1 (str-cat "+" (instance-name-to-symbol (instance-name ?p3)))))))
	(make-instance ?name of Sopar (sopar_conte ?p1 ?p2 ?p3))
)

(defrule INFERENCIA::nouEsmorzar1Menjar1Beguda
	(fiAbstraccio)
	?x <- (object (is-a Persona) (Calories_diaries_recomanades ?calRecDiaries))

	?p <- (object (is-a Plat) (Es_esmorzable TRUE) (Calories ?cal1))
	?b <- (object (is-a Plat) (Es_esmorzable TRUE) (Es_beguda TRUE) (Calories ?cal2))
	(test (not (eq ?p ?b)))

	; Comprovem calories
	(test (> (+ ?cal1 ?cal2) (* ?calRecDiaries 0.2)))
	(test (< (+ ?cal1 ?cal2) (* ?calRecDiaries 0.3)))

	=>
	(bind ?name (sym-cat (str-cat "Esmorzar:" (str-cat (instance-name-to-symbol (instance-name ?p)) (str-cat "+" (instance-name-to-symbol (instance-name ?b)))))))
	(make-instance ?name of Esmorzar (esmorzar_conte ?p ?b))
)


(defrule INFERENCIA::nouEsmorzar2Menjars1Beguda
	(fiAbstraccio)
	?x <- (object (is-a Persona) (Calories_diaries_recomanades ?calRecDiaries))

	?p1 <- (object (is-a Plat) (Es_esmorzable TRUE) (Calories ?cal1))
	?p2 <- (object (is-a Plat) (Es_esmorzable TRUE) (Calories ?cal2))
	?b  <- (object (is-a Plat) (Es_esmorzable TRUE) (Es_beguda TRUE) (Calories ?cal3))
	(test (not (eq ?p1 ?b)))
	(test (not (eq ?p2 ?b)))
	(test (not (eq ?p1 ?p2)))

	; Comprovem calories
	(test (> (+ ?cal1 (+ ?cal2 ?cal3)) (* ?calRecDiaries 0.2)))
	(test (> (+ ?cal1 (+ ?cal2 ?cal3)) (* ?calRecDiaries 0.3)))

	=>
	(bind ?name1 (str-cat (str-cat (instance-name-to-symbol (instance-name ?p1)) (str-cat "+" (instance-name-to-symbol (instance-name ?p2))))))
	(bind ?name (sym-cat (str-cat "Esmorzar:" (str-cat ?name1 (str-cat "+" (instance-name-to-symbol (instance-name ?b)))))))
	(make-instance ?name of Esmorzar (esmorzar_conte ?p1 ?p2 ?b))
)

(deffunction sumProt (?e ?d ?s)
    (bind ?prot 0)
    (bind ?i 1)
    (bind ?platsEsmorzar (send ?e get-esmorzar_conte))
    (while (<= ?i (length$ ?platsEsmorzar)) do
        (bind ?plat (nth$ ?i ?platsEsmorzar))
        (bind ?prot (+ ?prot (send ?plat get-Proteines)))
        (bind ?i (+ ?i 1))
    )
    (bind ?i 1)
    (bind ?platsDinar (send ?d get-dinar_conte))
    (while (<= ?i (length$ ?platsDinar)) do
        (bind ?plat (nth$ ?i ?platsDinar))
        (bind ?prot (+ ?prot (send ?plat get-Proteines)))
        (bind ?i (+ ?i 1))
    )
    (bind ?i 1)
    (bind ?platsSopar (send ?s get-sopar_conte))
    (while (<= ?i (length$ ?platsSopar)) do
        (bind ?plat (nth$ ?i ?platsSopar))
        (bind ?prot (+ ?prot (send ?plat get-Proteines)))
        (bind ?i (+ ?i 1))
    )
    (float ?prot)
)

(deffunction platRepetit (?e ?d ?s)
    (bind ?eplats (send ?e get-esmorzar_conte))
    (bind ?dplats (send ?d get-dinar_conte))
    (bind ?splats (send ?s get-sopar_conte))

    (foreach ?plat ?eplats do
        (if (not (member$ ?plat ?dplats)) then (return TRUE))
    )

    (foreach ?plat ?eplats do
        (if (not (member$ ?plat ?splats)) then (return TRUE))
    )

    (foreach ?plat ?dplats do
        (if (not (member$ ?plat ?splats)) then (return TRUE))
    )

    FALSE
)

(defrule INFERENCIA::nouMenuDiari
	(fiAbstraccio)
	?e <- (object (is-a Esmorzar))
	?d <- (object (is-a Dinar))
	?s <- (object (is-a Sopar))
	(test (> (sumProt ?e ?d ?s) (* 50 0.9)))
	(test (< (sumProt ?e ?d ?s) (* 50 1.1)))
	(test (not (platRepetit ?e ?d ?s)))
	=>

	(bind ?name1 (str-cat (instance-name-to-symbol (instance-name ?e)) (str-cat "+" (instance-name-to-symbol (instance-name ?d)))))
	(bind ?name (sym-cat (str-cat ?name1 (str-cat "+" (instance-name-to-symbol (instance-name ?s))))))
	(make-instance ?name of Menu_diari (format_per_esmorzar ?e) (format_per_dinar ?d) (format_per_sopar ?s))
)

(defrule INFERENCIA::nouMenuSetmanal
	(fiAbstraccio)
	?m1 <- (object (is-a Menu_diari) (name ?n1))
	?m2 <- (object (is-a Menu_diari) (name ?n2))
	?m3 <- (object (is-a Menu_diari) (name ?n3))
	?m4 <- (object (is-a Menu_diari) (name ?n4))
	?m5 <- (object (is-a Menu_diari) (name ?n5))
	?m6 <- (object (is-a Menu_diari) (name ?n6))
	?m7 <- (object (is-a Menu_diari) (name ?n7))

	(test (< (str-compare ?n1 ?n2) 0))
	(test (< (str-compare ?n2 ?n3) 0))
	(test (< (str-compare ?n3 ?n4) 0))
	(test (< (str-compare ?n4 ?n5) 0))
	(test (< (str-compare ?n5 ?n6) 0))
	(test (< (str-compare ?n6 ?n7) 0))
	=>
	(bind ?name (sym-cat (str-cat "MenuSetmanal" ?*menus*)))
	(bind ?*menus* (+ 1 ?*menus*))
	(make-instance ?name of Menu_setmanal (composat_de ?m1 ?m2 ?m3 ?m4 ?m5 ?m6 ?m7))
)


(defmodule RESPOSTA (import MAIN ?ALL) (import PREGUNTES ?ALL)(import ABSTRACCIO ?ALL)(import INFERENCIA ?ALL))

(defrule RESPOSTA::printMenuSetmanal
	(newPersona)
	?x<-(object(is-a Persona))
	=>


	(printout t "Hola " (send ?x get-Nom) ", amb les teves respostes hem creat el següent menú setmanal:" crlf)
	(printout t crlf)

    (bind ?menuset (find-all-instances ((?m Menu_setmanal))
            (neq ?m [nil])
	))

	(foreach ?menu ?menuset do

		(printout t crlf (upcase (send ?sesion get-dia)) " (" (send ?sesion get-duracionSesion) " min) ")
		(printout t crlf)

		(bind ?calentamientos (send ?sesion get-Calentamiento))
		(bind ?principales (send ?sesion get-EjPrincipal))
		(bind ?estiramientos (send ?sesion get-Estiramientos))

		(printout t crlf)
		(printout t "  " "Calentamiento:" crlf)
		(printout t crlf)
		(foreach ?calentamiento ?calentamientos do
			(printout t "    " (send ?calentamiento get-nombreEj))
			(printout t "    " (send ?calentamiento get-duracionEj))
			(printout t " min")
			(printout t crlf)
		)

		;Para los ejercicios de musculación:

		(if (< (send ?x get-preferencia_intensidad) 4) then (bind ?rm "60%")
		else
			(if (< (send ?x get-preferencia_intensidad) 7) then (bind ?rm "70%"))
			else (bind ?rm "80%")
		)
		(send ?sesion put-rm ?rm)

		(printout t crlf)
		(printout t "  " "Ejercicio :" crlf)
		(printout t crlf)
		(foreach ?ej ?principales do
			(if (eq (class ?ej) Musculacion) then
				(printout t "    " (send ?ej get-nombreEj) ": " crlf)
				(printout t "    	" (send ?ej get-series))
				(printout t " series" crlf)
				(printout t "    	" (send ?ej get-repeticiones))
				(printout t " repeticiones" crlf )
				(printout t "    	El peso debería ser con un " (send ?sesion get-rm) " de tu 1RM")
				(printout t crlf)
			else
				(printout t "    " (send ?ej get-nombreEj))
				(printout t "    " (send ?ej get-duracionEj))
				(printout t " min")
				(printout t crlf)
			)
		)

		(printout t crlf)
		(printout t "  " "Estiramientos:" crlf)
		(printout t crlf)
		(foreach ?estiramiento ?estiramientos do
			(printout t "    " (send ?estiramiento get-nombreEj))
			(printout t "    " (send ?estiramiento get-duracionEj))
			(printout t " min")
			(printout t crlf)
		)

	)

	(printout t crlf "FIN" crlf crlf)
	;(exit)
)