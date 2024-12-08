-- Grafico 1 | Numero di operazioni per tipologia

SELECT "Tipo_operazione", COUNT(*) AS numero_operazioni
FROM "Operazioni"
GROUP BY "Tipo_operazione";
