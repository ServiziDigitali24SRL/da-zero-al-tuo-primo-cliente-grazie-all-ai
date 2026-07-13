# MANUALE 01 — Comprare i domini su Cloudflare (per il cold email)

**Perché:** per l'email a freddo NON si usa mai il dominio principale dell'azienda (rischio reputazione). Si comprano 1-3 domini "di servizio" simili al brand. Il dominio principale resta pulito per sito e email transazionali.

**Costo:** ~10-12€/anno a dominio (Cloudflare vende a prezzo di costo, privacy WHOIS inclusa gratis).

## Scelta dei domini (fallo con Claude)
- Varianti del brand: `provabrand.com` → `getprovabrand.com`, `provabrand-srl.com`, `provabrandexport.com`
- Estensioni: .com prima scelta; .it ok per l'Italia; evita estensioni "spammose" (.xyz, .top)
- Regola: 1 dominio ogni ~3 caselle email; per iniziare bastano 2 domini

## Passi (il cliente esegue, Claude guida schermata per schermata)
1. Crea account su **dash.cloudflare.com** (email principale aziendale)
2. Menu **Domain Registration → Register Domains** → cerca il dominio → **Purchase** (carta di credito)
3. Ripeti per ogni dominio
4. Per ogni dominio: **DNS → Records** — qui inseriremo i record di Migadu (Manuale 02)
5. Attiva **Email Routing** solo sui domini che NON avranno caselle Migadu (vedi Manuale 06)

## Attenzioni
- I domini comprati su Cloudflare usano obbligatoriamente i DNS di Cloudflare (per noi è un vantaggio: tutto in un posto)
- Compra i domini SUBITO al Giorno 6: servono 2-4 settimane di riscaldamento prima di inviare (Manuale 03)
- Annota in `CLAUDE.md`: domini comprati, data acquisto, a cosa serve ognuno
