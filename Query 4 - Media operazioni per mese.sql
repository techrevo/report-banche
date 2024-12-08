-- Grafico 4 | Media operazioni per mese

SELECT
	Mese,
    AVG(Operazioni_Per_Mese) AS Media_Operazioni
FROM (
    SELECT
        EXTRACT(YEAR FROM "Data") AS Anno,
        EXTRACT(MONTH FROM "Data") AS Mese,
        COUNT("ID_Operazione") AS Operazioni_Per_Mese
    FROM "Operazioni"
    GROUP BY Anno, Mese
)
GROUP BY Mese
ORDER BY Mese;