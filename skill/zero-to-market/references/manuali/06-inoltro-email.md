# MANUALE 06 — Inoltro alla mail principale (niente risposta persa)

**Obiettivo:** il cliente legge TUTTO dalla sua casella principale (es. Gmail aziendale), anche ciò che arriva sui domini cold — e può rispondere "come" quegli indirizzi.

## A) Domini con caselle Migadu
1. Migadu → dominio → **Forwardings/Alias**: per ogni casella, inoltro copia verso la mail principale (in alternativa lascia tutto nella Unibox di Instantly e inoltra solo da lì)
2. Per RISPONDERE dall'indirizzo cold dentro Gmail: **Gmail → Impostazioni → Account → Invia messaggio come → Aggiungi** → indirizzo cold + SMTP `smtp.migadu.com:465`, user/password della casella (la ritrovi nel gestore password, manuale 00b) → conferma via codice
- **Cosa fa Claude:** prepara l'elenco esatto casella-per-casella (indirizzo, server, porta) e ti guida UN campo alla volta ("ora sei su Migadu, clicca Forwardings, incolla questo"); poi verifica con te con un'email di prova che l'inoltro funzioni davvero.
- **Cosa fa il cliente:** clicca dove indicato e incolla la password dal gestore quando richiesta.

## B) Domini senza caselle (solo ricezione)
**Cloudflare → Email Routing** (gratis): attiva → crea indirizzo o **catch-all** → destinazione = mail principale (verifica via link). Nota: Email Routing NON invia, solo riceve.

## C) Regole d'ordine nella mail principale
Crea filtri/etichette: "COLD-RISPOSTE" (da domini cold), "LEAD-SITO" (da Brevo/form), così nulla si mischia.
- **Cosa fa Claude:** se è collegato il connettore Gmail (M11), crea LUI etichette e filtri direttamente; altrimenti ti scrive i criteri esatti e ti guida dove incollarli.
- **Cosa fa il cliente:** solo le conferme sul proprio account (Gmail chiede l'ok su filtri nuovi) e il test finale: manda un'email di prova e verifica che finisca sotto l'etichetta giusta.

**Fatto? Aggiorna la memoria:** in CLAUDE.md spunta questo manuale in "Stato Fase Operativa", aggiorna "Punto di ripresa" al prossimo passo, e annota gli asset creati (account, domini, URL) in "Asset operativi".
