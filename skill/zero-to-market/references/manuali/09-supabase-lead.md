# MANUALE 09 — Salvare i lead su Supabase (il tuo database clienti)

**Perché:** un posto unico e gratuito dove finiscono TUTTI i lead (form, cold, fiere, WhatsApp), invece di email sparse. Piano free sufficiente per iniziare.

## Passo 0 — Apertura account Supabase (da zero)
- **Cosa fa il cliente:**
  1. Vai su **supabase.com** → **Start your project / Sign up**. Ti propone di entrare **con GitHub** o **con email**: scegli **email** (GitHub è un sito per programmatori — un account in più da gestire senza motivo). Email aziendale principale + password generata dal gestore (salvala subito, manuale 00b).
  2. Conferma l'email di verifica. Niente carta: il **piano free** basta per partire.
- **Cosa fa Claude:** ti guida schermata per schermata e prepara i dati del progetto (nome, regione) da incollare.

> ⚠️ **Attenzione, piano free: il progetto "si addormenta".** Se nessuno tocca il database per **circa 1 settimana**, Supabase lo **mette in pausa** — il form della landing smette di salvare i lead e sembra tutto rotto. Tre rimedi, dal più semplice:
> 1. **Riattivazione a mano:** entra su supabase.com → il progetto mostra "Paused" → pulsante **Restore/Resume** → torna vivo in 1-2 minuti.
> 2. **Ping periodico (lo imposta Claude):** una piccola lettura automatica al database ogni pochi giorni, così non risulta mai inattivo. Chiedi a Claude "imposta il ping anti-pausa" e lo configura lui.
> 3. **Piano Pro (~25$/mese alla data di stesura):** niente più pausa. Passa a Pro quando i lead iniziano ad arrivare davvero — a quel punto un form che non salva costa più del piano.

## Setup (10 minuti)
1. Dentro Supabase: **New project** (nome azienda, regione EU, password DB generata e salvata nel gestore password — manuale 00b)
2. **Se il cliente collega il connettore Supabase a Claude, fa tutto Claude** (consiglialo SEMPRE). Altrimenti: SQL Editor → incolla lo schema che Claude genera:
```sql
create table leads (
  id uuid primary key default gen_random_uuid(),
  created_at timestamptz default now(),
  nome text, email text, telefono text, azienda text,
  fonte text,          -- optin | cold | fiera | whatsapp | referral
  stato text default 'nuovo',  -- nuovo | contattato | risposto | call | cliente | perso
  valore numeric, note text
);
alter table leads enable row level security;
```
3. **Sicurezza:** RLS attivo; la **service key** non va MAI in pagine pubbliche (solo lato server/Edge Function); per la dashboard in sola lettura crea una policy select dedicata

## Come entrano i lead
- **Form della landing** → Edge Function/endpoint che inserisce in `leads` + trigger email Brevo (Claude scrive il codice)
- **CSV** (fiere, liste): import da Table Editor o lo fa Claude col connettore
- **Instantly:** esporta i reply positivi → import (o webhook → Make/n8n → Supabase)
- **Manuale:** il cliente dice a Claude "aggiungi lead Mario Rossi, conosciuto in fiera di settore" → Claude inserisce

## Uso settimanale (modalità reparto)
Claude interroga: nuovi lead per fonte, conversioni per stato, follow-up in ritardo → aggiorna la dashboard (Manuale 10) e propone azioni. Bonus anti-pausa: l'uso settimanale tiene anche sveglio il progetto free.

**Fatto? Aggiorna la memoria:** in CLAUDE.md spunta questo manuale in "Stato Fase Operativa", aggiorna "Punto di ripresa" al prossimo passo, e annota gli asset creati (account, domini, URL) in "Asset operativi".
