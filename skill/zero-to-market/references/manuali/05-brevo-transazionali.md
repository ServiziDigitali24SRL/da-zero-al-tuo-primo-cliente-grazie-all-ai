# MANUALE 05 — Brevo per le email transazionali e di funnel

**Cosa sono le transazionali:** email 1-a-1 automatiche legate a un'azione — benvenuto, consegna del lead magnet, conferma acquisto, notifica candidatura. Vanno su **Brevo** (gratis fino a 300 email/giorno) e usano il **dominio principale** (o sottodominio `mail.dominioprincipale.com`) — MAI i domini cold.

## Passo 0 — Apertura account Brevo (da zero)
- **Cosa fa il cliente:**
  1. Vai su **brevo.com** → **Sign up free** → email aziendale principale + password generata dal gestore (salvala subito, manuale 00b). Conferma l'email di verifica (a volte chiede anche il telefono).
  2. **Compila il profilo COMPLETO, senza saltare campi:** nome azienda, sito web, **indirizzo fisico della sede** (obbligatorio per legge nelle email di massa — comparirà in fondo alle email), settore, numero di contatti. Usa i dati della cartellina del manuale 00b.
- **Cosa fa Claude:** ti prepara i dati da incollare campo per campo e ti spiega ogni domanda del questionario di Brevo.

**Gotcha noto — la revisione degli account nuovi:** Brevo **controlla a mano gli account appena aperti** prima di sbloccare gli invii (è la loro difesa anti-spam). Se il profilo è incompleto o vago, l'account resta in revisione o viene rifiutato. Quindi: profilo completo subito, indirizzo fisico vero, sito web funzionante indicato. La validazione può richiedere **da qualche ora a 1-2 giorni**: fai il setup DNS nel frattempo, ma non allarmarti se "l'invio non funziona" il primo giorno — è la revisione, non un errore tuo. Se dopo 2 giorni sei ancora bloccato → Manuale 18.

**Nota sul piano free:** gratis fino a ~300 email/giorno (alla data di stesura), ma le email portano in fondo il **logo "Sent with Brevo"**. Per le transazionali va benissimo per partire; quando il volume cresce o il logo disturba, il primo piano a pagamento (~9-25€/mese) lo toglie.

## Setup
1. Dentro Brevo: **Senders, Domains & Dedicated IPs → Domains → Add a domain** (dominio principale)
2. Brevo fornisce i record: **Cloudflare → DNS** → TXT di verifica (brevo-code), DKIM (mail._domainkey / brevo1/brevo2), e allineamento del DMARC già presente. **I record li crea Claude** col token API Cloudflare del Manuale 02 (o dettandoli uno alla volta), e li verifica con `dig` — il cliente non digita record DNS a mano
3. **Senders:** crea il mittente `info@dominioprincipale.com` (o `ciao@`)
4. Due strade per inviare:
   - **Automazioni Brevo (no-code):** Contacts + Automations → trigger "si iscrive alla lista X" → invia sequenza (benvenuto, consegna lead magnet, nurturing del Giorno 4)
   - **API/SMTP (per integrazioni):** SMTP `smtp-relay.brevo.com:587` con chiave SMTP, oppure API key (Settings → API Keys) — la userai per landing custom e Supabase (Manuale 09)
5. Carica i template del Giorno 4: crea in **Templates** ogni email, con i parametri `{{contact.NOME}}`

## Divisione dei compiti (fissala in CLAUDE.md)
- **Brevo** = transazionali + newsletter/nurturing agli ISCRITTI (hanno dato consenso)
- **Instantly** = cold outreach ai NON iscritti
- Mai mischiare le due liste. Le risposte cold che diventano lead → si spostano in Brevo (e in Supabase)

**Fatto? Aggiorna la memoria:** in CLAUDE.md spunta questo manuale in "Stato Fase Operativa", aggiorna "Punto di ripresa" al prossimo passo, e annota gli asset creati (account, domini, URL) in "Asset operativi".
