# MANUALE 03 — Riscaldare i sender e inviare con Instantly

**Perché:** una casella nuova che spara 50 email al giorno finisce in spam. Instantly "riscalda" le caselle (scambia email vere con la sua rete e le marca come importanti) e poi gestisce le campagne di invio.

**Costo:** piano Growth (~37$/mese alla data di stesura) per warmup + campagne.

## Passo 0 — Apertura account Instantly (da zero)
- **Cosa fa il cliente:**
  1. Vai su **instantly.ai** → **Start for free / Sign up** → email aziendale principale + password generata dal gestore (salvala subito, manuale 00b). Conferma l'email di verifica.
  2. Scegli il piano **Growth** (~37$/mese): copre warmup illimitato sulle caselle e le campagne. Serve la carta aziendale.
  3. **Attenzione agli upsell:** durante l'iscrizione (e poi dentro l'app) Instantly propone anche il suo **database di lead a pagamento** ("Leads", "Lead Finder") e altri extra. **NON servono**: i lead li abbiamo già (Manuale 12 e Supabase, Manuale 09). Se compare la proposta, rifiuta/salta e vai avanti.
- **Cosa fa Claude:** ti dice dove cliccare a ogni schermata, ti conferma che il piano giusto è Growth, e ti avvisa in anticipo di quali upsell rifiutare.

## Fase A — Collega le caselle (Giorno 6, subito dopo Migadu)
1. In Instantly: **Email Accounts → Add New → IMAP/SMTP**
2. Inserisci per ogni casella: email, password (dal gestore), `smtp.migadu.com:465 SSL`, `imap.migadu.com:993 SSL`
3. Attiva **Warmup** su ogni casella: incremento graduale, ~20-40 email warmup/giorno, reply rate 30-40%

## Fase B — Riscaldamento (2-4 settimane, NON saltare)
- Settimane 1-2: SOLO warmup, zero campagne
- Settimana 3: prime campagne a 10-15 email/giorno per casella (warmup sempre attivo)
- Regime: **max 20-30 email/giorno per casella**. Più volume = più caselle/domini, mai più invii per casella

## Fase C — Campagna (la costruisce Claude, non il cliente)
La campagna NON si monta a mano schermata per schermata: Instantly ha una **API** (un canale con cui Claude comanda Instantly direttamente). Due strade:

- **Binario consigliato — una API key e fa tutto Claude.**
  - **Cosa fa il cliente (2 minuti, guidato):** in Instantly → **Settings → Integrations → API Keys → Create API Key** → copia la chiave e **incollala a Claude in chat**, poi salvala nel gestore password (manuale 00b).
  - **Cosa fa Claude (via API, e verifica ogni passo):** crea la campagna; carica i lead (da CSV o Supabase, Manuale 09) con colonne email, nome, azienda e le {{variabili}} di personalizzazione; imposta la **sequenza di 4 tocchi** con i template del Manuale 04; imposta lo **schedule** (orari lavorativi del fuso del destinatario, lun-ven); attiva lo **stop automatico alla risposta**; collega le caselle giuste alla campagna. Poi ti mostra il riepilogo.
  - **Al cliente restano solo 2 click:** il toggle **Warmup** sulle caselle (Fase A) e il pulsante di **conferma lancio** della campagna — quello lo premi tu, sempre, dopo aver visto il riepilogo di Claude.
- **Binario di riserva — senza API key:** Claude ti guida UN campo alla volta dentro Instantly ("ora sei su Campaigns → Add New: incolla questo nome…"), mai più di un passaggio aperto alla volta.

Dettagli che Claude imposta comunque (in entrambi i binari):
1. **Tracking:** custom tracking domain (CNAME su Cloudflare verso Instantly — lo crea Claude col token del Manuale 02) oppure open tracking disattivato (migliora la consegna)
2. **Unibox:** tutte le risposte arrivano lì; imposta anche l'inoltro alla mail principale (Manuale 06)

**E quando qualcuno risponde?** Le risposte NON si improvvisano: si gestiscono col **Manuale 23** (gestione risposte) — classificazione, bozze pronte, follow-up. Aprilo alla prima risposta ricevuta.

## Segnali di allarme
Reply rate <1% → cambia template/target. Bounce >3% → pulisci la lista (verifica email prima con un verificatore). Spam complaints → fermati e rivedi tutto.

**Fatto? Aggiorna la memoria:** in CLAUDE.md spunta questo manuale in "Stato Fase Operativa", aggiorna "Punto di ripresa" al prossimo passo, e annota gli asset creati (account, domini, URL) in "Asset operativi".
