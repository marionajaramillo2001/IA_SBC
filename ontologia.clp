;;; ---------------------------------------------------------
;;; ontologia.clp
;;; Translated by owl2clips
;;; Translated to CLIPS from ontology ontologia.ttl
;;; :Date 17/05/2023 10:43:18

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
)

(defclass Plat
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot usos_e
        (type INTEGER)
        (create-accessor read-write)
        (default 10))
    (slot usos_d
        (type INTEGER)
        (create-accessor read-write)
        (default 10))
    (slot usos_s
        (type INTEGER)
        (create-accessor read-write)
        (default 10))
    (slot usos_setmanals
        (type INTEGER)
        (create-accessor read-write))
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
    (slot Es_beguda
        (type SYMBOL)
        (create-accessor read-write))
    (slot Es_postre
        (type SYMBOL)
        (create-accessor read-write))
    (slot Es_primer_plat
        (type SYMBOL)
        (create-accessor read-write))
    (slot Es_segon_plat
        (type SYMBOL)
        (create-accessor read-write))
    (slot Es_esmorzable
        (type SYMBOL)
        (create-accessor read-write))
    (slot Es_dinable
        (type SYMBOL)
        (create-accessor read-write))
    (slot Es_sopable
        (type SYMBOL)
        (create-accessor read-write))
    (slot Greixos_totals
        (type FLOAT)
        (create-accessor read-write))
    (slot Quantitat
        (type STRING)
        (create-accessor read-write))
    (slot Sucres
        (type FLOAT)
        (create-accessor read-write))
    (slot Temporada_estiu
        (type SYMBOL)
        (create-accessor read-write))
    (slot Temporada_hivern
        (type SYMBOL)
        (create-accessor read-write))
    (slot Temporada_primavera
        (type SYMBOL)
        (create-accessor read-write))
    (slot Temporada_tardor
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
        (type SYMBOL)
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
    (slot Pes
        (type FLOAT)
        (create-accessor read-write))
    (slot Nivell_activitat_fisica
        (type STRING)
        (create-accessor read-write))

    (slot Calories_diaries_recomanades
        (type FLOAT)
        (create-accessor read-write))
    (slot Sucres_mult
        (type FLOAT)
        (create-accessor read-write))
    (slot Fibra_mult
        (type FLOAT)
        (create-accessor read-write))
    (slot Greixos_mult
        (type FLOAT)
        (create-accessor read-write))
    (slot Colesterol_mult
        (type FLOAT)
        (create-accessor read-write))
    (slot Ferro_mult
        (type FLOAT)
        (create-accessor read-write))
    (slot Proteines_mult
        (type FLOAT)
        (create-accessor read-write))
)

(defclass Ingredient
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot Maxim_diari
        (type FLOAT)
        (create-accessor read-write))
    (slot Maxim_setmanal
        (type FLOAT)
        (create-accessor read-write))
)

(defclass Dinar
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot usos
        (type INTEGER)
        (create-accessor read-write)
        (default 4))
    (multislot dinar_conte
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Esmorzar
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot usos
        (type INTEGER)
        (create-accessor read-write)
        (default 4))
    (multislot esmorzar_conte
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Sopar
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (slot usos
        (type INTEGER)
        (create-accessor read-write)
        (default 4))
    (multislot sopar_conte
        (type INSTANCE)
        (create-accessor read-write))
)

(definstances instances
    ([Bullit] of Metode_coccio
    )

    ([Planxa] of Metode_coccio
    )

    ([Cru] of Metode_coccio
    )
    
    ([Estofat] of Metode_coccio
    )

    ([Forn] of Metode_coccio
    )

    ([Fregit] of Metode_coccio
    )

    ([Carn_blanca] of Ingredient
    )

    ([Carn_vermella] of Ingredient
    )

    ([Cereals_amb_gluten] of Ingredient
    )

    ([Cereals_sense_gluten] of Ingredient
    )

    ([Embotits] of Ingredient
    )

    ([Fruita] of Ingredient
    )

    ([Fruits_secs] of Ingredient
    )

    ([Hortalisses] of Ingredient
    )

    ([Lactics] of Ingredient
    )

    ([Lactics_vegetals] of Ingredient
    )

    ([Llegum] of Ingredient
    )

    ([Marisc] of Ingredient
    )

    ([Ous] of Ingredient
    )

    ([Peix_blanc] of Ingredient
    )

    ([Peix_blau] of Ingredient
    )

    ([Proteina_vegetal] of Ingredient
    )

    ([Tubercles] of Ingredient
    )

    ([Verdura] of Ingredient
    )

    ([Xocolata] of Ingredient
    )

    ([Dolcos/processats] of Ingredient
    )
    
    ([Llet_amb_cacau] of Plat (cuinat_amb [Lactics] [Xocolata]) (cuinat_mitjancant [Cru]) (Vitamina_C 0) (Fibra 0) (Greixos_saturats 3.3) (Potassi 341) (Calci 293) (Proteines 8.1) (Carbohidrats 12) (Vitamina_A 244) (Calories 122) (Ferro 0.1) (Colesterol 24) (Sodi 90) (Greixos_insaturats 1.6) (Greixos_totals 4.9) (Sucres 12.8) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda TRUE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre FALSE) (Es_esmorzable TRUE) (Es_dinable FALSE) (Es_sopable FALSE))
    ([Pa_amb_melmelada] of Plat (cuinat_amb [Cereals_amb_gluten] [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 0) (Fibra 1) (Greixos_saturats 0.2) (Potassi 51.1) (Calci 45) (Proteines 2.6) (Carbohidrats 28) (Vitamina_A 0) (Calories 131) (Ferro 1.1) (Colesterol 0) (Sodi 145) (Greixos_insaturats 0.7) (Greixos_totals 0.9) (Sucres 0) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre FALSE) (Es_esmorzable TRUE) (Es_dinable FALSE) (Es_sopable FALSE))
    ([Suc_de_taronja] of Plat (cuinat_amb [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 124) (Fibra 0.5) (Greixos_saturats 0.1) (Potassi 496) (Calci 27) (Proteines 1.7) (Carbohidrats 26) (Vitamina_A 496) (Calories 112) (Ferro 0.5) (Colesterol 0) (Sodi 2.5) (Greixos_insaturats 0.2) (Greixos_totals 0.3) (Sucres 20.9) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda TRUE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre FALSE) (Es_esmorzable TRUE) (Es_dinable FALSE) (Es_sopable FALSE))
    ([Cafe_amb_llet] of Plat (cuinat_amb [Lactics]) (cuinat_mitjancant [Cru]) (Vitamina_C 0) (Fibra 0) (Greixos_saturats 4.4) (Potassi 0) (Calci 240) (Proteines 7) (Carbohidrats 11) (Vitamina_A 300) (Calories 136) (Ferro 0) (Colesterol 30) (Sodi 104) (Greixos_insaturats 0) (Greixos_totals 7) (Sucres 9.6) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda TRUE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre TRUE) (Es_esmorzable TRUE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Galetes_integrals] of Plat (cuinat_amb [Dolcos/processats] [Cereals_amb_gluten]) (cuinat_mitjancant [Forn]) (Vitamina_C 0) (Fibra 2) (Greixos_saturats 1) (Potassi 50) (Calci 4) (Proteines 2) (Carbohidrats 13) (Vitamina_A 0) (Calories 99) (Ferro 0) (Colesterol 0) (Sodi 53) (Greixos_insaturats 0) (Greixos_totals 5) (Sucres 6) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre TRUE) (Es_esmorzable TRUE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Iogurt] of Plat (cuinat_amb [Lactics]) (cuinat_mitjancant [Cru]) (Vitamina_C 0) (Fibra 0) (Greixos_saturats 1.7) (Potassi 397) (Calci 311) (Proteines 8.9) (Carbohidrats 12) (Vitamina_A 196) (Calories 107) (Ferro 0.1) (Colesterol 10) (Sodi 119) (Greixos_insaturats 0.8) (Greixos_totals 2.6) (Sucres 12) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre TRUE) (Es_esmorzable TRUE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Granola] of Plat (cuinat_amb [Cereals_amb_gluten]) (cuinat_mitjancant [Cru]) (Vitamina_C 0) (Fibra 6) (Greixos_saturats 0.4) (Potassi 206) (Calci 53) (Proteines 6.3) (Carbohidrats 45) (Vitamina_A 0) (Calories 241) (Ferro 1.5) (Colesterol 0) (Sodi 26.9) (Greixos_insaturats 4.4) (Greixos_totals 6.3) (Sucres 15.2) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre FALSE) (Es_esmorzable TRUE) (Es_dinable FALSE) (Es_sopable FALSE))
    ([Entrepa_de_pernil_dolc] of Plat (cuinat_amb [Cereals_amb_gluten] [Embotits]) (cuinat_mitjancant [Cru]) (Vitamina_C 0) (Fibra 3.7) (Greixos_saturats 3) (Potassi 400) (Calci 127) (Proteines 17.6) (Carbohidrats 38.4) (Vitamina_A 0) (Calories 327) (Ferro 3.5) (Colesterol 40) (Sodi 1000) (Greixos_insaturats 7.5) (Greixos_totals 11.2) (Sucres 4.8) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre FALSE) (Es_esmorzable TRUE) (Es_dinable FALSE) (Es_sopable FALSE))
    ([Poma] of Plat (cuinat_amb [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 8) (Fibra 4.4) (Greixos_saturats 0.1) (Potassi 194) (Calci 11) (Proteines 0.5) (Carbohidrats 25) (Vitamina_A 98) (Calories 95) (Ferro 0.2) (Colesterol 0) (Sodi 1.8) (Greixos_insaturats 0.1) (Greixos_totals 0.3) (Sucres 19) (Temporada_estiu FALSE) (Temporada_hivern TRUE) (Temporada_primavera FALSE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre TRUE) (Es_esmorzable TRUE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Mandarina] of Plat (cuinat_amb [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 41) (Fibra 3.2) (Greixos_saturats 0.1) (Potassi 292) (Calci 66) (Proteines 1.4) (Carbohidrats 24) (Vitamina_A 1034) (Calories 94) (Ferro 0.3) (Colesterol 0) (Sodi 3.6) (Greixos_insaturats 0.2) (Greixos_totals 0.5) (Sucres 18.6) (Temporada_estiu FALSE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor FALSE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre TRUE) (Es_esmorzable TRUE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Kiwi] of Plat (cuinat_amb [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 64) (Fibra 2.1) (Greixos_saturats 0) (Potassi 215) (Calci 23) (Proteines 0.8) (Carbohidrats 10) (Vitamina_A 59) (Calories 42) (Ferro 0.2) (Colesterol 0) (Sodi 2.1) (Greixos_insaturats 0.2) (Greixos_totals 0.4) (Sucres 6.2) (Temporada_estiu FALSE) (Temporada_hivern TRUE) (Temporada_primavera FALSE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre TRUE) (Es_esmorzable TRUE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Sindria] of Plat (cuinat_amb [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 12) (Fibra 1.1) (Greixos_saturats 0.1) (Potassi 320) (Calci 20) (Proteines 1.7) (Carbohidrats 22) (Vitamina_A 878) (Calories 86) (Ferro 0.7) (Colesterol 0) (Sodi 2.9) (Greixos_insaturats 0.1) (Greixos_totals 0.4) (Sucres 18) (Temporada_estiu TRUE) (Temporada_hivern FALSE) (Temporada_primavera FALSE) (Temporada_tardor FALSE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre TRUE) (Es_esmorzable TRUE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Cireres] of Plat (cuinat_amb [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 12) (Fibra 3.4) (Greixos_saturats 0) (Potassi 364) (Calci 22) (Proteines 1.8) (Carbohidrats 26) (Vitamina_A 107) (Calories 104) (Ferro 0.6) (Colesterol 0) (Sodi 0) (Greixos_insaturats 0) (Greixos_totals 0.4) (Sucres 22) (Temporada_estiu TRUE) (Temporada_hivern FALSE) (Temporada_primavera TRUE) (Temporada_tardor FALSE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre TRUE) (Es_esmorzable TRUE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Pressec] of Plat (cuinat_amb [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 10) (Fibra 2.6) (Greixos_saturats 0) (Potassi 332) (Calci 11) (Proteines 1.6) (Carbohidrats 17) (Vitamina_A 488) (Calories 68) (Ferro 0.4) (Colesterol 0) (Sodi 0) (Greixos_insaturats 0.3) (Greixos_totals 0.4) (Sucres 15) (Temporada_estiu TRUE) (Temporada_hivern FALSE) (Temporada_primavera TRUE) (Temporada_tardor FALSE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre TRUE) (Es_esmorzable TRUE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Taronja] of Plat (cuinat_amb [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 98) (Fibra 3.1) (Greixos_saturats 0) (Potassi 232) (Calci 74) (Proteines 1.3) (Carbohidrats 21.6) (Vitamina_A 414) (Calories 86) (Ferro 0.2) (Colesterol 0) (Sodi 2.4) (Greixos_insaturats 0) (Greixos_totals 0.2) (Sucres 0) (Temporada_estiu FALSE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre TRUE) (Es_esmorzable TRUE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Smoothie] of Plat (cuinat_amb [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 50) (Fibra 2.8) (Greixos_saturats 0.9) (Potassi 544.4) (Calci 161) (Proteines 5.5) (Carbohidrats 34) (Vitamina_A 200) (Calories 161) (Ferro 0.4) (Colesterol 5) (Sodi 59) (Greixos_insaturats 0.5) (Greixos_totals 1.7) (Sucres 24) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda TRUE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre TRUE) (Es_esmorzable TRUE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Pa_de_pessic] of Plat (cuinat_amb [Cereals_amb_gluten]) (cuinat_mitjancant [Forn]) (Vitamina_C 0) (Fibra 0.4) (Greixos_saturats 3) (Potassi 90.9) (Calci 29) (Proteines 3.1) (Carbohidrats 33) (Vitamina_A 172) (Calories 215) (Ferro 0.9) (Colesterol 40) (Sodi 230) (Greixos_insaturats 3.9) (Greixos_totals 8.5) (Sucres 20) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre TRUE) (Es_esmorzable TRUE) (Es_dinable TRUE) (Es_sopable FALSE))
    ([Fruits_secs_plat] of Plat (cuinat_amb [Fruits_secs]) (cuinat_mitjancant [Cru]) (Vitamina_C 0) (Fibra 2) (Greixos_saturats 2.5) (Potassi 179.2) (Calci 33) (Proteines 5.7) (Carbohidrats 6) (Vitamina_A 0) (Calories 172) (Ferro 0.7) (Colesterol 0) (Sodi 77) (Greixos_insaturats 12.2) (Greixos_totals 15) (Sucres 1.2) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre FALSE) (Es_esmorzable TRUE) (Es_dinable FALSE) (Es_sopable FALSE))
    ([Torrades_amb_crema_de_cacahuet] of Plat (cuinat_amb [Cereals_amb_gluten] [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 0) (Fibra 2.5) (Greixos_saturats 2.6) (Potassi 196) (Calci 74) (Proteines 9.1) (Carbohidrats 27) (Vitamina_A 0) (Calories 255) (Ferro 2.1) (Colesterol 0) (Sodi 324) (Greixos_insaturats 8.7) (Greixos_totals 13) (Sucres 4) (Temporada_estiu TRUE) (Temporada_hivern FALSE) (Temporada_primavera FALSE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre FALSE) (Es_esmorzable TRUE) (Es_dinable FALSE) (Es_sopable FALSE))
    ([Torrades_amb_alvocat] of Plat (cuinat_amb [Cereals_amb_gluten] [Fruits secs]) (cuinat_mitjancant [Cru]) (Vitamina_C 3) (Fibra 8.1) (Greixos_saturats 2.4) (Potassi 570) (Calci 75) (Proteines 5.8) (Carbohidrats 30) (Vitamina_A 0) (Calories 283) (Ferro 2.1) (Colesterol 0) (Sodi 658) (Greixos_insaturats 12.8) (Greixos_totals 16.5) (Sucres 2.7) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre FALSE) (Es_esmorzable TRUE) (Es_dinable FALSE) (Es_sopable FALSE))
    ([Amanida_de_patates] of Plat (cuinat_amb [Tubercles] [Hortalisses]) (cuinat_mitjancant [Bullit]) (Vitamina_C 25) (Fibra 3.3) (Greixos_saturats 3.6) (Potassi 635) (Calci 48) (Proteines 6.7) (Carbohidrats 28) (Vitamina_A 388) (Calories 358) (Ferro 1.6) (Colesterol 170) (Sodi 1323) (Greixos_insaturats 15) (Greixos_totals 21) (Sucres 0) (Temporada_estiu TRUE) (Temporada_hivern FALSE) (Temporada_primavera TRUE) (Temporada_tardor FALSE) (Es_beguda FALSE) (Es_primer_plat TRUE) (Es_segon_plat FALSE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Xai_a_la_planxa] of Plat (cuinat_amb [Carn_vermella]) (cuinat_mitjancant [Planxa]) (Vitamina_C 0) (Fibra 0) (Greixos_saturats 7.5) (Potassi 263) (Calci 14) (Proteines 21) (Carbohidrats 0) (Vitamina_A 0) (Calories 250) (Ferro 1.6) (Colesterol 82) (Sodi 61) (Greixos_insaturats 8.8) (Greixos_totals 18) (Sucres 0) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat TRUE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Espaguetis_carbonara] of Plat (cuinat_amb [Cereals_amb_gluten] [Làctics] [Carn_vermella]) (cuinat_mitjancant [Bullit]) (Vitamina_C 0) (Fibra 3.8) (Greixos_saturats 5.7) (Potassi 193.1) (Calci 191) (Proteines 22) (Carbohidrats 66) (Vitamina_A 0) (Calories 509) (Ferro 3.2) (Colesterol 93) (Sodi 482) (Greixos_insaturats 9.3) (Greixos_totals 16.5) (Sucres 1.3) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat TRUE) (Es_segon_plat TRUE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Pit_de_pollastre_al_forn] of Plat (cuinat_amb [Carn_blanca]) (cuinat_mitjancant [Forn]) (Vitamina_C 1) (Fibra 0) (Greixos_saturats 1.2) (Potassi 307) (Calci 18) (Proteines 37) (Carbohidrats 0) (Vitamina_A 23) (Calories 198) (Ferro 1.2) (Colesterol 102) (Sodi 89) (Greixos_insaturats 3) (Greixos_totals 4.3) (Sucres 0) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat TRUE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Amanida_de_cigrons] of Plat (cuinat_amb [Llegum] [Hortalisses]) (cuinat_mitjancant [Cru]) (Vitamina_C 24) (Fibra 10) (Greixos_saturats 1.7) (Potassi 324) (Calci 82) (Proteines 11) (Carbohidrats 37) (Vitamina_A 1000) (Calories 301) (Ferro 1.8) (Colesterol 0) (Sodi 460) (Greixos_insaturats 10) (Greixos_totals 13) (Sucres 8) (Temporada_estiu TRUE) (Temporada_hivern FALSE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat TRUE) (Es_segon_plat FALSE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Sipia_a_la_planxa] of Plat (cuinat_amb [Peix_blau]) (cuinat_mitjancant [Planxa]) (Vitamina_C 6) (Fibra 0) (Greixos_saturats 0.3) (Potassi 902) (Calci 255) (Proteines 46.7) (Carbohidrats 316) (Vitamina_A 424) (Calories 223) (Ferro 15) (Colesterol 316) (Sodi 1053) (Greixos_insaturats 0.6) (Greixos_totals 2) (Sucres 0) (Temporada_estiu TRUE) (Temporada_hivern FALSE) (Temporada_primavera TRUE) (Temporada_tardor FALSE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat TRUE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Sopa_freda_de_meló_amb_pernil] of Plat (cuinat_amb [Embotits] [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 10) (Fibra 3) (Greixos_saturats 2) (Potassi 300) (Calci 0) (Proteines 10) (Carbohidrats 15) (Vitamina_A 800) (Calories 162) (Ferro 0.7) (Colesterol 21) (Sodi 600) (Greixos_insaturats 0) (Greixos_totals 6.7) (Sucres 0) (Temporada_estiu TRUE) (Temporada_hivern FALSE) (Temporada_primavera TRUE) (Temporada_tardor FALSE) (Es_beguda FALSE) (Es_primer_plat TRUE) (Es_segon_plat FALSE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Vedella_a_la_planxa] of Plat (cuinat_amb [Carn_vermella]) (cuinat_mitjancant [Planxa]) (Vitamina_C ) (Fibra 0) (Greixos_saturats 6.3) (Potassi 230) (Calci 11) (Proteines 22) (Carbohidrats 0) (Vitamina_A 16) (Calories 220) (Ferro 1.9) (Colesterol 74) (Sodi 43) (Greixos_insaturats 6.8) (Greixos_totals 14) (Sucres 0) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat TRUE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Amanida_de_llenties] of Plat (cuinat_amb [Llegum] [Hortalisses]) (cuinat_mitjancant [Cru]) (Vitamina_C 24) (Fibra 11) (Greixos_saturats 1.4) (Potassi 628) (Calci 52) (Proteines 12) (Carbohidrats 31) (Vitamina_A 1000) (Calories 255) (Ferro 4.8) (Colesterol 0) (Sodi 749) (Greixos_insaturats 8.5) (Greixos_totals 10) (Sucres 4.8) (Temporada_estiu TRUE) (Temporada_hivern FALSE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat TRUE) (Es_segon_plat FALSE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Lasanya_de_carn] of Plat (cuinat_amb [Carn_vermella] [Làctics] [Cereals_amb_gluten]) (cuinat_mitjancant [Forn]) (Vitamina_C 64) (Fibra 3.9) (Greixos_saturats 15.3) (Potassi 1041.4) (Calci 527) (Proteines 44) (Carbohidrats 35) (Vitamina_A 0) (Calories 602) (Ferro 4.6) (Colesterol 166) (Sodi 1576) (Greixos_insaturats 13.6) (Greixos_totals 32) (Sucres 11) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat TRUE) (Es_segon_plat TRUE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Peix_fregit] of Plat (cuinat_amb [Peix_blanc]) (cuinat_mitjancant [Fregit]) (Vitamina_C ) (Fibra 0.8) (Greixos_saturats 3.8) (Potassi 384) (Calci 49) (Proteines 20.8) (Carbohidrats 9.1) (Vitamina_A 0) (Calories 258) (Ferro 1.6) (Colesterol 80) (Sodi 317.2) (Greixos_insaturats 9.5) (Greixos_totals 15.6) (Sucres 0) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat TRUE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Gaspatxo] of Plat (cuinat_amb [Hortalisses]) (cuinat_mitjancant [Cru]) (Vitamina_C 7) (Fibra 4.4) (Greixos_saturats 2.3) (Potassi 931) (Calci 59) (Proteines 4.1) (Carbohidrats 20) (Vitamina_A 293) (Calories 243) (Ferro 1.7) (Colesterol 0) (Sodi 1599) (Greixos_insaturats 13.9) (Greixos_totals 17) (Sucres 13) (Temporada_estiu TRUE) (Temporada_hivern FALSE) (Temporada_primavera FALSE) (Temporada_tardor FALSE) (Es_beguda FALSE) (Es_primer_plat TRUE) (Es_segon_plat FALSE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Paella_valenciana] of Plat (cuinat_amb [Marisc] [Cereals_sense_gluten] [Hortalisses]) (cuinat_mitjancant [Bullit]) (Vitamina_C ) (Fibra 0.8) (Greixos_saturats 6.7) (Potassi 558) (Calci 32.9) (Proteines 41.3) (Carbohidrats 45) (Vitamina_A 0) (Calories 588) (Ferro 2.5) (Colesterol 184) (Sodi 1145) (Greixos_insaturats 15.2) (Greixos_totals 25.2) (Sucres 1.9) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat TRUE) (Es_segon_plat TRUE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Entrepa_de_formatge] of Plat (cuinat_amb [Cereals_amb_gluten] [Lactics]) (cuinat_mitjancant [Cru]) (Vitamina_C ) (Fibra 1.4) (Greixos_saturats 13) (Potassi 185) (Calci 647) (Proteines 12) (Carbohidrats 28) (Vitamina_A 100) (Calories 366) (Ferro 2.2) (Colesterol 63) (Sodi 886) (Greixos_insaturats 7.6) (Greixos_totals 23) (Sucres 5.4) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre FALSE) (Es_esmorzable TRUE) (Es_dinable FALSE) (Es_sopable FALSE))
    ([Gelat] of Plat (cuinat_amb [Dolcos/processats] [Lactics]) (cuinat_mitjancant [Cru]) (Vitamina_C ) (Fibra 0.7) (Greixos_saturats 7.7) (Potassi 210) (Calci 135) (Proteines 3.7) (Carbohidrats 24.8) (Vitamina_A 554) (Calories 218) (Ferro 0.1) (Colesterol 46.4) (Sodi 84.8) (Greixos_insaturats 3.6) (Greixos_totals 12) (Sucres 22.4) (Temporada_estiu TRUE) (Temporada_hivern FALSE) (Temporada_primavera FALSE) (Temporada_tardor FALSE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre TRUE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Crema_de_carbassa] of Plat (cuinat_amb [Verdura]) (cuinat_mitjancant [Bullit]) (Vitamina_C 11) (Fibra 5.7) (Greixos_saturats 6.1) (Potassi 708) (Calci 77) (Proteines 9.5) (Carbohidrats 27) (Vitamina_A 8000) (Calories 241) (Ferro 3.2) (Colesterol 32) (Sodi 1033) (Greixos_insaturats 4) (Greixos_totals 11) (Sucres 12) (Temporada_estiu FALSE) (Temporada_hivern TRUE) (Temporada_primavera FALSE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat TRUE) (Es_segon_plat FALSE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Lluc_a_la_planxa] of Plat (cuinat_amb [Peix_blanc]) (cuinat_mitjancant [Planxa]) (Vitamina_C ) (Fibra 0) (Greixos_saturats 0.2) (Potassi 526) (Calci 21) (Proteines 30) (Carbohidrats 0) (Vitamina_A 26) (Calories 135) (Ferro 0.3) (Colesterol 99) (Sodi 392) (Greixos_insaturats 0.3) (Greixos_totals 0.8) (Sucres 0) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat TRUE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Truita_de_patates] of Plat (cuinat_amb [Ous] [Tubercles]) (cuinat_mitjancant [Fregit]) (Vitamina_C 0) (Fibra 3.2) (Greixos_saturats 2.9) (Potassi 782) (Calci 48) (Proteines 9) (Carbohidrats 30) (Vitamina_A 0) (Calories 306) (Ferro 2.2) (Colesterol 156) (Sodi 183) (Greixos_insaturats 15) (Greixos_totals 17.3) (Sucres 2.6) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat TRUE) (Es_segon_plat TRUE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Broquetes_de_pollastre] of Plat (cuinat_amb [Carn_blanca]) (cuinat_mitjancant [Planxa]) (Vitamina_C 1) (Fibra 2.3) (Greixos_saturats 0.5) (Potassi 431) (Calci 41) (Proteines 35) (Carbohidrats 35) (Vitamina_A 23) (Calories 220) (Ferro 1.2) (Colesterol 37) (Sodi 760) (Greixos_insaturats 1.1) (Greixos_totals 2.2) (Sucres 27) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat TRUE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Pizza_de_pernil_i_formatge] of Plat (cuinat_amb [Cereals_amb_gluten] [Embotits] [Làctics]) (cuinat_mitjancant [Forn]) (Vitamina_C 0) (Fibra 3.9) (Greixos_saturats 7.6) (Potassi 292) (Calci 320) (Proteines 19) (Carbohidrats 57) (Vitamina_A 0) (Calories 452) (Ferro 4.2) (Colesterol 29) (Sodi 1017) (Greixos_insaturats 7.3) (Greixos_totals 16) (Sucres 6) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat TRUE) (Es_segon_plat TRUE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Pasta_fresca_amb_parmesa] of Plat (cuinat_amb [Cereals_amb_gluten] [Làctics]) (cuinat_mitjancant [Bullit]) (Vitamina_C 4) (Fibra 4.5) (Greixos_saturats 7.5) (Potassi 300) (Calci 267) (Proteines 19.5) (Carbohidrats 55) (Vitamina_A 1) (Calories 405) (Ferro 1.5) (Colesterol 75) (Sodi 765) (Greixos_insaturats 0) (Greixos_totals 12) (Sucres 4.5) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat TRUE) (Es_segon_plat TRUE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Llom_arrebossat] of Plat (cuinat_amb [Carn_blanca]) (cuinat_mitjancant [Fregit]) (Vitamina_C 1) (Fibra 1.5) (Greixos_saturats 4.5) (Potassi 358) (Calci 80) (Proteines 26) (Carbohidrats 22) (Vitamina_A 9) (Calories 400) (Ferro 2.5) (Colesterol 124) (Sodi 617) (Greixos_insaturats 15) (Greixos_totals 22) (Sucres 1.7) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat TRUE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Pure_de_patata] of Plat (cuinat_amb [Tubercles] [Lactics]) (cuinat_mitjancant [Bullit]) (Vitamina_C 22) (Fibra 3.2) (Greixos_saturats 1.6) (Potassi 684) (Calci 44) (Proteines 4.1) (Carbohidrats 36) (Vitamina_A 378) (Calories 237) (Ferro 0.6) (Colesterol 0) (Sodi 699) (Greixos_insaturats 5) (Greixos_totals 8.8) (Sucres 3) (Temporada_estiu FALSE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat TRUE) (Es_segon_plat FALSE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Llenties_estofades_amb_verdures] of Plat (cuinat_amb [Llegum] [Verdura]) (cuinat_mitjancant [Estofat]) (Vitamina_C 0) (Fibra 16) (Greixos_saturats 0.2) (Potassi 1029) (Calci 105) (Proteines 16) (Carbohidrats 45) (Vitamina_A 0) (Calories 241) (Ferro 6.9) (Colesterol 0) (Sodi 503) (Greixos_insaturats 0.6) (Greixos_totals 1) (Sucres 7.2) (Temporada_estiu FALSE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat TRUE) (Es_segon_plat FALSE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Croquetes_de_pernil] of Plat (cuinat_amb [Cereals_amb_gluten] [Lactics] [Embotits]) (cuinat_mitjancant [Fregit]) (Vitamina_C 0) (Fibra 1.7) (Greixos_saturats 1.8) (Potassi 529) (Calci 93) (Proteines 16.5) (Carbohidrats 25.2) (Vitamina_A 0) (Calories 303) (Ferro 2.1) (Colesterol 84) (Sodi 1314) (Greixos_insaturats 11.5) (Greixos_totals 15) (Sucres 1.5) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat TRUE) (Es_segon_plat FALSE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Rissotto] of Plat (cuinat_amb [Cereals_sense_gluten] [Lactics]) (cuinat_mitjancant [Bullit]) (Vitamina_C 0) (Fibra 1.5) (Greixos_saturats 7.4) (Potassi 342) (Calci 164) (Proteines 14) (Carbohidrats 54) (Vitamina_A 0) (Calories 413) (Ferro 1.5) (Colesterol 36) (Sodi 1451) (Greixos_insaturats 4.9) (Greixos_totals 13) (Sucres 4.7) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat TRUE) (Es_segon_plat TRUE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Muffin] of Plat (cuinat_amb [Cereals_amb_gluten] [Lactics]) (cuinat_mitjancant [Forn]) (Vitamina_C 2) (Fibra 5.2) (Greixos_saturats 5.9) (Potassi 572) (Calci 71) (Proteines 7.9) (Carbohidrats 55) (Vitamina_A 125) (Calories 305) (Ferro 4.7) (Colesterol 10) (Sodi 444) (Greixos_insaturats 6.6) (Greixos_totals 8.4) (Sucres 9.3) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre TRUE) (Es_esmorzable TRUE) (Es_dinable TRUE) (Es_sopable FALSE))
    ([Pesols_amb_patata] of Plat (cuinat_amb [Verdura] [Tubercles]) (cuinat_mitjancant [Bullit]) (Vitamina_C 48) (Fibra 17.6) (Greixos_saturats 0.1) (Potassi 867) (Calci 86) (Proteines 17.2) (Carbohidrats 50) (Vitamina_A 10080) (Calories 268) (Ferro 5) (Colesterol 0) (Sodi 9.6) (Greixos_insaturats 0.4) (Greixos_totals 0.7) (Sucres 19) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat TRUE) (Es_segon_plat FALSE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Menestra] of Plat (cuinat_amb [Verdura]) (cuinat_mitjancant [Bullit]) (Vitamina_C 100) (Fibra 3.4) (Greixos_saturats 2.4) (Potassi 380) (Calci 43) (Proteines 5.8) (Carbohidrats 26) (Vitamina_A 3106) (Calories 159) (Ferro 1.9) (Colesterol 0) (Sodi 1219) (Greixos_insaturats 2.6) (Greixos_totals 3.8) (Sucres 4) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat TRUE) (Es_segon_plat FALSE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Salmo_a_la_planxa] of Plat (cuinat_amb [Peix_blau]) (cuinat_mitjancant [Planxa]) (Vitamina_C 0) (Fibra 0) (Greixos_saturats 12.3) (Potassi 697.3) (Calci 27) (Proteines 40) (Carbohidrats 0) (Vitamina_A 0) (Calories 374) (Ferro 0.6) (Colesterol 114.1) (Sodi 110.4) (Greixos_insaturats 7.6) (Greixos_totals 22.4) (Sucres 0) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat TRUE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Flam] of Plat (cuinat_amb [Lactics]) (cuinat_mitjancant [Cru]) (Vitamina_C 0) (Fibra 0) (Greixos_saturats 2.9) (Potassi 291) (Calci 196) (Proteines 5.6) (Carbohidrats 25) (Vitamina_A 830) (Calories 172) (Ferro 0.5) (Colesterol 72) (Sodi 118) (Greixos_insaturats 2) (Greixos_totals 5.6) (Sucres 6.8) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat FALSE) (Es_postre TRUE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Broquil_amb_patata] of Plat (cuinat_amb [Verdura] [Tubercles]) (cuinat_mitjancant [Bullit]) (Vitamina_C 446) (Fibra 13) (Greixos_saturats 0.2) (Potassi 1580) (Calci 235) (Proteines 14.1) (Carbohidrats 33) (Vitamina_A 3125) (Calories 250) (Ferro 4) (Colesterol 0) (Sodi 165) (Greixos_insaturats 0.3) (Greixos_totals 1.9) (Sucres 8.5) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat TRUE) (Es_segon_plat FALSE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Tofu] of Plat (cuinat_amb [Proteïna_vegetal]) (cuinat_mitjancant [Fregit]) (Vitamina_C 0) (Fibra 3.3) (Greixos_saturats 2.5) (Potassi 124.2) (Calci 315) (Proteines 15.9) (Carbohidrats 7.5) (Vitamina_A 23) (Calories 231) (Ferro 4.2) (Colesterol 0) (Sodi 13.5) (Greixos_insaturats 12.9) (Greixos_totals 17.1) (Sucres 2.3) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat TRUE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))
    ([Hamburguesa_vegana] of Plat (cuinat_amb [Proteïna_vegetal]) (cuinat_mitjancant [Fregit]) (Vitamina_C 0) (Fibra 5.5) (Greixos_saturats 3.9) (Potassi 399) (Calci 160) (Proteines 17) (Carbohidrats 42) (Vitamina_A 0) (Calories 298) (Ferro 3.9) (Colesterol 5) (Sodi 711) (Greixos_insaturats 1.9) (Greixos_totals 7) (Sucres 2.5) (Temporada_estiu TRUE) (Temporada_hivern TRUE) (Temporada_primavera TRUE) (Temporada_tardor TRUE) (Es_beguda FALSE) (Es_primer_plat FALSE) (Es_segon_plat TRUE) (Es_postre FALSE) (Es_esmorzable FALSE) (Es_dinable TRUE) (Es_sopable TRUE))

    ([Celiac] of Malaltia (incompatible_amb [Cereals_amb_gluten]))
    ([Alergia_fruits_secs] of Malaltia (incompatible_amb [Fruits_secs]))
    ([Intolerancia_lactosa] of Malaltia (incompatible_amb [Lactics]))
    ([Alergia_mariscs] of Malaltia (incompatible_amb [Marisc]))
    ([Vegetaria] of Malaltia (incompatible_amb [Carn_vermella] [Carn_blanca] [Peix_blanc] [Peix_blau] [Marisc] [Embotits]))
    ([Diabetis] of Malaltia)
    ([Hipertensio] of Malaltia)
    ([Colesterol_alt] of Malaltia)
    ([Anemia] of Malaltia)
    ([Ulceres] of Malaltia (incompatible_amb [Carn_vermella] [Peix_blau] [Lactics] [Embotits] [Fregit]))
)
