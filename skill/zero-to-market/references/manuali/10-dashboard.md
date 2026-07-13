# MANUALE 10 — La dashboard che monitora tutto

**Obiettivo:** una schermata sola con i numeri che contano. Tre livelli — parti dal Livello 1, sali solo se serve.

## KPI (uguali a tutti i livelli)
Per canale e per settimana: spesa ADV · lead · costo/lead · tasso risposta cold · call fissate · clienti chiusi · incasso · (email: consegna/aperture/risposte). Fonti: Meta Ads Manager, Instantly, Brevo, Supabase.

## Livello 1 — Foglio KPI (subito, Giorno 6)
Claude crea `output/dashboard-kpi.xlsx`: una riga a settimana, colonne = KPI, grafici automatici. Il cliente (o Claude in sessione) aggiorna i numeri ogni settimana in 10 minuti. Semplice e sufficiente per i primi 2-3 mesi.

## Livello 2 — Dashboard web locale (quando i dati sono in Supabase)
Claude genera `dashboard.html` nella cartella progetto: si apre nel browser, legge i lead da Supabase (chiave anon + policy sola-lettura) e mostra grafici (lead per fonte, funnel per stato, trend settimanale). Zero hosting: è un file locale. Volendo pubblicabile su Netlify/Vercel con password.

## Livello 3 — Strumenti pronti
Looker Studio (gratis) collegato a Fogli Google, o Metabase su Supabase: per chi vuole condividere con soci/team. Claude prepara struttura dati e istruzioni di collegamento.

## Rito settimanale (fissalo in CLAUDE.md)
Ogni sessione settimanale: 1) Claude legge/chiede i numeri 2) aggiorna dashboard 3) verdetto in 3 righe (cosa funziona/cosa no) 4) produce le correzioni (nuove varianti ADV, nuovo tocco cold…).
