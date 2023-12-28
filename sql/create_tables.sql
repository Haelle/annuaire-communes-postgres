DROP TABLE cog;
DROP TABLE revenus;

CREATE TABLE cog (
    TYPECOM VARCHAR(255),
    COM VARCHAR(255),
    REG VARCHAR(255),
    DEP VARCHAR(255),
    CTCD VARCHAR(255),
    ARR VARCHAR(255),
    TNCC VARCHAR(255),
    NCC VARCHAR(255),
    NCCENR VARCHAR(255),
    LIBELLE VARCHAR(255),
    CAN VARCHAR(255),
    COMPARENT VARCHAR(255)
);

CREATE TABLE revenus (
    Dep VARCHAR(255),
    Commune VARCHAR(255),
    Libelle_de_la_commune VARCHAR(255),
    Revenu_fiscal_de_reference_par_tranche VARCHAR(255),
    Nombre_de_foyers_fiscaux NUMERIC,
    Revenu_fiscal_de_reference_des_foyers_fiscaux NUMERIC,
    Impot_net_total NUMERIC,
    Nombre_de_foyers_fiscaux_imposes NUMERIC,
    Revenu_fiscal_de_reference_des_foyers_fiscaux_imposes NUMERIC,
    Traitements_et_salaires_Nombre_de_foyers_concernes NUMERIC,
    Traitements_et_salaires_montants NUMERIC,
    Retraites_et_pensions_Nombre_de_foyers_concernes NUMERIC,
    Retraites_et_pensions_montants NUMERIC
);

