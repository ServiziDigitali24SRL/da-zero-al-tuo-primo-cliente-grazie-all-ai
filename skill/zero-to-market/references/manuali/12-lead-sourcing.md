# MANUALE 12 — Dove trovare i lead (la benzina del cold)

**Perché:** hai le caselle scaldate (M03) e i template pronti (M04), ma senza una lista di destinatari giusti non parte niente. Questo manuale ti dice **dove prendere contatti B2B di qualità** e come prepararli per l'invio.

**Regola d'oro:** meglio 500 contatti giusti (settore, ruolo, paese esatti) che 5.000 a caso. La qualità della lista pesa più del testo dell'email.

---

## Dove trovare i contatti (dal più comodo al più artigianale)

### 1) Apollo.io — il più veloce (consigliato)
Database di aziende e contatti B2B con email già incluse.
- **Se il connettore Apollo è collegato a Claude** (Impostazioni → Connettori → Apollo): lo dice a Claude e **fa tutto lui** — cerca le aziende target, filtra e ti prepara la lista pronta. Chiedi conferma prima di esportare grandi volumi.
- **Filtri che imposta Claude** (dal tuo Giorno 1-2): **settore** (industria/keyword), **ruolo/qualifica** (es. "titolare", "responsabile acquisti", "marketing manager"), **paese/area**, dimensione azienda (n° dipendenti), tecnologie usate se rilevante.
- **Cosa fa il cliente:** collega Apollo, conferma i filtri proposti, approva l'export. Piano gratuito limitato; per volumi seri serve il piano a pagamento (verifica il listino su apollo.io).

### 2) LinkedIn Sales Navigator
Il più preciso per il B2B, soprattutto ruoli specifici.
- **Cosa fa il cliente:** crea ricerche con i filtri (settore, ruolo, area, dimensione), salva le liste.
- Le email non sono incluse: si estraggono con strumenti di email finding (es. Apollo stesso, o estensioni dedicate) e poi si verificano (vedi sotto).
- Costo: ~80€/mese, ma la precisione è alta.

### 3) Registri e camere di commercio / Atoka / directory ufficiali
Per il mercato italiano: **registro imprese**, elenchi camerali, **Atoka** (dati aziende italiane con contatti e filtri per settore/fatturato/zona), directory di categoria.
- **Cosa fa il cliente:** scarica/esporta secondo i filtri; Claude ripulisce e struttura i dati.
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
- **Come:** passa il CSV in un verificatore (**MillionVerifier**, NeverBounce, ZeroBounce o simili). Costo: pochi centesimi a contatto.
- **Cosa fa Claude:** ti spiega quale usare e come leggere il risultato; tiene solo gli stati "valid"/"safe", scarta "invalid" e "risky".
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

**Collegamenti:** questa lista alimenta **M03** (warmup/invio Instantly) e **M04** (template cold+nurturing). Le risposte positive → **M09** (Supabase) e **M06** (inoltro alla mail principale).
