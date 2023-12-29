SELECT
    c.com as code_commune,
    c.libelle as libelle_commune,
    p.population,
    r.nb_foyers_fiscaux,
    r.rfr_total,
    r.impot_net_total,
    e.nb_maternelle,
    e.nb_ecole_primaire,
    e.nb_college,
    e.nb_ecole_privee
FROM cog c
INNER JOIN population p ON p.code_commune = c.com
INNER JOIN (
    SELECT
        CONCAT(LEFT(dep, 2), commune) as code_commune,
        nombre_de_foyers_fiscaux as nb_foyers_fiscaux,
        revenu_fiscal_de_reference_des_foyers_fiscaux as rfr_total,
        impot_net_total
    FROM revenus
    WHERE revenu_fiscal_de_reference_par_tranche = 'Total'
) r ON c.com = r.code_commune
INNER JOIN (
    SELECT
        code_commune,
        SUM(CASE WHEN ecole_maternelle = 'true' THEN 1 ELSE 0 END) as nb_maternelle,
        SUM(CASE WHEN ecole_elementaire = 'true' THEN 1 ELSE 0 END) as nb_ecole_primaire,
        SUM(CASE WHEN type_etablissement = 'Collège' THEN 1 ELSE 0 END) as nb_college,
        SUM(CASE WHEN statut_public_prive = 'Privé' THEN 1 ELSE 0 END) as nb_ecole_privee
    FROM annuaire_education
    GROUP BY code_commune
) e ON e.code_commune = c.com
WHERE c.com = '28116'
