# MANUALE 12 — Dove trovare i lead (la benzina del cold)

**Perché:** hai le caselle scaldate (M03) e i template pronti (M04), ma senza una lista di destinatari giusti non parte niente. Questo manuale ti dice **dove prendere contatti B2B di qualità** e come prepararli per l'invio.

**Regola d'oro:** meglio 500 contatti giusti (settore, ruolo, paese esatti) che 5.000 a caso. La qualità della lista pesa più del testo dell'email.

---

## Dove trovare i contatti (dal più comodo al più artigianale)

### 1) Apollo.io — il più veloce (consigliato)
Database di aziende e contatti B2B con email già incluse.
- **Aprire l'account da zero:**
  1. Vai su **apollo.io** → "Sign up" → registrati con la tua **email aziendale** (⚠️ trappola nota: con un indirizzo gratuito tipo Gmail, Apollo può limitare o bloccare le funzioni — usa la mail del tuo dominio). **Salva la password nel gestore password (manuale 00b)** e conferma l'email.
  2. **Il piano gratuito è per PROVARE, non per costruire la lista:** alla data di stesura dà pochi crediti email al mese (nell'ordine delle decine, non delle migliaia) ed export a piccoli blocchi. Bastano per verificare che i filtri trovino le aziende giuste; per la lista vera da 500-1.000 contatti serve un piano a pagamento (~da 50€/mese alla data di stesura; verifica il listino su apollo.io/pricing prima di decidere).
- **Se il connettore Apollo è collegato a Claude** (Impostazioni → Connettori → Apollo): lo dici a Claude e **fa tutto lui** — cerca le aziende target, filtra e ti prepara la lista pronta. Chiedi conferma prima di esportare grandi volumi.
- **Senza connettore — Cosa fa Claude:** non ti elenca "i filtri da impostare": ti consegna la **ricerca già costruita** — un link Apollo con i filtri già dentro (dal tuo Giorno 1-2: **settore**, **ruolo/qualifica** come "titolare"/"responsabile acquisti"/"marketing manager", **paese/area**, dimensione azienda, tecnologie usate se rilevante).
- **Cosa fa il cliente:** fa login, apre il link di Claude, controlla che i risultati abbiano senso e clicca **Export**. Tutto qui.

### 2) LinkedIn Sales Navigator
Il più preciso per il B2B, soprattutto ruoli specifici.
- ⚠️ **Premessa: serve un profilo LinkedIn attivo.** Sales Navigator è un abbonamento che si aggiunge a un profilo LinkedIn esistente. Se non ce l'hai (o ne hai uno vuoto e mai usato), **valuta prima Apollo**: parti subito, senza dover costruire un profilo da zero.
- **Aprire da zero (se il profilo ce l'hai):** vai su **linkedin.com/sales** → "Inizia la prova gratuita" (di solito ~30 giorni). ⚠️ Trappola nota: ti chiede **subito la carta** e alla fine della prova **si rinnova da solo** (~80-100€/mese alla data di stesura). Segna in agenda la data di disdetta se non sei sicuro di tenerlo.
- **Cosa fa Claude:** costruisce lui le ricerche e ti consegna i **link con i filtri già impostati** (settore, ruolo, area, dimensione).
- **Cosa fa il cliente:** login, apre i link di Claude, salva le liste.
- Le email non sono incluse: si estraggono con strumenti di email finding (es. Apollo stesso, o estensioni dedicate) e poi si verificano (vedi sotto).

### 3) Registri e camere di commercio / Atoka / directory ufficiali
Per il mercato italiano: **registro imprese**, elenchi camerali, **Atoka** (dati aziende italiane con contatti e filtri per settore/fatturato/zona), directory di categoria.
- ⚠️ **Atoka non è self-service:** non c'è un "registrati e paghi con la carta" — si passa da un **contatto commerciale** (richiesta demo/preventivo dal sito atoka.io, poi call e offerta). I dati sono ottimi, ma mettila in conto come trattativa che richiede giorni, non come acquisto al volo. Per partire OGGI, meglio Apollo o gli elenchi camerali.
- **Cosa fa il cliente:** scarica/esporta secondo i filtri (o compila la richiesta demo Atoka); Claude ripulisce e struttura i dati.
- Ottimo per liste locali e verticali molto specifici.

### 4) Fiere ed eventi di settore
Le liste espositori/partecipanti delle fiere del tuo settore sono oro (sono già interessati al tuo mondo).
- **Cosa fa il cliente:** scarica il catalogo espositori dal sito della fiera, o raccoglie i contatti allo stand (collega la raccolta al database, M09).
- Aggancia il follow-up post-fiera (M04 nurturing + M07 WhatsApp).

### 5) La tua rubrica, le tue fatture, i tuoi contatti dormienti
Il pozzo più sottovalutato: ex clienti, preventivi non chiusi, biglietti da visita, contatti email vecchi.
- **Cosa fa Claude:** ti aiuta a raccoglierli in un unico CSV. Questi sono contatti "caldi" → vanno nella sequenza di riattivazione (SOS+VIA, `output/04-email-sequences.md`), non nel cold puro.

---

## Verifica email OBBLIGATORIA (prima di inviare)

Mai inviare a una lista non verificata: le email inesistenti fanno rimbalzare i messaggi (bounce) e **bruciano la reputazione delle caselle appena scaldate**.
- **Come:** con un verificatore **a crediti** (**MillionVerifier**, NeverBounce, ZeroBounce o simili). Funzionano tutti allo stesso modo: ti registri, compri un pacchetto di crediti (1 credito = 1 email verificata; pochi centesimi a contatto, si parte da ~10-40€ per qualche migliaio di verifiche alla data di stesura) e passi la lista.
- **Aprire l'account (esempio MillionVerifier):** **millionverifier.com** → "Sign up" con email → conferma email → **salva la password nel gestore password (manuale 00b)** → compra il pacchetto di crediti che ti serve (l'inserimento della carta lo fai tu).
- **La strada comoda — verifica via API, la fa Claude:** quasi tutti i verificatori espongono una **API key** (chiave personale, la trovi nel pannello del sito, di solito sotto "API" o "Integrations").
  - **Cosa fa il cliente:** copia la API key dal pannello, la salva nel gestore password (manuale 00b) e la incolla a Claude in chat.
  - **Cosa fa Claude:** manda lui il CSV al verificatore via API, aspetta il risultato, tiene solo gli stati **"valid"/"safe"** e scarta **"invalid"** e **"risky"**. Tu non tocchi nessun file e non carichi niente a mano.
- **Target:** bounce rate sotto il **3%**. Se una lista supera il 5% di email non valide, è di bassa qualità: cambiala.

---

## Prepara il CSV per Instantly

Colonne minime (una riga per contatto):

| Colonna | Esempio | A cosa serve |
|---|---|---|
| `email` | mario@azienda.it | destinatario (verificato) |
| `first_name` | Mario | personalizzazione `{{first_name}}` |
| `company` | Azienda Rossi | personalizzazione `{{company}}` |
| `custom_hook` | il vostro prodotto/servizio di punta | riga personalizzata nel tocco 1 |
| `fonte` | apollo / fiera / atoka | tracciamento (anche in Supabase, M09) |

- **Variabili di personalizzazione:** più il `custom_hook` è specifico, più alta la risposta. Claude può generare hook riga-per-riga partendo dal nome azienda/settore.
- Carica il CSV in Instantly → Leads → Import (M03).

---

## Quanti lead servono

- **Primo test:** **500-1.000 contatti** ben profilati. Sotto i 500 i numeri non dicono nulla; sopra i 1.000 rischi di bruciare lista prima di aver ottimizzato i template.
- Distribuiscili sulle caselle rispettando i limiti (max 20-30 invii/giorno per casella, M03): 1.000 lead con 3 caselle = ~2 settimane di invii.
- **Segmenta per angolo:** dividi la lista in 2-3 gruppi e prova un angolo diverso per gruppo (storia / caso studio / diretto, dal Giorno 6). Così scopri quale messaggio funziona su quale segmento.

---

## Conformità B2B (UE/Italia) — dillo sempre al cliente

- Contatta solo aziende **pertinenti** alla tua offerta, su email **aziendali** e ruoli coerenti: è comunicazione commerciale mirata, non invio massivo.
- **Niente liste comprate di dubbia origine** o raccolte senza criterio: oltre al rischio legale, sono di pessima qualità e bruciano i domini.
- Ogni messaggio deve avere **mittente identificabile** e una **via d'uscita semplice** ("rispondi 'no grazie' e non ti scrivo più"); rispetta subito chi si oppone.
- Inserisci i dati dell'azienda nel footer. In caso di dubbi su un mercato specifico, verifica le regole locali prima di partire.

---

**Fatto? Aggiorna la memoria:** in CLAUDE.md spunta questo manuale in 'Stato Fase Operativa', aggiorna 'Punto di ripresa' al prossimo passo, e annota gli asset creati (account, domini, URL) in 'Asset operativi'.

**Collegamenti:** questa lista alimenta **M03** (warmup/invio Instantly) e **M04** (template cold+nurturing). Le risposte positive → **M09** (Supabase) e **M06** (inoltro alla mail principale).
