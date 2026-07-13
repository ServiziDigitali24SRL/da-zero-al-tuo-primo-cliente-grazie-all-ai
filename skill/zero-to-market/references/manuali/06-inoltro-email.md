# MANUALE 06 — Inoltro alla mail principale (niente risposta persa)

**Obiettivo:** il cliente legge TUTTO dalla sua casella principale (es. Gmail aziendale), anche ciò che arriva sui domini cold — e può rispondere "come" quegli indirizzi.

## A) Domini con caselle Migadu
1. Migadu → dominio → **Forwardings/Alias**: per ogni casella, inoltro copia verso la mail principale (in alternativa lascia tutto nella Unibox di Instantly e inoltra solo da lì)
2. Per RISPONDERE dall'indirizzo cold dentro Gmail: **Gmail → Impostazioni → Account → Invia messaggio come → Aggiungi** → indirizzo cold + SMTP `smtp.migadu.com:465`, user/password della casella → conferma via codice

## B) Domini senza caselle (solo ricezione)
**Cloudflare → Email Routing** (gratis): attiva → crea indirizzo o **catch-all** → destinazione = mail principale (verifica via link). Nota: Email Routing NON invia, solo riceve.

## C) Regole d'ordine nella mail principale
Crea filtri/etichette: "COLD-RISPOSTE" (da domini cold), "LEAD-SITO" (da Brevo/form), così nulla si mischia. Claude può scrivere i criteri dei filtri; se è collegato il connettore Gmail può anche creare etichette e applicarle.
