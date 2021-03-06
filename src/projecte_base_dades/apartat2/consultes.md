
### CATEGORÍA 1


1.1
Selecciona la **candidatura_id, nom_curt i nom_llarg** de les candidatures que tinguin la paraula 'partit','partido',...en el seu nom llarg.

        SELECT candidatura_id, nom_curt, nom_llarg
            FROM candidatures
        WHERE nom_llarg REGEXP "PARTIDO | PARTIT";

1.2
Selecciona el número de **candidatures i la eleccio_id** on la seva eleccio_id = 1, nombra les columnes “Num. Candidatures” i “Eleccio”.

        SELECT COUNT(candidatura_id) AS "Num. Candidatures" , eleccio_id AS "Eleccio"
            FROM candidatures
        WHERE eleccio_id = 1
        GROUP BY eleccio_id;


1.3
Selecciona el **municipi_id, nom** de tots els municipis on provincia_id = 17.
(*COMPROVAR QUE FUNCIONA*)

        SELECT municipi_id, nom
            FROM municipis
        WHERE provincia_id = 17;

1.4
Selecciona la **comunitat_aut_id i el número de provincies** de les comunitats autonomes que tinguin mes de 5 provincies.

        SELECT comunitat_aut_id, COUNT(provincia_id)
            FROM provincies
        GROUP BY comunitat_aut_id
        HAVING COUNT(provincia_id) > 5;

1.5
Selecciona de les **candidatures_id i la suma dels vots de les comunitats autonomes**, les candidatures de les quals han rebut mes de 100.000 vots en la suma de totes les comunitats autonomes, selecciona nomes les 5 que tenen mes vots.

        SELECT candidatura_id, SUM(vots)
            FROM vots_candidatures_ca
        GROUP BY candidatura_id
        HAVING SUM(vots) > 100000
        ORDER BY SUM(vots) DESC
        LIMIT 5;

1.6
Seleccione la **persona_id i el seu nom en format** *“Cog1 Cog2, nom”* que tenen el sexe asignat a dona.


        SELECT persona_id, CONCAT(cog1," ", cog2,", " ,nom) AS "Nom Complet"
        FROM persones
        WHERE sexe = 'F';

1.7
Selecciona de la **provincia 52, els candidats, vots i candidats obtinguts**.
Si vots < 10.000 asigna a la columna “Baix”, entre 10.000 i 30.000 = Mig, mes de 30.000 = “Alt”. Anomena la columna “Nivell Vots”

        SELECT provincia_id, candidatura_id,
        		CASE
                    WHEN vots < 10000 THEN "Baix"
                    WHEN vots BETWEEN 10000 AND 35000 THEN "Mig"
                    WHEN vots > 35000 THEN "Alt"
                        END AS "Nivell Vots", candidats_obtinguts
        	FROM vots_candidatures_prov
        WHERE provincia_id = 52;

1.8
Selecciona la **mitjana de vots** que ha obtingut la candidatura = 20 en les comunitats autonomes.
      
        SELECT AVG(vots), candidatura_id
            FROM vots_candidatures_ca
        WHERE candidatura_id = 20;
1.9
Selecciona la **mitjana de vots en blanc i vots nuls de tots els municipis** renombra les columnes  a "Mitjana vots en blanc" i "Mijana vots nuls".

    SELECT AVG(vots_blanc) AS "Mitjana vots en blanc", AVG(vots_nuls) AS "Mitjana vots nuls"
    FROM eleccions_municipis;   

1.10
Selecciona la **diferencia dels vots emesos i cens** de eleccions_municipis, renombra la columna com a "Diferencia cens", mostra tambè el municipi_id, els vots emesos i el cens.

    SELECT municipi_id, (cens - vots_emesos) AS "Diferencia", vots_emesos, cens
    FROM eleccions_municipis;

---

### CATEGORIA 2

2.1-Mostra de cada candidat, el nom del candidat, cognoms i codi. Ordena les dades per cognoms i nom de forma
ascendent.

        SELECT p.nom, p.cog1, p.cog2, c.candidat_id
        FROM candidats c
        INNER JOIN persones p ON p.persona_id = c.persona_id
        ORDER BY p.cog1, p.cog2, p.nom;  

2.2-Mostra els vots en blanc i nul de cada comunitat autonoma.

        SELECT em.vots_blanc, em.vots_nuls, ca.nom
        FROM eleccions_municipis em
        INNER JOIN municipis m  ON m.municipi_id = em.municipi_id
        INNER JOIN comunitats_autonomes ca ON  ca.codi_ine = m.codi_ine

2.3-Mostra de candidatura del BNG el codi, el nom llarg, el municipi i els codis de acumulacions. Ordena per codi municipi.

        SELECT c.codi_candidatura, c.nom_llarg, em.municipi_id, c.codi_acumulacio_provincia, c.codi_acumulacio_ca, 	c.codi_acumulario_nacional
        FROM candidatures c
        INNER JOIN eleccions_municipis em ON em.eleccio_id = c.eleccio_id    
        WHERE nom_curt = "BNG"
        ORDER BY municipi_id;
2.4-De cada província volem saber la quantitat de municipis que té.

	SELECT  p.nom provincia, COUNT(*) quantitat
	FROM municipis m
	INNER JOIN provincies p ON p.provincia_id = m.provincia_id
	GROUP BY p.nom;

2.5-Volem saber els vots nuls de cada provincia.
	
	SELECT  p.nom provincia, COUNT(em.vots_nuls) 
	FROM eleccions_municipis em
    	INNER JOIN municipis m ON m.municipi_id = em.municipi_id
	INNER JOIN provincies p ON p.provincia_id = m.provincia_id
	GROUP BY p.nom;

2.6-Mostra de cada candidat el seu codi, nom, cognoms io que tinguin asignat el sexe de dona

	SELECT  c.candidat_id, p.nom, CONCAT(cog1,", " ,cog2) cognoms 
	FROM candidats c
    	INNER JOIN persones p ON p.persona_id = c.persona_id
	WHERE p.sexe = 'F';

2.7-Mostra les persones que provenen de la provincia de 'Santa Cruz de Tenerife'. Volem saber el codi de la persona, cognoms i el nom.

	SELECT p.persona_id, CONCAT(p.nom,", ",p.cog1," ",p.cog2) nom_complet							FROM persones p
        INNER JOIN candidats c ON c.persona_id = p.persona_id
        INNER JOIN provincies pr ON pr.provincia_id = c.provincia_id
        WHERE pr.nom = 'Santa Cruz de Tenerife';
	
2.8-Mostra de cada candidatura, el codi de candidatura, nom curt, el codi acumulari nacional i el numero d'ordre.
	
	SELECT cr.codi_candidatura, cr.nom_curt, cr.codi_acumulario_nacional, c.num_ordre 
	FROM candidatures cr
	INNER JOIN candidats c ON c.candidatura_id = cr.candidatura_id;

2.9-Mostra els vots de candidatures de cada provincia. Volem saber el nom de la provincia i els vots
	
	SELECT p.nom, MAX(vcp.vots) vots
	FROM vots_candidatures_prov vcp
	INNER JOIN provincies p ON p.provincia_id = vcp.provincia_id
   	GROUP BY p.nom;

2.10-Mostra de candidatura del "ESQUERRA REPUBLICANA DE CATALUNYA-SOBIRANISTES "  el nom de municipi, el codi de municipi , codi_ine, el numero de meses. Ordena per codi municipi

	SELECT  m.nom, em.municipi_id, m.codi_ine, em.num_meses
	FROM candidatures c
	INNER JOIN eleccions_municipis em ON em.eleccio_id = c.eleccio_id 
	INNER JOIN municipis m ON m.municipi_id = em.municipi_id
	WHERE c.nom_llarg = "ESQUERRA REPUBLICANA DE CATALUNYA-SOBIRANISTES"
	ORDER BY municipi_id;
---

### CATEGORIA 3

3.1 Obté el nom que començi per “M” , el primer cognom que acabi per “a” i la data de neixement de les persones que van neixer després de les que el seu nom comença per “M” i el seu primer cognom acaba per "a".

      SELECT nom, cog1, data_naixement
      FROM persones p
      WHERE data_naixement > (SELECT data_naixement
	                    FROM persones
	                    WHERE nom LIKE ‘M%’ AND cog1 LIKE ‘%a’)
      AND nom NOT LIKE ‘M%’ AND cog1 NOT LIKE ‘%a’;


3.2 Obté les provincies que hagin tingut menys vots que la provincia número 40.

      SELECT provincia_id
      FROM vots_candidatures_prov
      WHERE vots < (SELECT vots
                  FORM vots_candidatures_prov
                  WHERE provincia_id = 40 )
      AND provincia_id != 40;

3.3 Obté el codi ine de les comunitats autonomes que sigui més gran que el de la comunitat autónoma número 12.

      SELECT codi_ine
      FROM comunitats_autonomes ca
      WHERE codi_ine > (SELECT codi_ine
                       FROM comunitats_autonomes
                       WHERE comunitat_aut_id = 12)
      AND comunitat_aut_id != 12


3.4 Obté de les circumscripcions, els noms que tinguin 8 caràcters i a més que tinguin els mateixos números d’escons. Ordena els noms de forma ascendent.

      SELECT nom
      FROM circumscripcions c
      WHERE escons = (SELECT escons
                     FROM circumscripcions
                     WHERE nom LIKE ‘--------’ )
      ORDER BY nom ASC;

3.5 Obté la candidatura_id i els candidats obtinguts dels vots provincials, on els vots siguin més que els de la provincia número 20.

      SELECT candidatura_id, candidats_obtinguts
      FROM vots_candidatures_prov
      WHERE vots > (SELECT vots
              FROM vots_candidatures_prov
              WHERE provincia_id = 20 )
      AND provincia_id != 20;




---

### CATEGORIA 4

Mostra tota la taula de vots de comunitat autonoma i la menor i major quantitat de vots obtinguts per una candidatura a nivell comunitat autonomica,
ordena-ho per la comunitat autonoma i posa els alies seguents:
ID Comunitat Autonoma, Candidatura ID, Vots, Menor quantitat de vots aconseguits per candidatura en total i Mayor quantitat de vots aconseguits per candidatura en total.

      SELECT comunitat_autonoma_id as "ID Comunitat Autonoma", candidatura_id as "Candidatura ID", vots as Vots
     ,IFNULL(NTH_VALUE(vots, 1) over (partition by candidatura_id order by vots ASC), "") as "Menor quantitat de vots aconseguits per candidatura en total"
     ,IFNULL(NTH_VALUE(vots, 1) over (partition by candidatura_id order by vots DESC), "") as "Mayor quantitat de vots aconseguits per candidatura en total"
     FROM vots_candidatures_ca
     ORDER BY comunitat_autonoma_id;

