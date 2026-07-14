# MANUALE 11 — I connettori giusti (i "cavi" tra Claude e i tuoi strumenti)

**Cosa sono:** collegamenti che permettono a Claude di AGIRE nei tuoi account (creare grafiche, salvare lead, leggere email) invece di darti solo istruzioni. Si attivano in 1 minuto: **claude.ai → Impostazioni → Connettori → cerca → Connetti** (login nel servizio). Regola fissa: Claude chiede SEMPRE conferma prima di toccare un account esterno.

## Quali attivare (proponili appena servono, non prima)

**Regola prima di collegare: il connettore collega un account che ESISTE già.** Se il cliente non ha l'account di quel servizio, prima si crea l'account (con password generata e salvata nel gestore — manuale **00b**), POI si attiva il connettore. Claude lo verifica sempre: "hai già un account su X? Se no, apriamolo insieme prima".

| Momento | Connettore | Cosa permette a Claude | Se non hai l'account |
|---|---|---|---|
| Giorno 0/1 | **Google Drive** | leggere i materiali esistenti del cliente | è incluso nell'account Google (gratis) — se non ne hai uno: accounts.google.com → Crea account |
| Giorno 3-5 | **Canva** (o Adobe) | creare brochure, slide e grafiche direttamente nell'account | canva.com → Registrati (email o Google). Il piano **Free basta** per partire; **Pro** (~12€/mese alla data di stesura) serve solo se vuoi il **brand kit** (colori/font/logo aziendali salvati e applicati ovunque) e più foto/modelli |
| Giorno 4 | **Gmail** | etichette/filtri per le risposte, bozze email | incluso nell'account Google (vedi sopra) |
| Giorno 6 | **Supabase** | creare il database lead e gestirlo (Manuale 09) | apertura guidata in **M09** (gratis per partire) |
| Giorno 6 | **Netlify/Vercel** | pubblicare landing/optin page online | apertura guidata in **M15** (gratis per partire) |
| Fase reparto | **Notion** | calendario editoriale e attività | notion.com → Sign up (Free basta) |
| Se vende online | **Stripe/PayPal** | link di pagamento per SLO/offerte | apertura guidata in **M16** (Stripe chiede documenti e IBAN — vedi 00b) |

Per ogni apertura: dati pronti dalla cartellina del manuale **00b**, password generata e salvata nel gestore, mai su foglietti.

## Ordine di preferenza quando qualcosa va fatto
1. **Connettore** (Claude agisce direttamente) → 2. **API con guida** (Claude scrive il codice/istruzioni) → 3. **Manuale click-by-click** (il cliente esegue, Claude detta i passi).

## Non esiste il connettore per…
Instantly, Migadu, Cloudflare, Brevo, Meta Ads: per questi Claude usa i Manuali 01-08 (guida passo-passo + codice dove serve). Se in futuro compaiono nella directory connettori, preferiscili.

**Fatto? Aggiorna la memoria:** in CLAUDE.md spunta questo manuale in "Stato Fase Operativa", aggiorna "Punto di ripresa" al prossimo passo, e annota gli asset creati (account, domini, URL) in "Asset operativi".
