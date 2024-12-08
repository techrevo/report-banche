-- Grafico 5 | Somma dei salari dei dipendenti per ruolo

SELECT 
    "Ruolo",
    SUM("Salario") AS Somma_Salari,
    SUM("Salario") / (SELECT SUM("Salario") FROM "Dipendenti") * 100 AS Percentuale
FROM "Dipendenti"
GROUP BY "Ruolo";