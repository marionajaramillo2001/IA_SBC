
(deffacts fets_inicials "Fets inicials"
	(initial-fact)
)

;Funcio que implenta la pregunta per llegir un double
(deffunction ask-double (?question)
	(printout t ?question)
	(bind ?answer (read))
	(while (lexemep ?answer) do
		(printout t ?question)
		(bind ?answer (read))
		)
	(float ?answer)
)

;Funcio que implenta la pregunta per llegir un int
(deffunction ask-int (?question)
	(printout t ?question)
	(bind ?answer (read))
	(while (lexemep ?answer) do
		(printout t ?question)
		(bind ?answer (read))
		)
	(integer ?answer))


;Funcio que implenta la pregunta per llegir un string
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

;Funcio que implenta la pregunta de tipus si o no (booleana)
(deffunction yes-or-no-p (?question)
   (bind ?response (ask-question ?question si no s n))
   (if (or (eq ?response si) (eq ?response s))
       then TRUE
       else FALSE)
)


(defglobal
   ?*allok* = TRUE
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
	(bind ?gender (stringg-question "Sexe: Dona o Home"))
    (send ?x put-Sexe ?gender)
)

(defrule PREGUNTES::askActivitatFisica
	(newPersona)
    ?x <- (object(is-a Persona))
	=>
	(bind ?intensity (ask-int "Quin és el teu nivell d'activitat física diària?"))
	(if (or (> ?intensity 10) (< ?intensity 1) ) then (printout t crlf "Lo sentimos, el número introducido no está entra 1 y 10" crlf)(exit))

    (send ?x put-Nivell_activitat_fisica ?intensity)
)

(defrule PREGUNTES::askMalalties
	(newPersona)
    ?x <- (object(is-a Persona))
	=>
	(bind ?vegetaria (yes-or-no-p "Ets vegetarià?"))
	(if ?vegetaria then (send ?x put-pateix [Vegetaria]))

	(bind ?celiac (yes-or-no-p "Pateixes celiaquia?"))
	(if ?celiac then (send ?x put-pateix [Celiac]))
	(bind ?fruits_secs (yes-or-no-p "Pateixes alèrgia als fruits secs?"))
	(if ?fruits_secs then (send ?x put-pateix [Alergia_fruits_secs]))
	(bind ?lactosa (yes-or-no-p "Pateixes intolerància a la lactosa?"))
	(if ?lactosa then (send ?x put-pateix [Intolerancia_lactosa]))
	(bind ?marisc (yes-or-no-p "Pateixes alèrgia al marisc?"))
	(if ?marisc then (send ?x put-pateix [Alergia_mariscs]))
	(bind ?diabetis (yes-or-no-p "Tens diabetis?"))
	(if ?diabetis then (send ?x put-pateix [Diabetis]))
	(bind ?hipertensio (yes-or-no-p "Tens hipertensió?"))
	(if ?diabetis then (send ?x put-pateix [Hipertensio]))
	(bind ?colesterol (yes-or-no-p "Tens el colesterol alt?"))
	(if ?colesterol then (send ?x put-pateix [Colesterol_alt]))
	(bind ?anemia (yes-or-no-p "Tens anemia?"))
	(if ?anemia then (send ?x put-pateix [Anemia]))
	(bind ?ulceres (yes-or-no-p "Tens úlceres?"))
	(if ?ulceres then (send ?x put-pateix [Ulceres]))
	(bind ?caries (yes-or-no-p "Tens càries?"))
	(if ?caries then (send ?x put-pateix [Caries]))
	(bind ?osteoporosis (yes-or-no-p "Tens osteoporosis?"))
	(if ?osteoporosis then (send ?x put-pateix [Osteoporosis]))
)
