# MANUALE 09 — Salvare i lead su Supabase (il tuo database clienti)

**Perché:** un posto unico e gratuito dove finiscono TUTTI i lead (form, cold, fiere, WhatsApp), invece di email sparse. Piano free sufficiente per iniziare.

## Setup (10 minuti)
1. Account su **supabase.com** → **New project** (nome azienda, regione EU, password DB nel gestore password)
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
Claude interroga: nuovi lead per fonte, conversioni per stato, follow-up in ritardo → aggiorna la dashboard (Manuale 10) e propone azioni.
