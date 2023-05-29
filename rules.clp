
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
   (bind ?response (ask-question ?question s n))
   (if (eq ?response s)
       then TRUE
       else FALSE)
)

(defglobal
   ?*temporada* = estiu
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
	(send ?x put-Colesterol_mult 1.0)
	(send ?x put-Ferro_mult 1.0)
	(send ?x put-Proteines_mult 1.0)
	(send ?x put-Nom ?name)
)

(defrule PREGUNTES::askAge
	(newPersona)
    ?x <- (object(is-a Persona))
	=>
	(bind ?age (ask-int "Quants anys tens? "))
	(if (< ?age 65) then (printout t crlf "Ho sentim, no verifiques els requsits d'edat (>=65)" crlf)(exit))
    (send ?x put-Edat ?age)
)

(defrule PREGUNTES::askHeight
	(newPersona)
    ?x <- (object(is-a Persona))
	=>
	(bind ?height (ask-int "Quant mesures? (cm) "))
    (send ?x put-Alcada ?height)
)

(defrule PREGUNTES::askWeight
	(newPersona)
    ?x <- (object(is-a Persona))
	=>
	(bind ?weight (ask-double "Quant peses? (kg) "))
    (send ?x put-Pes ?weight)
)

(defrule PREGUNTES::askGender
	(newPersona)
    ?x <- (object(is-a Persona))
	=>
	(bind ?gender (ask-question "Sexe: (h/d) " h d))
    (send ?x put-Sexe (sym-cat ?gender))
)

(defrule PREGUNTES::askActivitatFisica
	(newPersona)
    ?x <- (object(is-a Persona))
	=>
	(bind ?ask TRUE)
	(while ?ask do
		(bind ?intensity (ask-int "Quin és el teu nivell d'activitat física diària? (1-5) "))
		(if (and (< ?intensity 6) (> ?intensity 0) ) then (bind ?ask FALSE))
	)
    (send ?x put-Nivell_activitat_fisica ?intensity)
)

(defrule PREGUNTES::askTemporada
	(newPersona)
    ?x <- (object(is-a Persona))
	=>
	(bind ?*temporada* (ask-question "Per quina temporada vols el menú? (estiu, tardor, primavera, hivern) " estiu tardor primavera hivern))
)

(defrule PREGUNTES::askMalalties
	(newPersona)
    ?x <- (object(is-a Persona))
	=>
	(bind ?vegetaria (yes-or-no-p "Ets vegetarià? (s/n) "))
	(if ?vegetaria then (slot-insert$ ?x pateix 1 [Vegetaria]))

	(bind ?celiac (yes-or-no-p "Pateixes celiaquia? (s/n) "))
	(if ?celiac then (slot-insert$ ?x pateix 1 [Celiac]))
	(bind ?fruits_secs (yes-or-no-p "Pateixes alèrgia als fruits secs? (s/n) "))
	(if ?fruits_secs then (slot-insert$ ?x pateix 1 [Alergia_fruits_secs]))
	(bind ?lactosa (yes-or-no-p "Pateixes intolerància a la lactosa? (s/n) "))
	(if ?lactosa then (slot-insert$ ?x pateix 1 [Intolerancia_lactosa]))
	(bind ?marisc (yes-or-no-p "Pateixes alèrgia al marisc? (s/n) "))
	(if ?marisc then (slot-insert$ ?x pateix 1 [Alergia_mariscs]))
	(bind ?diabetis (yes-or-no-p "Tens diabetis? (s/n) "))
	(if ?diabetis then (slot-insert$ ?x pateix 1 [Diabetis]))
	(bind ?hipertensio (yes-or-no-p "Tens hipertensió? (s/n) "))
	(if ?diabetis then (slot-insert$ ?x pateix 1 [Hipertensio]))
	(bind ?colesterol (yes-or-no-p "Tens el colesterol alt? (s/n) "))
	(if ?colesterol then (slot-insert$ ?x pateix 1 [Colesterol_alt]))
	(bind ?anemia (yes-or-no-p "Tens anemia? (s/n) "))
	(if ?anemia then (slot-insert$ ?x pateix 1 [Anemia]))
	(bind ?ulceres (yes-or-no-p "Tens úlceres? (s/n) "))
	(if ?ulceres then (slot-insert$ ?x pateix 1 [Ulceres]))
)

(defrule PREGUNTES::noMesPreguntes
	(declare (salience -10))
	(newPersona)
	?p <- (object(is-a Persona))
	=>
	(printout t "Gràcies " (send ?p get-Nom) ", espera si us plau mentre calculem el teu menú..." crlf)
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
	(if (eq ?s h) then (bind ?tmb (+ 5 ?tmb)) else (bind ?tmb (- ?tmb 161)))
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
		(send ?x put-Greixos_mult (- ?auxGreixos 0.2))
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

(deffunction tenim_interseccio (?l1 ?l2)
	(loop-for-count (?i 1 (length$ ?l1))
		(bind ?x (nth$ ?i ?l1))
		(if (member$ ?x ?l2) then (return TRUE))
	)
	FALSE
)

(deffunction temporada_diferent (?plat)
	(switch ?*temporada*
		(case estiu then (return (not (send ?plat get-Temporada_estiu))))
		(case tardor then (return (not (send ?plat get-Temporada_tardor))))
		(case hivern then (return (not (send ?plat get-Temporada_hivern))))
		(case primavera then (return (not (send ?plat get-Temporada_primavera))))
	)

	FALSE
)

(defrule ABSTRACCIO::tractaTemporada
	(fiPreguntes)
	=>
	(bind ?plats (find-all-instances ((?plat Plat)) (temporada_diferent ?plat)))

	(loop-for-count (?i 1 (length$ ?plats))
		(bind ?plat (nth$ ?i ?plats))
		(send ?plat delete)
	)
)

(defrule ABSTRACCIO::tractaMalalties
	(fiPreguntes)
	?x <- (object (is-a Persona))
	=>
	(bind ?malalties (send ?x get-pateix))
	
	; Creem plats sense gluten
	(if (member$ [Celiac] ?malalties) then
		(bind ?pgluten (find-all-instances ((?plat Plat)) (member$ [Cereals_amb_gluten] ?plat:cuinat_amb)))
		(loop-for-count (?i 1 (length$ ?pgluten))
			(bind ?plat (nth$ ?i ?pgluten))
			(bind ?name (sym-cat (str-cat (instance-name ?plat) "(sense_gluten)")))
			(bind ?nplat (duplicate-instance ?plat to ?name))
			(bind ?index (member$ [Cereals_amb_gluten] (send ?nplat get-cuinat_amb)))
			(slot-replace$ ?nplat cuinat_amb ?index ?index [Cereals_sense_gluten])
		)
	)

	(bind ?ing_no_comp (create$))
	(loop-for-count (?i 1 (length$ ?malalties))
		(bind ?ing (send (nth$ ?i ?malalties) get-incompatible_amb))
		(bind ?ing_no_comp (insert$ ?ing_no_comp 1 ?ing))
	)
	(bind ?plats (find-all-instances ((?plat Plat)) (tenim_interseccio ?plat:cuinat_amb ?ing_no_comp)))
	(loop-for-count (?i 1 (length$ ?plats))
		(send (nth$ ?i ?plats) delete)
	)
)

(defrule ABSTRACCIO::noMesAbstraccio
	(declare (salience -10))
	(fiPreguntes)
	=>
	(assert (fiAbstraccio))
	(focus INFERENCIA)
)

(defmodule INFERENCIA (export ?ALL) (import MAIN ?ALL) (import PREGUNTES ?ALL) (import ABSTRACCIO ?ALL))

(defrule INFERENCIA::nouDinar2Plats
	(fiAbstraccio)
	?x <- (object (is-a Persona) (Calories_diaries_recomanades ?calRecDiaries))

	?p1 <- (object (is-a Plat) (usos_d ?u1) (Es_dinable TRUE) (Es_primer_plat ?primer1) (Es_segon_plat ?segon1) (Calories ?cal1))
	?p2 <- (object (is-a Plat) (usos_d ?u2) (Es_dinable TRUE) (Es_segon_plat ?segon2) (Es_postre ?postre2) (Calories ?cal2))
	(test (not (eq ?p1 ?p2)))
	(test (> ?u1 0))
	(test (> ?u2 0))

	; Considerem només primer-postre, primer-segon i segon-postre
	(test (or (and ?primer1 ?segon2) (or (and ?primer1 ?postre2) (and ?segon1 ?postre2))))

	; Comprovem calories
	(test (> (+ ?cal1 ?cal2) (* ?calRecDiaries 0.3)))
	(test (< (+ ?cal1 ?cal2) (* ?calRecDiaries 0.5)))
	=>
	(send ?p1 put-usos_d (- ?u1 1))
	(send ?p2 put-usos_d (- ?u2 1))
	(bind ?name (sym-cat (str-cat "Dinar:" (str-cat (instance-name-to-symbol (instance-name ?p1)) (str-cat "+" (instance-name-to-symbol (instance-name ?p2)))))))
	(make-instance ?name of Dinar (dinar_conte ?p1 ?p2))
)


(defrule INFERENCIA::nouDinar3Plats
	(fiAbstraccio)
	?x <- (object (is-a Persona) (Calories_diaries_recomanades ?calRecDiaries))

	?p1 <- (object (is-a Plat) (usos_d ?u1) (Es_dinable TRUE) (Es_primer_plat TRUE) (Calories ?cal1))
	?p2 <- (object (is-a Plat) (usos_d ?u2) (Es_dinable TRUE) (Es_segon_plat TRUE) (Calories ?cal2))
	?p3 <- (object (is-a Plat) (usos_d ?u3) (Es_dinable TRUE) (Es_postre TRUE) (Calories ?cal3))
	(test (not (eq ?p1 ?p2)))
	(test (not (eq ?p1 ?p3)))
	(test (not (eq ?p2 ?p3)))
	(test (> ?u1 0))
	(test (> ?u2 0))
	(test (> ?u3 0))

	; Comprovem calories
	(test (> (+ ?cal1 (+ ?cal2 ?cal3)) (* ?calRecDiaries 0.4)))
	(test (< (+ ?cal1 (+ ?cal2 ?cal3)) (* ?calRecDiaries 0.5)))
	=>
	(send ?p1 put-usos_d (- ?u1 1))
	(send ?p2 put-usos_d (- ?u2 1))
	(send ?p3 put-usos_d (- ?u3 1))
	(bind ?name1 (str-cat (instance-name-to-symbol (instance-name ?p1)) (str-cat "+" (instance-name-to-symbol (instance-name ?p2)))))
	(bind ?name (sym-cat (str-cat "Dinar:" (str-cat ?name1 (str-cat "+" (instance-name-to-symbol (instance-name ?p3)))))))
	(make-instance ?name of Dinar (dinar_conte ?p1 ?p2 ?p3))
)

(defrule INFERENCIA::nouSopar2Plats
	(fiAbstraccio)
	?x <- (object (is-a Persona) (Calories_diaries_recomanades ?calRecDiaries))

	?p1 <- (object (is-a Plat) (usos_s ?u1) (Es_sopable TRUE) (Es_primer_plat ?primer1) (Es_segon_plat ?segon1) (Calories ?cal1))
	?p2 <- (object (is-a Plat) (usos_s ?u2) (Es_sopable TRUE) (Es_segon_plat ?segon2) (Es_postre ?postre2) (Calories ?cal2))
	(test (not (eq ?p1 ?p2)))
	(test (> ?u1 0))
	(test (> ?u2 0))

	; Considerem només primer-postre, primer-segon i segon-postre
	(test (or (and ?primer1 ?segon2) (or (and ?primer1 ?postre2) (and ?segon1 ?postre2))))

	; Comprovem calories
	(test (> (+ ?cal1 ?cal2) (* ?calRecDiaries 0.1)))
	(test (< (+ ?cal1 ?cal2) (* ?calRecDiaries 0.3)))
	=>
	(send ?p1 put-usos_s (- ?u1 1))
	(send ?p2 put-usos_s (- ?u2 1))
	(bind ?name (sym-cat (str-cat "Sopar:" (str-cat (instance-name-to-symbol (instance-name ?p1)) (str-cat "+" (instance-name-to-symbol (instance-name ?p2)))))))
	(make-instance ?name of Sopar (sopar_conte ?p1 ?p2))
)


(defrule INFERENCIA::nouSopar3Plats
	(fiAbstraccio)
	?x <- (object (is-a Persona) (Calories_diaries_recomanades ?calRecDiaries))

	?p1 <- (object (is-a Plat) (usos_s ?u1) (Es_sopable TRUE) (Es_primer_plat TRUE) (Calories ?cal1))
	?p2 <- (object (is-a Plat) (usos_s ?u2) (Es_sopable TRUE) (Es_segon_plat TRUE) (Calories ?cal2))
	?p3 <- (object (is-a Plat) (usos_s ?u3) (Es_sopable TRUE) (Es_postre TRUE) (Calories ?cal3))
	(test (not (eq ?p1 ?p2)))
	(test (not (eq ?p1 ?p3)))
	(test (not (eq ?p2 ?p3)))
	(test (> ?u1 0))
	(test (> ?u2 0))
	(test (> ?u3 0))

	; Comprovem calories
	(test (> (+ ?cal1 (+ ?cal2 ?cal3)) (* ?calRecDiaries 0.2)))
	(test (< (+ ?cal1 (+ ?cal2 ?cal3)) (* ?calRecDiaries 0.3)))
	=>
	(send ?p1 put-usos_s (- ?u1 1))
	(send ?p2 put-usos_s (- ?u2 1))
	(send ?p3 put-usos_s (- ?u3 1))
	(bind ?name1 (str-cat (instance-name-to-symbol (instance-name ?p1)) (str-cat "+" (instance-name-to-symbol (instance-name ?p2)))))
	(bind ?name (sym-cat (str-cat "Sopar:" (str-cat ?name1 (str-cat "+" (instance-name-to-symbol (instance-name ?p3)))))))
	(make-instance ?name of Sopar (sopar_conte ?p1 ?p2 ?p3))
)

(defrule INFERENCIA::nouEsmorzar1Menjar1Beguda
	(fiAbstraccio)
	?x <- (object (is-a Persona) (Calories_diaries_recomanades ?calRecDiaries))

	?p <- (object (is-a Plat) (usos_e ?u1) (Es_esmorzable TRUE) (Calories ?cal1))
	?b <- (object (is-a Plat) (usos_e ?u2) (Es_esmorzable TRUE) (Es_beguda TRUE) (Calories ?cal2))
	(test (not (eq ?p ?b)))
	(test (> ?u1 0))
	(test (> ?u2 0))

	; Comprovem calories
	(test (> (+ ?cal1 ?cal2) (* ?calRecDiaries 0.15)))
	(test (< (+ ?cal1 ?cal2) (* ?calRecDiaries 0.3)))

	=>
	(send ?p put-usos_e (- ?u1 1))
	(send ?b put-usos_e (- ?u2 1))
	(bind ?name (sym-cat (str-cat "Esmorzar:" (str-cat (instance-name-to-symbol (instance-name ?p)) (str-cat "+" (instance-name-to-symbol (instance-name ?b)))))))
	(make-instance ?name of Esmorzar (esmorzar_conte ?p ?b))
)


(defrule INFERENCIA::nouEsmorzar2Menjars1Beguda
	(fiAbstraccio)
	?x <- (object (is-a Persona) (Calories_diaries_recomanades ?calRecDiaries))

	?p1 <- (object (is-a Plat) (usos_e ?u1) (Es_esmorzable TRUE) (Calories ?cal1))
	?p2 <- (object (is-a Plat) (usos_e ?u2) (Es_esmorzable TRUE) (Calories ?cal2))
	?b  <- (object (is-a Plat) (usos_e ?u3) (Es_esmorzable TRUE) (Es_beguda TRUE) (Calories ?cal3))
	(test (not (eq ?p1 ?b)))
	(test (not (eq ?p2 ?b)))
	(test (not (eq ?p1 ?p2)))
	(test (> ?u1 0))
	(test (> ?u2 0))
	(test (> ?u3 0))

	; Comprovem calories
	(test (> (+ ?cal1 (+ ?cal2 ?cal3)) (* ?calRecDiaries 0.2)))
	(test (< (+ ?cal1 (+ ?cal2 ?cal3)) (* ?calRecDiaries 0.3)))

	=>
	(send ?p1 put-usos_e (- ?u1 1))
	(send ?p2 put-usos_e (- ?u2 1))
	(send ?b  put-usos_e (- ?u3 1))
	(bind ?name1 (str-cat (str-cat (instance-name-to-symbol (instance-name ?p1)) (str-cat "+" (instance-name-to-symbol (instance-name ?p2))))))
	(bind ?name (sym-cat (str-cat "Esmorzar:" (str-cat ?name1 (str-cat "+" (instance-name-to-symbol (instance-name ?b)))))))
	(make-instance ?name of Esmorzar (esmorzar_conte ?p1 ?p2 ?b))
)


(deffunction platRepetit (?e ?d ?s)
    (bind ?eplats (send ?e get-esmorzar_conte))
    (bind ?dplats (send ?d get-dinar_conte))
    (bind ?splats (send ?s get-sopar_conte))

    (foreach ?plat ?eplats do
        (if (not (not (member$ ?plat ?dplats))) then (return TRUE))
    )

    (foreach ?plat ?eplats do
        (if (not (not (member$ ?plat ?splats))) then (return TRUE))
    )

    (foreach ?plat ?dplats do
        (if (not (not (member$ ?plat ?splats))) then (return TRUE))
    )

    FALSE
)

(deffunction between (?n ?l ?u)
	(and (> ?n ?l) (< ?n ?u))
)

(deffunction countApatRepetit (?menusDiaris)
	(bind ?plats (create$))
    (loop-for-count (?i 1 (length$ ?menusDiaris)) do
        (bind ?menuDiari_i (nth$ ?i ?menusDiaris))
        (bind ?esmorzar_i (send ?menuDiari_i get-format_per_esmorzar))
        (bind ?dinar_i (send ?menuDiari_i get-format_per_dinar))
        (bind ?sopar_i (send ?menuDiari_i get-format_per_sopar))

		(bind ?plats (insert$ ?plats 1 (send ?esmorzar_i get-esmorzar_conte)))
		(bind ?plats (insert$ ?plats 1 (send ?dinar_i get-dinar_conte)))
		(bind ?plats (insert$ ?plats 1 (send ?sopar_i get-sopar_conte)))
    )

	(loop-for-count (?i 1 (length$ ?plats))
		(bind ?plat (nth$ ?i ?plats))
		(send ?plat put-usos_setmanals 0)
	)

	(loop-for-count (?i 1 (length$ ?plats)) do
		(bind ?plat (nth$ ?i ?plats))
		(bind ?usos (+ 1 (send ?plat get-usos_setmanals)))
		(send ?plat put-usos_setmanals ?usos)
	)

	(bind ?total_usos 0)

	(loop-for-count (?i 1 (length$ ?plats)) do
		(bind ?plat (nth$ ?i ?plats))
		(bind ?usos (send ?plat get-usos_setmanals))
		(bind ?total_usos (+ ?total_usos ?usos))
	)

    ?total_usos
)

(deffunction count$ (?list ?value)
   (bind ?count 0)
   (foreach ?l ?list
      (if (eq ?l ?value)
         then
         (bind ?count (+ ?count 1))))
   (return ?count)
)

(deffunction checkMacros (?cal ?e ?d ?s ?p)
    (bind ?prot 0)
    (bind ?carb 0)
    (bind ?greix 0)
    (bind ?vitC 0)
    (bind ?vitA 0)
    (bind ?greixsat 0)
    (bind ?fibra 0)
    (bind ?potas 0)
    (bind ?calci 0)
    (bind ?ferro 0)
    (bind ?sodi 0)
    (bind ?colest 0)
    (bind ?sucres 0)

    (bind ?i 1)
    (bind ?platsEsmorzar (send ?e get-esmorzar_conte))
    (while (<= ?i (length$ ?platsEsmorzar)) do
        (bind ?plat (nth$ ?i ?platsEsmorzar))
        (bind ?prot (+ ?prot (send ?plat get-Proteines)))
        (bind ?carb (+ ?carb (send ?plat get-Carbohidrats)))
        (bind ?greix (+ ?greix (send ?plat get-Greixos_totals)))
        (bind ?vitC (+ ?vitC (send ?plat get-Vitamina_C)))
        (bind ?vitA (+ ?vitA (send ?plat get-Vitamina_A)))
        (bind ?greixsat (+ ?greixsat (send ?plat get-Greixos_saturats)))
        (bind ?fibra (+ ?fibra (send ?plat get-Fibra)))
        (bind ?potas (+ ?potas (send ?plat get-Potassi)))
        (bind ?calci (+ ?calci (send ?plat get-Calci)))
        (bind ?ferro (+ ?ferro (send ?plat get-Ferro)))
        (bind ?sodi (+ ?sodi (send ?plat get-Sodi)))
        (bind ?colest (+ ?colest (send ?plat get-Colesterol)))
        (bind ?sucres (+ ?sucres (send ?plat get-Sucres)))
        (bind ?i (+ ?i 1))
    )
    (bind ?i 1)
    (bind ?platsDinar (send ?d get-dinar_conte))
    (while (<= ?i (length$ ?platsDinar)) do
        (bind ?plat (nth$ ?i ?platsDinar))
        (bind ?prot (+ ?prot (send ?plat get-Proteines)))
        (bind ?carb (+ ?carb (send ?plat get-Carbohidrats)))
        (bind ?greix (+ ?greix (send ?plat get-Greixos_totals)))
        (bind ?vitC (+ ?vitC (send ?plat get-Vitamina_C)))
        (bind ?vitA (+ ?vitA (send ?plat get-Vitamina_A)))
        (bind ?greixsat (+ ?greixsat (send ?plat get-Greixos_saturats)))
        (bind ?fibra (+ ?fibra (send ?plat get-Fibra)))
        (bind ?potas (+ ?potas (send ?plat get-Potassi)))
        (bind ?calci (+ ?calci (send ?plat get-Calci)))
        (bind ?ferro (+ ?ferro (send ?plat get-Ferro)))
        (bind ?sodi (+ ?sodi (send ?plat get-Sodi)))
        (bind ?colest (+ ?colest (send ?plat get-Colesterol)))
        (bind ?sucres (+ ?sucres (send ?plat get-Sucres)))
        (bind ?i (+ ?i 1))
    )
    (bind ?i 1)
    (bind ?platsSopar (send ?s get-sopar_conte))
    (while (<= ?i (length$ ?platsSopar)) do
        (bind ?plat (nth$ ?i ?platsSopar))
        (bind ?prot (+ ?prot (send ?plat get-Proteines)))
        (bind ?carb (+ ?carb (send ?plat get-Carbohidrats)))
        (bind ?greix (+ ?greix (send ?plat get-Greixos_totals)))
        (bind ?vitC (+ ?vitC (send ?plat get-Vitamina_C)))
        (bind ?vitA (+ ?vitA (send ?plat get-Vitamina_A)))
        (bind ?greixsat (+ ?greixsat (send ?plat get-Greixos_saturats)))
        (bind ?fibra (+ ?fibra (send ?plat get-Fibra)))
        (bind ?potas (+ ?potas (send ?plat get-Potassi)))
        (bind ?calci (+ ?calci (send ?plat get-Calci)))
        (bind ?ferro (+ ?ferro (send ?plat get-Ferro)))
        (bind ?sodi (+ ?sodi (send ?plat get-Sodi)))
        (bind ?colest (+ ?colest (send ?plat get-Colesterol)))
        (bind ?sucres (+ ?sucres (send ?plat get-Sucres)))
        (bind ?i (+ ?i 1))
    )

    (bind ?prot_m (send ?p get-Proteines_mult))
    (bind ?greix_m (send ?p get-Greixos_mult))
    (bind ?fibra_m (send ?p get-Fibra_mult))
    (bind ?ferro_m (send ?p get-Ferro_mult))
    (bind ?colest_m (send ?p get-Colesterol_mult))
    (bind ?sucres_m (send ?p get-Sucres_mult))

    (bind ?check (and (between (* ?prot 4) (* ?cal (* 0.1 ?prot_m)) (* ?cal (* 0.4 ?prot_m)))
        (between (* ?greix 9) (* ?cal (* 0.15 ?greix_m)) (* ?cal (* 0.35 ?greix_m)))
        (between (* ?carb 4) (* ?cal 0.4) (* ?cal 0.7))
        (between ?potas (* 4300 0.6) (* 4300 1.3))
    	(< ?colest (* 300 ?colest_m))
    ))

    (if (eq (send ?p get-Sexe) h) then
        (bind ?check (and ?check
            (between ?vitC (* 80 0.7) (* 80 1.3))
            (between ?fibra (* 20 (* ?fibra_m 0.75)) (* 28 (* ?fibra_m 1.25)))
	))
    else (bind ?check (and ?check
            (between ?vitC (* 75 0.7) (* 75 1.3))
            (between ?fibra (* 15 (* ?fibra_m 0.7)) (* 22 (* ?fibra_m 1.3)))
	)))

    ?check
)

(defrule INFERENCIA::nouMenuDiari
	(fiAbstraccio)
	?p <- (object (is-a Persona) (Calories_diaries_recomanades ?cal))
	?e <- (object (is-a Esmorzar))
	?d <- (object (is-a Dinar))
	?s <- (object (is-a Sopar))
	(test (checkMacros ?cal ?e ?d ?s ?p))
	(test (not (platRepetit ?e ?d ?s)))
	=>
	(bind ?name1 (str-cat (instance-name-to-symbol (instance-name ?e)) (str-cat "+" (instance-name-to-symbol (instance-name ?d)))))
	(bind ?name (sym-cat (str-cat ?name1 (str-cat "+" (instance-name-to-symbol (instance-name ?s))))))
	(make-instance ?name of Menu_diari (format_per_esmorzar ?e) (format_per_dinar ?d) (format_per_sopar ?s))
)

(defrule INFERENCIA::totsMenusDiaris
	(declare (salience -10))
	(fiAbstraccio)
	=>
	(assert (tenimTotsMenusDiaris))
	(focus RESPOSTA)
)

(defmodule RESPOSTA (import MAIN ?ALL) (import PREGUNTES ?ALL)(import ABSTRACCIO ?ALL) (import INFERENCIA ?ALL))

(defrule RESPOSTA::imprimirMenuSetmanal
	(tenimTotsMenusDiaris)
	?p <- (object(is-a Persona))
	=>
	(bind ?md (find-all-instances ((?m Menu_diari)) TRUE))

	(if (= 0 (length$ ?md)) then
		(printout t crlf "Ho sentim " (send ?p get-Nom) ", amb les teves respostes no hem pogut crear cap menú setmanal" crlf)
	else
		(printout t crlf "Hola " (send ?p get-Nom) ", amb les teves respostes hem creat el següent menú setmanal:" crlf)
		(printout t "Menu setmanal:" crlf)
		(bind ?menusDiaris (create$))
		(bind ?min_usos 9999999)
		(bind ?tries 50)

		(loop-for-count (?i 1 ?tries) do
			(bind ?m (create$))
			(loop-for-count (?i 1 7) do
				(bind ?m (insert$ ?m 1 (nth$ (random 1 (length$ ?md)) ?md)))
			)

			(if (< (countApatRepetit ?m) ?min_usos) then (bind ?menusDiaris ?m))
		)

		(bind ?ms (make-instance MenuFinal of Menu_setmanal (composat_de ?m)))
		(send ?p put-menja ?ms)

		(loop-for-count (?i 1 7) do
			(switch ?i
				(case 1 then (printout t "Dilluns:" crlf))
				(case 2 then (printout t "Dimarts:" crlf))
				(case 3 then (printout t "Dimecres:" crlf))
				(case 4 then (printout t "Dijous:" crlf))
				(case 5 then (printout t "Divendres:" crlf))
				(case 6 then (printout t "Dissabte:" crlf))
				(case 7 then (printout t "Diumenge:" crlf))
			)
			(bind ?menu (nth$ ?i ?menusDiaris))
			(printout t (instance-name (send ?menu get-format_per_esmorzar)) crlf)
			(printout t (instance-name (send ?menu get-format_per_dinar)) crlf)
			(printout t (instance-name (send ?menu get-format_per_sopar)) crlf)
		)

		(printout t crlf)
	)
	(halt)
)
