# METODO ASK (Ryan Levesque) — chiedi al mercato, non indovinare

**A cosa serve nel percorso:** è il motore della **Ricerca** e della **segmentazione**. Il principio: *le persone non sanno dirti cosa vogliono, ma sanno benissimo dirti cosa NON vogliono e qual è il loro problema più grande*. Quindi non inventiamo il messaggio: lo facciamo **scrivere dal mercato** con 4 sondaggi messi in 4 punti diversi del funnel.

> Citazione guida: *"Se avessi chiesto alle persone cosa volevano, avrebbero detto 'cavalli più veloci'."* → non chiedere la soluzione, chiedi il **problema**.

Spiega sempre all'imprenditore in parole semplici: *"Prima di scrivere una riga di pubblicità, chiediamo direttamente ai tuoi potenziali clienti qual è il loro problema. Rispondono loro, con parole loro. Poi usiamo quelle parole esatte in tutti i materiali: così non 'suonano da venditore', suonano come parla il cliente."*

---

## Le 4 survey e DOVE stanno nel percorso

| # | Survey | Domanda a cosa serve | Giorno | Deliverable |
|---|---|---|---|---|
| 1 | **Deep Dive Survey** | Definire il mercato ed estrarre il linguaggio vero | **2** | `02-sondaggio.md` |
| 2 | **Segmenti (Bucket)** | Raggruppare le risposte in 3-5 segmenti | **2** | `02-segmenti-bucket.md` |
| 3 | **Micro-Commitment Bucket Survey** (il quiz) | Acquisire lead e instradarli nel segmento giusto | **4** | `04-quiz-funnel.md` + `04-quiz-risultati-bucket.md` + `04-quiz-email-bucket.md` |
| 4a | **"Do You Hate Me" Survey** (recupero) | Capire perché chi non ha comprato non ha comprato | **6** | `06-survey-recupero.md` |
| 4b | **Pivot Survey** (post-acquisto) | Ottimizzare i lanci successivi | **6** | `06-survey-pivot.md` |

---

## 1) DEEP DIVE SURVEY (Giorno 2) — definisce il mercato

Sondaggio breve, aperto, da mandare a lista/gruppi/traffico. Cuore = **SMIQ (Single Most Important Question)**, la domanda aperta più importante.

Struttura (poche domande, non stancare):
1. **SMIQ (aperta, obbligatoria):** *"Qual è la sfida più grande / la cosa più frustrante che stai affrontando con [nicchia/tema] in questo momento? Descrivila con parole tue, come la racconteresti a un amico."*
2. **Cosa hai già provato** (aperta): *"Cosa hai già provato per risolverla, e perché non ha funzionato?"* → sono le obiezioni sul meccanismo.
3. **Budget/urgenza** (scelta): *"Quanto hai già speso per provare a risolverla?"* (mai speso / <X / X–Y / >Y). Separa curiosi da compratori.
4. **Chi sei** (3-4 dati demografici minimi utili al settore: ruolo, dimensione azienda, zona, ecc.).
5. **Domanda-ponte** (opzionale): *"Vuoi che ti aiuti direttamente? Lascia email/telefono"* → alimenta le call di ricerca/vendita.

Regole: **una domanda per schermata**, anonimo opzionale. **Il montaggio NON tocca al cliente:** Claude genera la survey come pagina HTML pronta (pattern del Manuale 15) e la pubblica lui, consegnando il link; in alternativa guida il cliente su Tally UN campo alla volta (Google Forms solo se ha già un account Google → manuale 00b). La domanda 1 è quella d'oro: da lì escono le frasi verbatim per TUTTO il copy.
Consegna insieme: **3 email di invito** al sondaggio + **1 post social** equivalente (per la lista/gruppi del cliente). Se non ha lista: dove pescare risposte (gruppi FB/Reddit di settore, DM, clienti passati).

## 2) SEGMENTI / BUCKET (Giorno 2) — raggruppa le risposte

Dalle risposte alla SMIQ emergono 3-5 gruppi di persone con problemi diversi. Nominali col **linguaggio del cliente**. Scegli UNO dei "4 modi di segmentare" (il più adatto al settore):
- **Situazione** (dove si trovano: es. "appena partito" vs "già avviato")
- **Sfida** (qual è il loro ostacolo principale)
- **Desiderio** (cosa vogliono ottenere)
- **Percorso/Ibrido** (mix dei precedenti)

Per ogni bucket scrivi: **nome del segmento (parole del cliente)** · problema dominante · desiderio · obiezione principale · una frase-gancio. Questi bucket alimentano la Matrice del Messaggio, le pagine risultato del quiz e le email per segmento.

## 3) QUIZ FUNNEL — Micro-Commitment Bucket Survey (Giorno 4)

È il quiz pubblico che **acquisisce il lead E lo segmenta**. Si affianca al funnel optin classico (non lo sostituisce): è un secondo binario d'ingresso, spesso più performante perché coinvolge.

Impianto:
- **Gancio/titolo del quiz** (curiosità + beneficio): es. *"Scopri qual è il tuo profilo [X] in 60 secondi"*.
- **Fino a 10 domande** a scelta multipla, facili e veloci (micro-impegni progressivi), scritte col linguaggio uscito dalla Deep Dive. Ogni risposta assegna punti/indirizza verso un bucket.
- **Scegli 1 dei 3 framework:**
  - **Score** = dà un punteggio ("sei al 62% di prontezza…")
  - **Type** = dà un tipo/profilo ("sei il tipo 'Costruttore'")
  - **Killer** = individua l'ostacolo #1 da rimuovere
- **Cattura email** prima del risultato (il micro-commitment rende naturale lasciarla).
- **Pagine risultato per bucket** (`04-quiz-risultati-bucket.md`): una per segmento, con la **Promise Prescription** via **X/Y/Z**: *"Nella tua situazione (X), il vero ostacolo è (Y); la cosa giusta da fare ora è (Z)"* → CTA verso l'offerta/lead magnet giusto per quel bucket.
- **Email per bucket** (`04-quiz-email-bucket.md`): una mini-sequenza per segmento, coerente con la sua pagina risultato, che porta all'offerta (SLO/webinar/call).

Montaggio: la strada standard è **Claude che genera e pubblica il quiz come pagina HTML** (domande + logica di punteggio + pagine risultato per bucket) seguendo la sezione Quiz-funnel del Manuale 15 — il cliente non monta nulla; si fa nella FASE OPERATIVA. I quiz builder a pagamento (ScoreApp/Bucket.io, Typeform, Jotform, Outgrow) restano un'alternativa solo se il cliente li preferisce. Consegna sempre anche il sorgente `.md`.

## 4) SURVEY DI OTTIMIZZAZIONE (Giorno 6)

- **"Do You Hate Me" Survey** (`06-survey-recupero.md`): parte a chi ha visto l'offerta ma NON ha comprato. Tono onesto e leggero: *"Posso chiederti in tutta onestà: cosa ti ha frenato dal partire?"* + 3-5 opzioni (prezzo / non era il momento / non ho capito il valore / dubbio che funzioni per me / altro) + 1 aperta. Le risposte diventano nuovi angoli, FAQ e obiezioni da spezzare nel copy.
- **Pivot Survey** (`06-survey-pivot.md`): parte a chi HA comprato. *"Cosa stavi cercando di ottenere quando hai deciso di partire? Cosa ti ha convinto?"* → affina targeting, messaggio e prossimi lanci; individua l'angolo che converte davvero.

---

## Terminologia ASK (spiegala quando la usi)
- **SMIQ** = la domanda aperta più importante ("qual è il tuo problema più grande?").
- **Bucket** = segmento di clienti con lo stesso problema dominante.
- **Micro-commitment** = piccoli sì progressivi (le domande facili del quiz) che portano al sì grande (lasciare l'email / comprare).
- **Promise Prescription (X/Y/Z)** = la "ricetta" personalizzata data a fine quiz: situazione → vero ostacolo → cosa fare ora.

## Onestà sui dati (regola ferrea del metodo)
I numeri-caso di ASK (lead, ROI, fatturati) sono in gran parte **auto-dichiarati** dall'azienda di Levesque: usali come ispirazione, **mai** come prove/claim nei materiali del cliente. Nel copy valgono solo le prove reali del cliente. Coerente con la regola "mai numeri-claim inventati".
