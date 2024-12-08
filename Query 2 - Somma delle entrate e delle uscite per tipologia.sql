-- Grafico 2 | Somma delle entrate ed delle uscite per tipologia

SELECT SUM("Totale_Entrate") AS somma_totale_entrate, SUM("Totale_Uscite") AS somma_totale_uscite,
	   SUM("Totale_Entrate") / (SUM("Totale_Entrate") + SUM("Totale_Uscite")) * 100 AS percentuale_entrate,
	   SUM("Totale_Uscite") / (SUM("Totale_Entrate") + SUM("Totale_Uscite")) * 100 AS percentuale_uscite
FROM "Filiali";