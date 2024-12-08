-- Grafico 3 | Entrate e uscite mensili

SELECT 
    EXTRACT(YEAR FROM "Data") AS Anno,
    EXTRACT(MONTH FROM "Data") AS Mese,
    SUM(CASE WHEN "Tipo_operazione" = 'Entrata' THEN "Importo" ELSE 0 END) AS Somma_Entrate,
    SUM(CASE WHEN "Tipo_operazione" = 'Uscita' THEN "Importo" ELSE 0 END) AS Somma_Uscite
FROM "Operazioni"
GROUP BY Anno, Mese
ORDER BY Anno, Mese;