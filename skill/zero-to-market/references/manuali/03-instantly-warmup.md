# MANUALE 03 — Riscaldare i sender e inviare con Instantly

**Perché:** una casella nuova che spara 50 email al giorno finisce in spam. Instantly "riscalda" le caselle (scambia email vere con la sua rete e le marca come importanti) e poi gestisce le campagne di invio.

**Costo:** piano Growth (~37$/mese) per warmup + campagne; lead extra a parte.

## Fase A — Collega le caselle (Giorno 6, subito dopo Migadu)
1. Account su **instantly.ai** → **Email Accounts → Add New → IMAP/SMTP**
2. Inserisci per ogni casella: email, password, `smtp.migadu.com:465 SSL`, `imap.migadu.com:993 SSL`
3. Attiva **Warmup** su ogni casella: incremento graduale, ~20-40 email warmup/giorno, reply rate 30-40%

## Fase B — Riscaldamento (2-4 settimane, NON saltare)
- Settimane 1-2: SOLO warmup, zero campagne
- Settimana 3: prime campagne a 10-15 email/giorno per casella (warmup sempre attivo)
- Regime: **max 20-30 email/giorno per casella**. Più volume = più caselle/domini, mai più invii per casella

## Fase C — Campagna
1. **Leads:** importa CSV (o da Supabase, Manuale 09) con colonne: email, nome, azienda, {{variabili}} di personalizzazione
2. **Sequenza:** incolla i template scritti con Claude (Manuale 04) — 4 tocchi, stop automatico alla risposta
3. **Schedule:** orari lavorativi del fuso del destinatario, lun-ven
4. **Tracking:** crea il custom tracking domain (CNAME su Cloudflare verso Instantly) o disattiva l'open tracking (migliora la consegna)
5. **Unibox:** tutte le risposte arrivano lì; imposta anche l'inoltro alla mail principale (Manuale 06)

## Segnali di allarme
Reply rate <1% → cambia template/target. Bounce >3% → pulisci la lista (verifica email prima con un verificatore). Spam complaints → fermati e rivedi tutto.
