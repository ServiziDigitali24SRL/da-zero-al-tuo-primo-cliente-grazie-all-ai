# MANUALE 08 — Pubblicazione automatica su IG e FB (Meta Graph API)

**Obiettivo:** pubblicare i contenuti (creati con Claude) su Facebook e Instagram in automatico. Tre livelli: scegli col cliente il più semplice che basta.

## Livello 1 — No-code (parti da qui)
**Meta Business Suite → Pianificazione**: gratis, programma post FB+IG in anticipo. Claude prepara il calendario (30 post/mese: testo+hashtag+indicazione visual) → il cliente li carica in 1 sessione al mese. Zero setup tecnico.

## Livello 2 — Low-code (automazione con strumenti)
Make/Zapier/n8n: scenario "nuova riga nel foglio/Supabase → pubblica su IG+FB". Il calendario vive in una tabella (data, testo, url immagine, canale); lo strumento pubblica da solo. Claude scrive i contenuti e la struttura tabella.

## Livello 3 — API diretta (per chi vuole il controllo totale)
Prerequisiti: Pagina FB + account **Instagram Business** collegato alla pagina; app su **developers.facebook.com** (tipo Business); permessi `pages_manage_posts`, `pages_read_engagement`, `instagram_basic`, `instagram_content_publish`; token di pagina long-lived (o System User token dal Business Manager per i propri asset).
- **IG (2 passi):** `POST /{ig-user-id}/media` con `image_url` (pubblica raggiungibile) + `caption` → ottieni `creation_id` → `POST /{ig-user-id}/media_publish?creation_id=...`. Per i video/Reels: `media_type=REELS` + `video_url` (upload asincrono, poll dello status)
- **FB Pagina:** `POST /{page-id}/photos` (url+message) o `POST /{page-id}/feed` (message+link)
- **Limiti:** IG ha un tetto di post/giorno via API per account (storicamente ~25/24h: verifica nella doc) e i token scadono → usa long-lived e rinnova
- Claude genera lo script (Node/Python) + le istruzioni token passo-passo; l'esecuzione ricorrente va su un servizio del cliente (Make/n8n cloud) — il computer non deve restare acceso

## Regola editoriale
Contenuti dal Giorno 6 + brand brief: 3 pilastri (educazione/meccanismo · prova/casi · offerta), 3-5 post/settimana, formato nativo (Reels > immagini), CTA verso optin.
