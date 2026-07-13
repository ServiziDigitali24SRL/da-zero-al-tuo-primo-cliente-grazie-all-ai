# MANUALE 05 — Brevo per le email transazionali e di funnel

**Cosa sono le transazionali:** email 1-a-1 automatiche legate a un'azione — benvenuto, consegna del lead magnet, conferma acquisto, notifica candidatura. Vanno su **Brevo** (gratis fino a 300 email/giorno) e usano il **dominio principale** (o sottodominio `mail.dominioprincipale.com`) — MAI i domini cold.

## Setup
1. Account su **brevo.com** → **Senders, Domains & Dedicated IPs → Domains → Add a domain** (dominio principale)
2. Brevo fornisce i record: **Cloudflare → DNS** → aggiungi TXT di verifica (brevo-code), DKIM (mail._domainkey / brevo1/brevo2), e allinea il DMARC già presente
3. **Senders:** crea il mittente `info@dominioprincipale.com` (o `ciao@`)
4. Due strade per inviare:
   - **Automazioni Brevo (no-code):** Contacts + Automations → trigger "si iscrive alla lista X" → invia sequenza (benvenuto, consegna lead magnet, nurturing del Giorno 4)
   - **API/SMTP (per integrazioni):** SMTP `smtp-relay.brevo.com:587` con chiave SMTP, oppure API key (Settings → API Keys) — la userai per landing custom e Supabase (Manuale 09)
5. Carica i template del Giorno 4: crea in **Templates** ogni email, con i parametri `{{contact.NOME}}`

## Divisione dei compiti (fissala in CLAUDE.md)
- **Brevo** = transazionali + newsletter/nurturing agli ISCRITTI (hanno dato consenso)
- **Instantly** = cold outreach ai NON iscritti
- Mai mischiare le due liste. Le risposte cold che diventano lead → si spostano in Brevo (e in Supabase)
