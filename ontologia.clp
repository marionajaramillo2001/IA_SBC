;;; ---------------------------------------------------------
;;; ontologia.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontologia.ttl
;;; :Date 17/05/2023 09:03:41

(defclass Menu_setmanal
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot composat_de
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Metode_coccio
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
)

(defclass Menu_diari
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot format_per_dinar
        (type INSTANCE)
        (create-accessor read-write))
    (slot format_per_esmorzar
        (type INSTANCE)
        (create-accessor read-write))
    (slot format_per_sopar
        (type INSTANCE)
        (create-accessor read-write))
    (slot 
        (type FLOAT)
        (create-accessor read-write))
)

(defclass Plat
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot cuinat_amb
        (type INSTANCE)
        (create-accessor read-write))
    (slot cuinat_mitjancant
        (type INSTANCE)
        (create-accessor read-write))
    (slot Vitamina_C
        (type FLOAT)
        (create-accessor read-write))
    (slot Fibra
        (type FLOAT)
        (create-accessor read-write))
    (slot Greixos_saturats
        (type FLOAT)
        (create-accessor read-write))
    (slot Potassi
        (type FLOAT)
        (create-accessor read-write))
    (slot Calci
        (type FLOAT)
        (create-accessor read-write))
    (slot Proteines
        (type FLOAT)
        (create-accessor read-write))
    (slot Carbohidrats
        (type FLOAT)
        (create-accessor read-write))
    (slot Vitamina_A
        (type FLOAT)
        (create-accessor read-write))
    (slot Calories
        (type FLOAT)
        (create-accessor read-write))
    (slot Ferro
        (type FLOAT)
        (create-accessor read-write))
    (slot Colesterol
        (type FLOAT)
        (create-accessor read-write))
    (slot Sodi
        (type FLOAT)
        (create-accessor read-write))
    (slot Greixos_insaturats
        (type FLOAT)
        (create-accessor read-write))
    (slot 
        (type SYMBOL)
        (create-accessor read-write))
    (slot 
        (type SYMBOL)
        (create-accessor read-write))
    (slot 
        (type SYMBOL)
        (create-accessor read-write))
    (slot 
        (type SYMBOL)
        (create-accessor read-write))
    (multislot 
        (type FLOAT)
        (create-accessor read-write))
    (multislot 
        (type STRING)
        (create-accessor read-write))
    (multislot 
        (type FLOAT)
        (create-accessor read-write))
    (slot 
        (type SYMBOL)
        (create-accessor read-write))
    (slot 
        (type SYMBOL)
        (create-accessor read-write))
    (slot 
        (type SYMBOL)
        (create-accessor read-write))
    (slot 
        (type SYMBOL)
        (create-accessor read-write))
)

(defclass Malaltia
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot incompatible_amb
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Persona
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot pateix
        (type INSTANCE)
        (create-accessor read-write))
    (multislot no_li_agrada
        (type INSTANCE)
        (create-accessor read-write))
    (multislot li_agrada
        (type INSTANCE)
        (create-accessor read-write))
    (multislot menja
        (type INSTANCE)
        (create-accessor read-write))
    (slot Sexe
        (type STRING)
        (create-accessor read-write))
    (slot Nom
        (type STRING)
        (create-accessor read-write))
    (slot Alcada
        (type FLOAT)
        (create-accessor read-write))
    (slot Edat
        (type INTEGER)
        (create-accessor read-write))
    (slot Calories_diaries_recomanades
        (type FLOAT)
        (create-accessor read-write))
    (slot Pes
        (type FLOAT)
        (create-accessor read-write))
    (slot Nivell_activitat_fisica
        (type STRING)
        (create-accessor read-write))
)

(defclass Ingredient
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot 
        (type FLOAT)
        (create-accessor read-write))
    (slot 
        (type FLOAT)
        (create-accessor read-write))
)

(defclass Dinar
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot 
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Esmorzar
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot 
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Sopar
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot 
        (type INSTANCE)
        (create-accessor read-write))
)

(definstances instances
    ([Dilluns] of Menu_diari
    )

    ([Dimarts] of Menu_diari
    )

    ([Diumenge] of Menu_diari
    )

    ([Divendres] of Menu_diari
    )

    ([Dissabte] of Menu_diari
    )

    ([Dijous] of Menu_diari
    )

    ([Dimecres] of Menu_diari
    )

    ([] of Metode_coccio
    )

    ([] of Ingredient
    )

    ([] of Ingredient
    )

    ([] of Ingredient
    )

    ([] of Ingredient
    )

    ([Cru] of Metode_coccio
    )

    ([] of Ingredient
    )

    ([] of Metode_coccio
    )

    ([] of Metode_coccio
    )

    ([] of Metode_coccio
    )

    ([] of Ingredient
    )

    ([] of Ingredient
    )

    ([] of Ingredient
    )

    ([Lactics] of Ingredient
    )

    ([] of Ingredient
    )

    ([] of Ingredient
    )

    ([Llet_amb_cacau] of Plat
         (cuinat_amb  [Lactics] [Xocolata])
         (cuinat_mitjancant  [Cru])
         (Vitamina_C  0)
         (Fibra  0)
         (Greixos_saturats  3.3)
         (Potassi  341)
         (Calci  293)
         (Proteines  8.1)
         (Carbohidrats  12)
         (Vitamina_A  244)
         (Calories  122)
         (Ferro  0.1)
         (Colesterol  24)
         (Sodi  90)
         (Greixos_insaturats  1.6)
         (Greixos_totals  4.9)
         (Quantitat  "1 tassa")
         (Sucres  12.8)
         (Temporada_estiu  1)
         (Temporada_hivern  1)
         (Temporada_primavera  1)
         (Temporada_tardor  1)
    )

    ([] of Ingredient
    )

    ([] of Ingredient
    )

    ([] of Ingredient
    )

    ([] of Ingredient
    )

    ([] of Metode_coccio
    )

    ([] of Ingredient
    )

    ([] of Ingredient
    )

    ([] of Ingredient
    )

    ([Xocolata] of Ingredient
    )

    ([] of Ingredient
    )

)
