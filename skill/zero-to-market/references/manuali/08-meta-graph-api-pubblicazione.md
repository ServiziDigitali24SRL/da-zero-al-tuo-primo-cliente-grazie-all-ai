# MANUALE 08 — Pubblicazione automatica su IG e FB (Meta Graph API)

**Obiettivo:** pubblicare i contenuti (creati con Claude) su Facebook e Instagram in automatico. Tre livelli — ma il Livello 1 serve SOLO per il primissimo test: l'obiettivo è arrivare in fretta al 2 o al 3, dove **i post partono da soli** e il cliente approva solo il calendario.

## Passo 0 — Asset social da zero (se non hai ancora niente)
Per pubblicare servono: una **Pagina Facebook** e (per Instagram) un account **Instagram Business** collegato alla Pagina.
- **La Pagina Facebook:** percorso completo da zero nel **Manuale 13, Passo 0** (account personale vero + 2FA + Pagina). Fallo prima e torna qui.
- **Instagram da zero — Cosa fa il cliente:** scarica l'app Instagram sul telefono → "Crea nuovo account" con l'email aziendale e **username = nome del brand**. Salva la password nel gestore password (manuale **00b**).
- **Trasformalo in account Business:** nell'app: Impostazioni → Account → **"Passa a un account professionale"** → scegli **"Azienda"** (non "Creator") → categoria. Gratis, 2 minuti.
- **Collegalo alla Pagina:** sempre lì, "Collega Pagina Facebook" → scegli la tua. Senza questo collegamento la pubblicazione automatica su Instagram NON funziona.
- **Cosa fa Claude:** verifica prima che lo username sia libero e coerente col brand, prepara bio e foto profilo dal brand brief, scrive i primi 9 post (per non far trovare un profilo vuoto) e ti detta ogni passaggio dell'app un campo alla volta.

## Livello 1 — No-code (SOLO per il primissimo test)
**Meta Business Suite → Pianificazione**: gratis, programma post FB+IG in anticipo. Va bene per la **prima settimana**, per prendere confidenza — non come regime: 30 caricamenti a mano al mese sono una corvée che non deve esistere.
- **Cosa fa Claude:** prepara il calendario (30 post/mese: testo+hashtag+indicazione visual) e **ti guida nel caricamento post per post** ("ora incolla questo testo, carica questa immagine, imposta questa data") — mai "carica tu da solo".
- **Cosa fa il cliente:** clicca e incolla dove Claude gli dice, e approva.
- **Regola:** appena la Pagina è attiva e il primo giro di post ti convince, **Claude propone e monta LUI il Livello 2 o 3**: da lì i post partono da soli e tu approvi solo il calendario. Il Livello 1 non è la destinazione, è la rampa di lancio.

## Livello 2 — Low-code (automazione con strumenti)
Make/Zapier/n8n: scenario "nuova riga nel foglio/Supabase → pubblica su IG+FB". Il calendario vive in una tabella (data, testo, url immagine, canale); lo strumento pubblica da solo. Claude scrive i contenuti e la struttura tabella, e **monta lui lo scenario**: al cliente restano solo i clic di autorizzazione sui suoi account.
**Apertura account (2 minuti, guidata da Claude):** Make (make.com → Sign up con email; il piano Free — ~1.000 operazioni/mese alla data di stesura — basta per ~30 post) oppure Zapier (zapier.com/sign-up; il Free è più limitato). Password nel gestore password (manuale **00b**).

## Livello 3 — API diretta (il regime migliore: pubblica Claude, tu approvi il calendario)
Prerequisiti: Pagina FB + account **Instagram Business** collegato alla pagina; app su **developers.facebook.com** (tipo Business); permessi `pages_manage_posts`, `pages_read_engagement`, `instagram_basic`, `instagram_content_publish`; token di pagina long-lived (o System User token dal Business Manager per i propri asset).
- **IG (2 passi):** `POST /{ig-user-id}/media` con `image_url` (pubblica raggiungibile) + `caption` → ottieni `creation_id` → `POST /{ig-user-id}/media_publish?creation_id=...`. Per i video/Reels: `media_type=REELS` + `video_url` (upload asincrono, poll dello status)
- **FB Pagina:** `POST /{page-id}/photos` (url+message) o `POST /{page-id}/feed` (message+link)
- **Limiti:** IG ha un tetto di post/giorno via API per account (storicamente ~25/24h: verifica nella doc) e i token scadono → usa long-lived e rinnova
- Claude genera lo script (Node/Python) + le istruzioni token passo-passo; l'esecuzione ricorrente va su un servizio del cliente (Make/n8n cloud) — il computer non deve restare acceso

## Regola editoriale
Contenuti dal Giorno 6 + brand brief: 3 pilastri (educazione/meccanismo · prova/casi · offerta), 3-5 post/settimana, formato nativo (Reels > immagini), CTA verso optin.

---

**Fatto? Aggiorna la memoria:** in CLAUDE.md spunta questo manuale in "Stato Fase Operativa", aggiorna "Punto di ripresa" al prossimo passo, e annota gli asset creati (account, domini, URL) in "Asset operativi".

**Collegamenti:** Pagina e account da zero (**M13**, Passo 0) · gestore password (**00b**) · contenuti da `output/06-*` (Giorno 6) e brand brief · il token di pagina serve anche per le campagne (**M13**, Strada B) · i post rimandano all'optin della landing (**M15**).
