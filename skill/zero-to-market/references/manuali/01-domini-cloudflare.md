# MANUALE 01 — Comprare i domini su Cloudflare (per il cold email)

**Perché:** per l'email a freddo NON si usa mai il dominio principale dell'azienda (rischio reputazione). Si comprano 1-3 domini "di servizio" simili al brand. Il dominio principale resta pulito per sito e email transazionali.

**Costo:** ~10-12€/anno a dominio (Cloudflare vende a prezzo di costo, privacy WHOIS inclusa gratis).

## Scelta dei domini (fallo con Claude)
- Varianti del brand: `provabrand.com` → `getprovabrand.com`, `provabrand-srl.com`, `provabrandexport.com`
- Estensioni: .com prima scelta; .it ok per l'Italia; evita estensioni "spammose" (.xyz, .top)
- Regola: 1 dominio ogni ~3 caselle email; per iniziare bastano 2 domini

## Passo 0 — Apertura account Cloudflare (da zero)
Prerequisiti dal Manuale 00b: gestore password pronto, email aziendale, carta a portata di mano.

- **Cosa fa il cliente:**
  1. Vai su **dash.cloudflare.com/sign-up** → inserisci l'email principale aziendale e una password **generata dal gestore** (scudetto Bitwarden → Genera → salva SUBITO nel gestore, manuale 00b).
  2. **Verifica l'email:** Cloudflare manda un messaggio "Verify your email" — clicca il pulsante dentro. Senza questa verifica non potrai comprare domini, quindi falla subito.
  3. Se durante l'ingresso Cloudflare propone di scegliere un piano per un sito: il **piano Free basta e avanza** — non serve pagare nulla per l'account; pagherai SOLO i domini che compri. Se propone la 2FA (verifica in due passaggi), attivala come da manuale 00b.
  4. **Carta PRIMA dell'acquisto:** menu a sinistra → **Manage Account → Billing → Payment info → Add payment method** → inserisci la carta aziendale. Se salti questo passo, il carrello del dominio si blocca a metà: mettila ora e non ci pensi più.
- **Cosa fa Claude:** ti dice a ogni schermata dove cliccare, ti avvisa prima di email di verifica e 2FA, e controlla con te che la carta risulti salvata prima di passare all'acquisto.

## Passi per comprare (il cliente clicca, Claude guida schermata per schermata)
1. Menu **Domain Registration → Register Domains** → cerca il dominio scelto → **Purchase**
2. **Dati di contatto del dominio (ICANN):** ti chiede nome, indirizzo, telefono, email. Metti i **dati aziendali VERI** (quelli della cartellina del manuale 00b): è un obbligo di chi registra domini (ICANN, l'ente mondiale dei domini) e con dati falsi il dominio può essere sospeso. Tranquillo per la privacy: questi dati **NON diventano pubblici** — Cloudflare include gratis la "privacy WHOIS" (chi guarda il registro pubblico dei domini vede dati mascherati, non i tuoi).
3. **Attenzione all'email di conferma ICANN:** dopo l'acquisto può arrivare un'email "verify your contact information" — cliccala entro 15 giorni, altrimenti il dominio viene sospeso. Se non la vedi, controlla lo spam.
4. Ripeti per ogni dominio
5. Per ogni dominio: **DNS → Records** — qui inseriremo i record di Migadu (Manuale 02); i record li crea Claude come spiegato nel Manuale 02, tu non devi digitarli a mano
6. Attiva **Email Routing** solo sui domini che NON avranno caselle Migadu (vedi Manuale 06)

## Attenzioni
- I domini comprati su Cloudflare usano obbligatoriamente i DNS di Cloudflare (per noi è un vantaggio: tutto in un posto)
- Compra i domini SUBITO al Giorno 6: servono 2-4 settimane di riscaldamento prima di inviare (Manuale 03)
- Annota in `CLAUDE.md`: domini comprati, data acquisto, a cosa serve ognuno

**Fatto? Aggiorna la memoria:** in CLAUDE.md spunta questo manuale in "Stato Fase Operativa", aggiorna "Punto di ripresa" al prossimo passo, e annota gli asset creati (account, domini, URL) in "Asset operativi".
