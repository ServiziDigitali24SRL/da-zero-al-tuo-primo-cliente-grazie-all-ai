# MANUALE 10 — La dashboard che monitora tutto

**Obiettivo:** una schermata sola con i numeri che contano. Tre livelli — parti dal Livello 1, sali solo se serve.

## KPI (uguali a tutti i livelli)
Per canale e per settimana: spesa ADV · lead · costo/lead · tasso risposta cold · call fissate · clienti chiusi · incasso · (email: consegna/aperture/risposte). Fonti: Meta Ads Manager, Instantly, Brevo, Supabase.

## Livello 1 — Foglio KPI (subito, Giorno 6)
Claude crea `output/dashboard-kpi.xlsx`: una riga a settimana, colonne = KPI, grafici automatici. Semplice e sufficiente per i primi 2-3 mesi.

**Come si aggiorna (il default è: lo fa Claude, non tu in Excel):**
- **Cosa fa il cliente:** una volta a settimana porta i numeri a Claude, come gli viene comodo — li detta a voce ("questa settimana: 12 lead, 340€ di spesa, 2 call"), li incolla dalle schermate di Meta/Instantly/Brevo, o incolla direttamente uno screenshot. Stop: 5 minuti, senza mai aprire Excel da solo.
- **Cosa fa Claude:** prende quei numeri, li inserisce nella riga della settimana, ricalcola costo/lead e gli altri KPI derivati, aggiorna i grafici e riconsegna il file pronto. Se un numero manca o sembra strano (es. costo/lead decuplicato), lo chiede o lo segnala.
- Il cliente NON deve mai combattere con celle e formule: il foglio lo tocca Claude. Se il cliente vuole comunque aggiornarlo a mano, può — ma è l'eccezione, non la regola.

## Livello 2 — Dashboard web locale (quando i dati sono in Supabase)
Claude genera `dashboard.html` nella cartella progetto: si apre nel browser, legge i lead da Supabase (chiave anon + policy sola-lettura) e mostra grafici (lead per fonte, funnel per stato, trend settimanale). Zero hosting: è un file locale. Volendo pubblicabile su Netlify/Vercel con password.

## Livello 3 — Strumenti pronti
Looker Studio (gratis) collegato a Fogli Google, o Metabase su Supabase: per chi vuole condividere con soci/team. Claude prepara struttura dati e istruzioni di collegamento.

## Rito settimanale (fissalo in CLAUDE.md)
Ogni sessione settimanale: 1) il cliente porta/incolla i numeri (o Claude li legge dai connettori dove collegati) 2) **Claude aggiorna foglio e grafici** 3) verdetto in 3 righe (cosa funziona/cosa no) 4) produce le correzioni (nuove varianti ADV, nuovo tocco cold…).

**Fatto? Aggiorna la memoria:** in CLAUDE.md spunta questo manuale in "Stato Fase Operativa", aggiorna "Punto di ripresa" al prossimo passo, e annota gli asset creati (account, domini, URL) in "Asset operativi".
