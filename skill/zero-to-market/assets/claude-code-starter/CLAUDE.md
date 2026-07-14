# <NOME_PROGETTO>

<!--
  REGOLE DI MANUTENZIONE DI QUESTO FILE
  - Questo file viene caricato in OGNI sessione. Tenerlo sotto 200 righe.
  - Se un'istruzione serve solo per certi file → .claude/rules/<topic>.md con `paths:`
  - Se un'istruzione serve solo per certi task → .claude/skills/<nome>/SKILL.md
  - Se un'istruzione DEVE essere rispettata sempre → .claude/settings.json (hooks/permissions)
    perché questo file è una GUIDA che il modello legge, non un vincolo che il runtime impone.
  - Cancellare i commenti e le sezioni non pertinenti prima di committare.
-->

## Cosa è questo progetto

<Una o due righe. Cosa fa, per chi, in produzione o no.>

## Comandi

Usa SEMPRE questi comandi. Non inventarne altri e non assumere il package manager.

- Install: `<npm ci | pnpm install --frozen-lockfile | uv sync>`
- Dev: `<npm run dev>`
- Build: `<npm run build>`
- Test: `<npm test>`
- Test singolo: `<npm test -- <path>>`
- Lint: `<npm run lint>`
- Typecheck: `<npm run typecheck>`
- Format: `<npm run format>`
- Migrazioni DB: `<comando>`
- Deploy: `<comando>` — NON eseguirlo senza approvazione esplicita (vedi sotto)

## Stack

- Linguaggio/runtime: <es. TypeScript strict, Node 22>
- Framework: <es. Next.js 15 App Router>
- Database: <es. Postgres via Supabase>
- Hosting: <es. Vercel / Hetzner + Docker>
- Auth: <es. Supabase Auth, JWT in cookie httpOnly>
- Pagamenti: <es. Stripe>

## Mappa del codice

Non è un elenco di directory: è dove vive cosa.

- `src/<...>/` — <cosa contiene>
- `src/<...>/` — <cosa contiene>
- `tests/` — <cosa contiene>
- `infra/` — <cosa contiene>
- Generato / da non modificare a mano: `<es. src/types/db.ts, dist/, .next/>`

## Convenzioni non negoziabili

- <es. Named export, mai default export>
- <es. I test stanno accanto al sorgente: foo.ts → foo.test.ts>
- <es. Ogni endpoint valida l'input con uno schema (Zod/Pydantic). Nessuna eccezione.>
- <es. Shape di risposta API: { data } | { error }>
- <es. Nessun segreto nel codice. Le credenziali arrivano solo da variabili d'ambiente.>
- <es. Ogni query al DB passa dal repository layer, mai SQL inline nei componenti.>

## Modo di lavorare

- Prima esplora, poi pianifica, poi scrivi. Su task non banali usa il plan mode.
- Ogni modifica deve essere verificabile: se non esiste un test o un comando che dimostra
  che funziona, dillo invece di dichiarare "fatto".
- Non dichiarare mai una fix completata senza aver eseguito lint + typecheck + test
  e averli visti passare. Se falliscono, correggi e rilancia. (Questo è anche imposto
  dall'hook `Stop` in `.claude/settings.json`.)
- Se una strada è bloccata (dipendenza mancante, API che non risponde, permesso negato),
  fermati, dillo, proponi un'alternativa. Non insistere sullo stesso approccio.
- Modifiche minime e mirate: non rifattorizzare codice che non è oggetto del task.

## Zone di rischio

Toccare questi punti solo se il task lo richiede esplicitamente, e segnalarlo nel riepilogo:

- `<path/auth/>` — <perché è rischioso>
- `<path/payments/>` — <perché è rischioso>
- `<path/migrations/>` — le migrazioni applicate sono immutabili: aggiungerne di nuove, mai editarle
- Qualsiasi file `.env*` — non leggerlo, non modificarlo, non stamparne il contenuto

## Richiede approvazione umana

Fermati e chiedi prima di:

- eseguire un deploy o una promozione in produzione
- eseguire migrazioni distruttive (DROP, TRUNCATE, ALTER che perde dati)
- modificare configurazioni di billing, chiavi, webhook o permessi
- fare `git push --force`, riscrivere la history, cancellare branch
- installare nuove dipendenze runtime
- avviare processi persistenti in locale (cron, listener, daemon): vanno sul server

## Definition of done

Una task è finita quando: lint pulito, typecheck pulito, test verdi, nessun `TODO` lasciato
senza issue, e il riepilogo elenca cosa è cambiato e con quale comando l'utente può verificarlo.
