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
    (slot Macronutrients
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
    (multislot Greixos_totals
        (type FLOAT)
        (create-accessor read-write))
    (multislot Quantitat
        (type STRING)
        (create-accessor read-write))
    (multislot Sucres
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
    (multislot dinar_conte
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Esmorzar
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot esmorzar_conte
        (type INSTANCE)
        (create-accessor read-write))
)

(defclass Sopar
    (is-a USER)
    (role concrete)
    (pattern-match reactive)
    (multislot sopar_conte
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

    ([Bullit] of Metode_coccio
    )

    ([Carn_blanca] of Ingredient
    )

    ([Carn_vermella] of Ingredient
    )

    ([Cereals_amb_gluten] of Ingredient
    )

    ([Cereals_sense_gluten] of Ingredient
    )

    ([Cru] of Metode_coccio
    )

    ([Embotits] of Ingredient
    )

    ([Estofat] of Metode_coccio
    )

    ([Forn] of Metode_coccio
    )

    ([Fregit] of Metode_coccio
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

    ([Planxa] of Metode_coccio
    )

    ([Proteina_vegetal] of Ingredient
    )

    ([Tubercles] of Ingredient
    )

    ([Verdura] of Ingredient
    )

    ([Xocolata] of Ingredient
    )

    ([Dolços/processats] of Ingredient
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
    ([Pa_amb_melmelada] of Plat (cuinat_amb [Cereals_amb_gluten] [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 0) (Fibra 1) (Greixos_saturats 0.2) (Potassi 51.1) (Calci 45) (Proteines 45079) (Carbohidrats 28) (Vitamina_A 0) (Calories 131) (Ferro 44927) (Colesterol 0) (Sodi 145) (Greixos_insaturats 0.7) (Greixos_totals 0.9) (Sucres 0) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Suc_de_taronja] of Plat (cuinat_amb [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 124) (Fibra 0.5) (Greixos_saturats 0.1) (Potassi 496) (Calci 27) (Proteines 45108) (Carbohidrats 26) (Vitamina_A 496) (Calories 112) (Ferro 0.5) (Colesterol 0) (Sodi 45048) (Greixos_insaturats 0.2) (Greixos_totals 0.3) (Sucres 45189) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Cafè_amb_llet] of Plat (cuinat_amb [Làctics]) (cuinat_mitjancant [Cru]) (Vitamina_C 0) (Fibra 0) (Greixos_saturats 45020) (Potassi 0) (Calci 240) (Proteines 7) (Carbohidrats 11) (Vitamina_A 300) (Calories 136) (Ferro 0) (Colesterol 30) (Sodi 104) (Greixos_insaturats 0) (Greixos_totals 7) (Sucres 45086) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Galetes_integrals] of Plat (cuinat_amb [Dolços/processats] [Cereals_amb_gluten]) (cuinat_mitjancant [Forn]) (Vitamina_C 0) (Fibra 2) (Greixos_saturats 1) (Potassi 50) (Calci 4) (Proteines 2) (Carbohidrats 13) (Vitamina_A 0) (Calories 99) (Ferro 0) (Colesterol 0) (Sodi 53) (Greixos_insaturats 0) (Greixos_totals 5) (Sucres 6) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Iogurt] of Plat (cuinat_amb [Làctics]) (cuinat_mitjancant [Cru]) (Vitamina_C 0) (Fibra ) (Greixos_saturats 45108) (Potassi 397) (Calci 311) (Proteines 45177) (Carbohidrats 12) (Vitamina_A 196) (Calories 107) (Ferro 0.1) (Colesterol 10) (Sodi 119) (Greixos_insaturats 0.8) (Greixos_totals 45079) (Sucres 12) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Granola] of Plat (cuinat_amb [Cereals_amb_gluten]) (cuinat_mitjancant [Cru]) (Vitamina_C 0) (Fibra 6) (Greixos_saturats 0.4) (Potassi 206) (Calci 53) (Proteines 44991) (Carbohidrats 45) (Vitamina_A 0) (Calories 241) (Ferro 45047) (Colesterol 0) (Sodi 45195) (Greixos_insaturats 45020) (Greixos_totals 44991) (Sucres 44972) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Entrepà_de_pernil_dolç] of Plat (cuinat_amb [Cereals_amb_gluten] [Embotits]) (cuinat_mitjancant [Cru]) (Vitamina_C 0) (Fibra 45110) (Greixos_saturats 3) (Potassi 400) (Calci 127) (Proteines 45094) (Carbohidrats 38.4) (Vitamina_A 0) (Calories 327) (Ferro 45049) (Colesterol 40) (Sodi 1000) (Greixos_insaturats 45053) (Greixos_totals 44968) (Sucres 45142) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Poma] of Plat (cuinat_amb [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 8) (Fibra 45020) (Greixos_saturats 0.1) (Potassi 194) (Calci 11) (Proteines 0.5) (Carbohidrats 25) (Vitamina_A 98) (Calories 95) (Ferro 0.2) (Colesterol 0) (Sodi 45139) (Greixos_insaturats 0.1) (Greixos_totals 0.3) (Sucres 19) (Temporada_estiu 0) (Temporada_hivern 1) (Temporada_primavera 0) (Temporada_tardor 1))
    ([Mandarina] of Plat (cuinat_amb [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 41) (Fibra 44960) (Greixos_saturats 0.1) (Potassi 292) (Calci 66) (Proteines 45017) (Carbohidrats 24) (Vitamina_A 1034) (Calories 94) (Ferro 0.3) (Colesterol 0) (Sodi 45080) (Greixos_insaturats 0.2) (Greixos_totals 0.5) (Sucres 45095) (Temporada_estiu 0) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 0))
    ([Kiwi] of Plat (cuinat_amb [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 64) (Fibra 44928) (Greixos_saturats 0) (Potassi 215) (Calci 23) (Proteines 0.8) (Carbohidrats 10) (Vitamina_A 59) (Calories 42) (Ferro 0.2) (Colesterol 0) (Sodi 44928) (Greixos_insaturats 0.2) (Greixos_totals 0.4) (Sucres 44963) (Temporada_estiu 0) (Temporada_hivern 1) (Temporada_primavera 0) (Temporada_tardor 1))
    ([Síndria] of Plat (cuinat_amb [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 12) (Fibra 44927) (Greixos_saturats 0.1) (Potassi 320) (Calci 20) (Proteines 45108) (Carbohidrats 22) (Vitamina_A 878) (Calories 86) (Ferro 0.7) (Colesterol 0) (Sodi 45171) (Greixos_insaturats 0.1) (Greixos_totals 0.4) (Sucres 18) (Temporada_estiu 1) (Temporada_hivern 0) (Temporada_primavera 0) (Temporada_tardor 0))
    ([Cireres] of Plat (cuinat_amb [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 12) (Fibra 45019) (Greixos_saturats 0) (Potassi 364) (Calci 22) (Proteines 45139) (Carbohidrats 26) (Vitamina_A 107) (Calories 104) (Ferro 0.6) (Colesterol 0) (Sodi ) (Greixos_insaturats 0) (Greixos_totals 0.4) (Sucres 22) (Temporada_estiu 1) (Temporada_hivern 0) (Temporada_primavera 1) (Temporada_tardor 0))
    ([Préssec] of Plat (cuinat_amb [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 10) (Fibra 45079) (Greixos_saturats 0) (Potassi 332) (Calci 11) (Proteines 45078) (Carbohidrats 17) (Vitamina_A 488) (Calories 68) (Ferro 0.4) (Colesterol 0) (Sodi ) (Greixos_insaturats 0.3) (Greixos_totals 0.4) (Sucres 15) (Temporada_estiu 1) (Temporada_hivern 0) (Temporada_primavera 1) (Temporada_tardor 0))
    ([Taronja] of Plat (cuinat_amb [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 98) (Fibra 44929) (Greixos_saturats 0) (Potassi 232) (Calci 74) (Proteines 44986) (Carbohidrats 45098) (Vitamina_A 414) (Calories 86) (Ferro 0.2) (Colesterol 0) (Sodi 45017) (Greixos_insaturats 0) (Greixos_totals 0.2) (Sucres ) (Temporada_estiu 0) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Smoothie] of Plat (cuinat_amb [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 50) (Fibra 45140) (Greixos_saturats 0.9) (Potassi 544.4) (Calci 161) (Proteines 45051) (Carbohidrats 34) (Vitamina_A 200) (Calories 161) (Ferro 0.4) (Colesterol 5) (Sodi 59) (Greixos_insaturats 0.5) (Greixos_totals 45108) (Sucres 24) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Pa_de_pessic] of Plat (cuinat_amb [Cereals_amb_gluten]) (cuinat_mitjancant [Forn]) (Vitamina_C 0) (Fibra 0.4) (Greixos_saturats 3) (Potassi 90.9) (Calci 29) (Proteines 44929) (Carbohidrats 33) (Vitamina_A 172) (Calories 215) (Ferro 0.9) (Colesterol 40) (Sodi 230) (Greixos_insaturats 45172) (Greixos_totals 45054) (Sucres 20) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Fruits_secs_plat] of Plat (cuinat_amb [Fruits_secs]) (cuinat_mitjancant [Cru]) (Vitamina_C 0) (Fibra 2) (Greixos_saturats 45048) (Potassi 179.2) (Calci 33) (Proteines 45112) (Carbohidrats 6) (Vitamina_A 0) (Calories 172) (Ferro 0.7) (Colesterol 0) (Sodi 77) (Greixos_insaturats 44969) (Greixos_totals 15) (Sucres 44958) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Torrades_amb_crema_de_cacahuet] of Plat (cuinat_amb [Cereals_amb_gluten] [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 0) (Fibra 45048) (Greixos_saturats 45079) (Potassi 196) (Calci 74) (Proteines 44935) (Carbohidrats 27) (Vitamina_A 0) (Calories 255) (Ferro 44928) (Colesterol 0) (Sodi 324) (Greixos_insaturats 45115) (Greixos_totals 13) (Sucres 4) (Temporada_estiu 1) (Temporada_hivern 0) (Temporada_primavera 0) (Temporada_tardor 1))
    ([Torrades_amb_alvocat] of Plat (cuinat_amb [Cereals_amb_gluten] [Fruits secs]) (cuinat_mitjancant [Cru]) (Vitamina_C 3) (Fibra 44934) (Greixos_saturats 45018) (Potassi 570) (Calci 75) (Proteines 45143) (Carbohidrats 30) (Vitamina_A ) (Calories 283) (Ferro 44928) (Colesterol 0) (Sodi 658) (Greixos_insaturats 45150) (Greixos_totals 45062) (Sucres 45109) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Amanida_de_patates] of Plat (cuinat_amb [Tubercles] [Hortalisses]) (cuinat_mitjancant [Bullit]) (Vitamina_C 25) (Fibra 44988) (Greixos_saturats 45080) (Potassi 635) (Calci 48) (Proteines 45113) (Carbohidrats 28) (Vitamina_A 388) (Calories 358) (Ferro 45078) (Colesterol 170) (Sodi 1323) (Greixos_insaturats 15) (Greixos_totals 21) (Sucres ) (Temporada_estiu 1) (Temporada_hivern 0) (Temporada_primavera 1) (Temporada_tardor 0))
    ([Xai_a_la_planxa] of Plat (cuinat_amb [Carn_vermella]) (cuinat_mitjancant [Planxa]) (Vitamina_C ) (Fibra ) (Greixos_saturats 45053) (Potassi 263) (Calci 14) (Proteines 21) (Carbohidrats 0) (Vitamina_A ) (Calories 250) (Ferro 45078) (Colesterol 82) (Sodi 61) (Greixos_insaturats 45146) (Greixos_totals 18) (Sucres ) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Espaguetis_carbonara] of Plat (cuinat_amb [Cereals_amb_gluten] [Làctics] [Carn_vermella]) (cuinat_mitjancant [Bullit]) (Vitamina_C ) (Fibra 45141) (Greixos_saturats 45112) (Potassi 193.1) (Calci 191) (Proteines 22) (Carbohidrats 66) (Vitamina_A ) (Calories 509) (Ferro 44960) (Colesterol 93) (Sodi 482) (Greixos_insaturats 44994) (Greixos_totals 45062) (Sucres 44986) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Pit_de_pollastre_al_forn] of Plat (cuinat_amb [Carn_blanca]) (cuinat_mitjancant [Forn]) (Vitamina_C 1) (Fibra ) (Greixos_saturats 44958) (Potassi 307) (Calci 18) (Proteines 37) (Carbohidrats 0) (Vitamina_A 23) (Calories 198) (Ferro 44958) (Colesterol 102) (Sodi 89) (Greixos_insaturats 2) (Greixos_totals 44989) (Sucres ) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Amanida_de_cigrons] of Plat (cuinat_amb [Llegum] [Hortalisses]) (cuinat_mitjancant [Cru]) (Vitamina_C 24) (Fibra 10) (Greixos_saturats 45108) (Potassi 324) (Calci 82) (Proteines 11) (Carbohidrats 37) (Vitamina_A 1000) (Calories 301) (Ferro 45139) (Colesterol 0) (Sodi 460) (Greixos_insaturats 10) (Greixos_totals 13) (Sucres 8) (Temporada_estiu 1) (Temporada_hivern 0) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Sípia_a_la_planxa] of Plat (cuinat_amb [Peix_blau]) (cuinat_mitjancant [Planxa]) (Vitamina_C 6) (Fibra ) (Greixos_saturats 0.3) (Potassi 902) (Calci 255) (Proteines 46.7) (Carbohidrats 316) (Vitamina_A 424) (Calories 223) (Ferro 15) (Colesterol 316) (Sodi 1053) (Greixos_insaturats 0.6) (Greixos_totals 2) (Sucres ) (Temporada_estiu 1) (Temporada_hivern 0) (Temporada_primavera 1) (Temporada_tardor 0))
    ([Sopa_freda_de_meló_amb_pernil] of Plat (cuinat_amb [Embotits] [Fruita]) (cuinat_mitjancant [Cru]) (Vitamina_C 10) (Fibra 3) (Greixos_saturats 2) (Potassi 300) (Calci 0) (Proteines 10) (Carbohidrats 15) (Vitamina_A 800) (Calories 162) (Ferro 0.7) (Colesterol 21) (Sodi 600) (Greixos_insaturats 0) (Greixos_totals 45113) (Sucres ) (Temporada_estiu 1) (Temporada_hivern 0) (Temporada_primavera 1) (Temporada_tardor 0))
    ([Vedella_a_la_planxa] of Plat (cuinat_amb [Carn_vermella]) (cuinat_mitjancant [Planxa]) (Vitamina_C ) (Fibra ) (Greixos_saturats 44991) (Potassi 230) (Calci 11) (Proteines 22) (Carbohidrats 0) (Vitamina_A 16) (Calories 220) (Ferro 45170) (Colesterol 74) (Sodi 43) (Greixos_insaturats 45144) (Greixos_totals 14) (Sucres ) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Amanida_de_llenties] of Plat (cuinat_amb [Llegum] [Hortalisses]) (cuinat_mitjancant [Cru]) (Vitamina_C 24) (Fibra 11) (Greixos_saturats 45017) (Potassi 628) (Calci 52) (Proteines 12) (Carbohidrats 31) (Vitamina_A 1000) (Calories 255) (Ferro 45142) (Colesterol 0) (Sodi 749) (Greixos_insaturats 45054) (Greixos_totals 10) (Sucres 45142) (Temporada_estiu 1) (Temporada_hivern 0) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Lasanya_de_carn] of Plat (cuinat_amb [Carn_vermella] [Làctics] [Cereals_amb_gluten]) (cuinat_mitjancant [Forn]) (Vitamina_C 64) (Fibra 45172) (Greixos_saturats 45000) (Potassi -313651) (Calci 527) (Proteines 44) (Carbohidrats 35) (Vitamina_A ) (Calories 602) (Ferro 45081) (Colesterol 166) (Sodi 1576) (Greixos_insaturats 45090) (Greixos_totals 32) (Sucres 11) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Peix_fregit] of Plat (cuinat_amb [Peix_blanc]) (cuinat_mitjancant [Fregit]) (Vitamina_C ) (Fibra 0.8) (Greixos_saturats 45141) (Potassi 384) (Calci 49) (Proteines 45158) (Carbohidrats 44935) (Vitamina_A ) (Calories 258) (Ferro 45078) (Colesterol 80) (Sodi 317.2) (Greixos_insaturats 45055) (Greixos_totals 45092) (Sucres ) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Gaspatxo] of Plat (cuinat_amb [Hortalisses]) (cuinat_mitjancant [Cru]) (Vitamina_C 7) (Fibra 45020) (Greixos_saturats 44987) (Potassi 931) (Calci 59) (Proteines 44930) (Carbohidrats 20) (Vitamina_A 293) (Calories 243) (Ferro 45108) (Colesterol 0) (Sodi 1599) (Greixos_insaturats 45182) (Greixos_totals 17) (Sucres 13) (Temporada_estiu 1) (Temporada_hivern 0) (Temporada_primavera 0) (Temporada_tardor 0))
    ([Paella_valenciana] of Plat (cuinat_amb [Marisc] [Cereals_sense_gluten] [Hortalisses]) (cuinat_mitjancant [Bullit]) (Vitamina_C ) (Fibra 0.8) (Greixos_saturats 45113) (Potassi 558) (Calci 32.9) (Proteines 41.3) (Carbohidrats 45) (Vitamina_A ) (Calories 588) (Ferro 45048) (Colesterol 184) (Sodi 1145) (Greixos_insaturats 44972) (Greixos_totals 44982) (Sucres 45170) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Entrepà_de_formatge] of Plat (cuinat_amb [Cereals_amb_gluten] [Làctics]) (cuinat_mitjancant [Cru]) (Vitamina_C ) (Fibra 45017) (Greixos_saturats 13) (Potassi 185) (Calci 647) (Proteines 12) (Carbohidrats 28) (Vitamina_A 100) (Calories 366) (Ferro 44959) (Colesterol 63) (Sodi 886) (Greixos_insaturats 45084) (Greixos_totals 23) (Sucres 45021) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Gelat] of Plat (cuinat_amb [Dolços/processats] [Làctics]) (cuinat_mitjancant [Cru]) (Vitamina_C ) (Fibra 0.7) (Greixos_saturats 45114) (Potassi 210) (Calci 135) (Proteines 45110) (Carbohidrats 45162) (Vitamina_A 554) (Calories 218) (Ferro 0.1) (Colesterol 46.4) (Sodi 84.8) (Greixos_insaturats 45080) (Greixos_totals 12) (Sucres 45038) (Temporada_estiu 1) (Temporada_hivern 0) (Temporada_primavera 0) (Temporada_tardor 0))
    ([Crema_de_carbassa] of Plat (cuinat_amb [Verdura]) (cuinat_mitjancant [Bullit]) (Vitamina_C 11) (Fibra 45112) (Greixos_saturats 44932) (Potassi 708) (Calci 77) (Proteines 45055) (Carbohidrats 27) (Vitamina_A 8000) (Calories 241) (Ferro 44960) (Colesterol 32) (Sodi 1033) (Greixos_insaturats 4) (Greixos_totals 11) (Sucres 12) (Temporada_estiu 0) (Temporada_hivern 1) (Temporada_primavera 0) (Temporada_tardor 1))
    ([Lluç_a_la_planxa] of Plat (cuinat_amb [Peix_blanc]) (cuinat_mitjancant [Planxa]) (Vitamina_C ) (Fibra 0) (Greixos_saturats 0.2) (Potassi 526) (Calci 21) (Proteines 30) (Carbohidrats 0) (Vitamina_A 26) (Calories 135) (Ferro 0.3) (Colesterol 99) (Sodi 392) (Greixos_insaturats 0.3) (Greixos_totals 0.8) (Sucres ) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Truita_de_patates] of Plat (cuinat_amb [Ous] [Tubercles]) (cuinat_mitjancant [Fregit]) (Vitamina_C 0) (Fibra 44960) (Greixos_saturats 45171) (Potassi 782) (Calci 48) (Proteines 9) (Carbohidrats 30) (Vitamina_A ) (Calories 306) (Ferro 44959) (Colesterol 156) (Sodi 183) (Greixos_insaturats 15) (Greixos_totals 45002) (Sucres 45079) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Broquetes_de_pollastre] of Plat (cuinat_amb [Carn_blanca]) (cuinat_mitjancant [Planxa]) (Vitamina_C 1) (Fibra 44987) (Greixos_saturats 0.5) (Potassi 431) (Calci 41) (Proteines 35) (Carbohidrats 35) (Vitamina_A 23) (Calories 220) (Ferro 44958) (Colesterol 37) (Sodi 760) (Greixos_insaturats 44927) (Greixos_totals 44959) (Sucres 27) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Pizza_de_pernil_i_formatge] of Plat (cuinat_amb [Cereals_amb_gluten] [Embotits] [Làctics]) (cuinat_mitjancant [Forn]) (Vitamina_C 0) (Fibra 45172) (Greixos_saturats 45084) (Potassi 292) (Calci 320) (Proteines 19) (Carbohidrats 57) (Vitamina_A 0) (Calories 452) (Ferro 44961) (Colesterol 29) (Sodi 1017) (Greixos_insaturats 44992) (Greixos_totals 16) (Sucres 6) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Pasta_fresca_amb_parmesà] of Plat (cuinat_amb [Cereals_amb_gluten] [Làctics]) (cuinat_mitjancant [Bullit]) (Vitamina_C 4) (Fibra 45050) (Greixos_saturats 45053) (Potassi 300) (Calci 267) (Proteines 45065) (Carbohidrats 55) (Vitamina_A 1) (Calories 405) (Ferro 45047) (Colesterol 75) (Sodi 765) (Greixos_insaturats 0) (Greixos_totals 12) (Sucres 45050) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Llom_arrebossat] of Plat (cuinat_amb [Carn_blanca]) (cuinat_mitjancant [Fregit]) (Vitamina_C 1) (Fibra 45047) (Greixos_saturats 45050) (Potassi 358) (Calci 80) (Proteines 26) (Carbohidrats 22) (Vitamina_A 9) (Calories 400) (Ferro 45048) (Colesterol 124) (Sodi 617) (Greixos_insaturats 15) (Greixos_totals 22) (Sucres 45108) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Pure_de_patata] of Plat (cuinat_amb [Tubercles] [Lactics]) (cuinat_mitjancant [Bullit]) (Vitamina_C 22) (Fibra 44960) (Greixos_saturats 45078) (Potassi 684) (Calci 44) (Proteines 44930) (Carbohidrats 36) (Vitamina_A 378) (Calories 237) (Ferro 0.6) (Colesterol 44928) (Sodi 699) (Greixos_insaturats 5) (Greixos_totals 45146) (Sucres 3) (Temporada_estiu 0) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Llenties_estofades_amb_verdures] of Plat (cuinat_amb [Llegum] [Verdura]) (cuinat_mitjancant [Estofat]) (Vitamina_C 0) (Fibra 16) (Greixos_saturats 0.2) (Potassi 1029) (Calci 105) (Proteines 16) (Carbohidrats 45) (Vitamina_A 0) (Calories 241) (Ferro 45175) (Colesterol 0) (Sodi 503) (Greixos_insaturats 0.6) (Greixos_totals 1) (Sucres 44964) (Temporada_estiu 0) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Croquetes_de_pernil] of Plat (cuinat_amb [Cereals_amb_gluten] [Lactics] [Embotits]) (cuinat_mitjancant [Fregit]) (Vitamina_C 0) (Fibra 45108) (Greixos_saturats 45139) (Potassi 529) (Calci 93) (Proteines 45062) (Carbohidrats 44982) (Vitamina_A 0) (Calories 303) (Ferro 44928) (Colesterol 84) (Sodi 1314) (Greixos_insaturats 45057) (Greixos_totals 15) (Sucres 45047) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Rissotto] of Plat (cuinat_amb [Cereals_sense_gluten] [Lactics]) (cuinat_mitjancant [Bullit]) (Vitamina_C 0) (Fibra 45047) (Greixos_saturats 45023) (Potassi 342) (Calci 164) (Proteines 14) (Carbohidrats 54) (Vitamina_A 0) (Calories 413) (Ferro 45047) (Colesterol 36) (Sodi 1451) (Greixos_insaturats 45173) (Greixos_totals 13) (Sucres 45111) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Muffin] of Plat (cuinat_amb [Cereals_amb_gluten] [Lactics]) (cuinat_mitjancant [Forn]) (Vitamina_C 2) (Fibra 44962) (Greixos_saturats 45174) (Potassi 572) (Calci 71) (Proteines 45176) (Carbohidrats 55) (Vitamina_A 125) (Calories 305) (Ferro 45111) (Colesterol 10) (Sodi 444) (Greixos_insaturats 45083) (Greixos_totals 45024) (Sucres 44994) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Pèsols_amb_patata] of Plat (cuinat_amb [Verdura] [Tubercles]) (cuinat_mitjancant [Bullit]) (Vitamina_C 48) (Fibra 45094) (Greixos_saturats 0.1) (Potassi 867) (Calci 86) (Proteines 44974) (Carbohidrats 50) (Vitamina_A 10080) (Calories 268) (Ferro 5) (Colesterol 0) (Sodi 45086) (Greixos_insaturats 0.4) (Greixos_totals 0.7) (Sucres 19) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Menestra] of Plat (cuinat_amb [Verdura]) (cuinat_mitjancant [Bullit]) (Vitamina_C 100) (Fibra 45019) (Greixos_saturats 45018) (Potassi 380) (Calci 43) (Proteines 45143) (Carbohidrats 26) (Vitamina_A 3106) (Calories 159) (Ferro 45170) (Colesterol 45142) (Sodi 1219) (Greixos_insaturats 45079) (Greixos_totals 45141) (Sucres 4) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Salmó_a_la_planxa] of Plat (cuinat_amb [Peix_blau]) (cuinat_mitjancant [Planxa]) (Vitamina_C 0) (Fibra 0) (Greixos_saturats 44997) (Potassi 697.3) (Calci 27) (Proteines 40) (Carbohidrats 0) (Vitamina_A 0) (Calories 374) (Ferro 0.6) (Colesterol 114.1) (Sodi 110.4) (Greixos_insaturats 45084) (Greixos_totals 45038) (Sucres 0) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Flam] of Plat (cuinat_amb [Lactics]) (cuinat_mitjancant [Cru]) (Vitamina_C 0) (Fibra 0) (Greixos_saturats 45171) (Potassi 291) (Calci 196) (Proteines 45082) (Carbohidrats 25) (Vitamina_A 830) (Calories 172) (Ferro 0.5) (Colesterol 72) (Sodi 118) (Greixos_insaturats 2) (Greixos_totals 45082) (Sucres 45144) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Bròquil_amb_patata] of Plat (cuinat_amb [Verdura] [Tubercles]) (cuinat_mitjancant [Bullit]) (Vitamina_C 446) (Fibra 13) (Greixos_saturats 0.2) (Potassi 1580) (Calci 235) (Proteines 44940) (Carbohidrats 33) (Vitamina_A 3125) (Calories 250) (Ferro 4) (Colesterol 0) (Sodi 165) (Greixos_insaturats 0.3) (Greixos_totals 45170) (Sucres 45054) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Tofu] of Plat (cuinat_amb [Proteïna_vegetal]) (cuinat_mitjancant [Fregit]) (Vitamina_C 0) (Fibra 44988) (Greixos_saturats 45048) (Potassi 124.2) (Calci 315) (Proteines 45184) (Carbohidrats 45053) (Vitamina_A 23) (Calories 231) (Ferro 44961) (Colesterol 0) (Sodi 45059) (Greixos_insaturats 45181) (Greixos_totals 44943) (Sucres 44987) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
    ([Hamburguesa_vegana] of Plat (cuinat_amb [Proteïna_vegetal]) (cuinat_mitjancant [Fregit]) (Vitamina_C 0) (Fibra 45051) (Greixos_saturats 45172) (Potassi 399) (Calci 160) (Proteines 17) (Carbohidrats 42) (Vitamina_A 0) (Calories 298) (Ferro 45172) (Colesterol 45049) (Sodi 711) (Greixos_insaturats 45170) (Greixos_totals 7) (Sucres 45048) (Temporada_estiu 1) (Temporada_hivern 1) (Temporada_primavera 1) (Temporada_tardor 1))
)
