# MANUALE 14 — Google Ads (Rete di Ricerca): intercettare chi ti sta già cercando

**Perché:** su Meta interrompi persone che scorrono il feed (domanda latente: non ti stanno cercando). Su Google intercetti chi **digita già** una ricerca legata al tuo servizio (domanda esistente): sono più caldi, più vicini all'acquisto. Qui trasformi le headline già pronte (`output/06-adv.md`) in una campagna Search che porta contatti qualificati.

**Costo:** budget pubblicitario tuo (partiamo con 10-30€/giorno). Google Ads è gratuito come strumento.

**Regola d'oro:** parti stretto sull'intento più alto (chi cerca esattamente ciò che vendi), poi allarga. Meglio pochi clic giusti che tanti clic curiosi.

---

## Quando Google e quando Meta (deciderlo insieme)
- **Usa Google se** le persone cercano attivamente il tuo servizio ("installazione climatizzatori Milano", "software gestione magazzino", "commercialista forfettario"): c'è già una domanda da intercettare.
- **Usa Meta se** il tuo prodotto è nuovo o "non si cerca" (nessuno digita ciò che non sa che esiste): devi creare la domanda mostrandoti nel feed.
- **La maggior parte parte da UNO solo** dei due per imparare, poi aggiunge l'altro. Claude ti dice quale ha più senso per il tuo caso guardando il Giorno 2 (le persone cercano o no?).

## Passo 1 — Account e conversione (l'occhio di Google)
**Se non hai un account Google:** si crea prima quello, su accounts.google.com/signup — nome, una email nuova (con la tua email aziendale come indirizzo di recupero) e numero di telefono verificato via SMS. Salva la password nel gestore password (manuale **00b**). Claude ti guida campo per campo.

- **Cosa fa il cliente:** crea l'account pubblicitario su ads.google.com. Attenzione a due trappole dell'iscrizione:
  - **Google ti forza a "creare la prima campagna" durante l'iscrizione.** Non farla: cerca il link **"Passa alla modalità Esperto"** e poi **"Crea un account senza campagna"** — così esci dall'iscrizione senza aver attivato nulla (la modalità "smart/semplificata" ti toglie il controllo e spende dove vuole lei). Se il link non compare e sei costretto a impostare una campagna, si completa col minimo indispensabile e si mette **subito IN PAUSA** prima di inserire la carta: Claude ti dice esattamente dove cliccare.
  - **Il profilo pagamenti si imposta UNA volta sola:** **paese e valuta NON si possono più cambiare dopo.** Scegli il tuo paese reale e l'euro, poi carta e dati fiscali (P.IVA) con calma — un errore qui obbliga a rifare l'account da capo.
- **Cosa fa Claude:** ti guida schermata per schermata nell'iscrizione, ti detta i dati giusti campo per campo, e verifica con te che l'account sia in modalità Esperto e SENZA campagne attive prima di andare avanti.

> ⚠️ **La "verifica dell'inserzionista".** Prima o poi (spesso nelle prime settimane) Google ti chiede di **dimostrare chi sei**: documenti dell'azienda (P.IVA, visura) e a volte un documento personale, da caricare entro la scadenza indicata nell'avviso (di solito ~30 giorni). **Se la ignori, l'account viene sospeso** e gli annunci si fermano. Non è un problema tuo: è la prassi per tutti i nuovi inserzionisti. Quando arriva l'avviso, dillo a Claude e la completate insieme in 10 minuti.
- **Tag di conversione:** in **Obiettivi → Conversioni → Nuova azione → Sito web**, crea la conversione "Lead" e installa il tag sulla **pagina di ringraziamento** (thank-you page che appare DOPO l'invio del form).
- **Cosa fa Claude:** inserisce il tag di conversione Google nella thank-you page che genera (M15), così Google conta un "Lead" solo quando qualcuno lascia davvero il contatto. Senza questo tag, spendi alla cieca.

## Passo 2 — La campagna Search (struttura semplice)
Una sola campagna, pulita, per partire:
- **Tipo:** Rete di Ricerca (Search). **Niente Display, niente Performance Max all'inizio** (spendono ovunque, imparano poco, bruciano budget): li valuti solo dopo, quando la Search funziona.
- **1 Campagna** con **budget 10-30€/giorno**, area geografica dei tuoi clienti, lingua, offerte a "Massimizza conversioni" (dopo i primi 15-30 lead; all'inizio "Massimizza clic" per raccogliere dati più in fretta).
- **Gruppi di annunci per intento:** un gruppo per ogni "tipo di ricerca" (Claude li ricava dal linguaggio della ricerca del Giorno 2). Esempio per un installatore di climatizzatori:
  - Gruppo "servizio diretto": *installazione climatizzatori Milano*, *preventivo condizionatore*
  - Gruppo "problema": *come rinfrescare casa d'estate*, *quanto costa mettere l'aria condizionata*
  - Gruppo "brand" (se ti cercano già): *[nome azienda]*

## Passo 3 — Le keyword e i tipi di corrispondenza (spiegati semplici)
Come dici a Google quando mostrare il tuo annuncio:
- **Corrispondenza a frase** `"installazione climatizzatori Milano"` → mostra l'annuncio quando la ricerca contiene quella frase. **È il punto di partenza consigliato:** equilibrio tra controllo e volume.
- **Corrispondenza esatta** `[installazione climatizzatori Milano]` → solo ricerche praticamente identiche. Massimo controllo, poco volume: usala sui termini che convertono di più.
- **Corrispondenza generica** (senza simboli) → Google allarga molto (anche ricerche vagamente collegate): all'inizio **evitala**, spreca budget. La valuti dopo, con le conversioni attive.
- **Cosa fa Claude:** ti prepara la lista di keyword per gruppo, con il tipo di corrispondenza giusto, partendo dalle parole vere del tuo mercato (Giorno 2).

## Passo 4 — Parole da escludere (negative keywords)
Impedisci a Google di mostrarti su ricerche che non ti portano clienti (ti fanno solo spendere).
- Classiche da escludere subito: *gratis*, *fai da te*, *lavoro*, *stipendio*, *corso gratuito*, *significato*, e i nomi dei concorrenti se non li vuoi.
- **Cosa fa Claude:** ricava le negative keywords dal Giorno 6 (chi NON è il tuo cliente) e ti dà la lista pronta da incollare. Poi ogni settimana leggi i "termini di ricerca" reali e aggiungi altre negative.

## Passo 5 — Gli annunci (RSA, già scritti)
Ogni gruppo vuole un **annuncio adattabile (RSA)**: 15 titoli (max 30 caratteri) e 4 descrizioni (max 90 caratteri), già prodotti in `output/06-adv.md`. Per 3 gruppi sono ~60 testi: **NON li incolli a mano uno per uno.**

- **Cosa fa Claude:** adatta i titoli al gruppo (chi cerca "problema" vede un titolo diverso da chi cerca "servizio"), li mette entro i limiti di caratteri e prepara **un file di import per Google Ads Editor** (il programma gratuito di Google per gestire le campagne dal computer): dentro c'è già tutto — campagna, gruppi, keyword con la corrispondenza giusta, annunci completi e le **estensioni/asset** (sitelink, callout, numero di telefono: migliorano i clic gratis).
- **Cosa fa il cliente:** scarica **Google Ads Editor** (gratuito, si trova cercando "Google Ads Editor" o dagli strumenti di ads.google.com — Claude ti guida nell'installazione), poi: apri Editor → accedi col tuo account → **Importa** il file preparato da Claude → **rivedi** l'anteprima → **Pubblica**. Quattro clic al posto di 60 incolla.
- **Se l'Editor proprio non si può usare** (computer bloccato dall'azienda, ecc.): Claude ti guida nella creazione dentro ads.google.com **un campo alla volta** ("ora sei su X, incolla questo testo che ti do io adesso") — mai "ecco il documento, incolla tu".

## Passo 6 — Leggere i numeri (senza essere esperti)
Dopo qualche giorno guarda solo queste:

| Metrica | Cosa significa | Soglia semplice |
|---|---|---|
| **CTR** | quanti cliccano il tuo annuncio | sotto ~2-3% su Search = annuncio/keyword deboli |
| **CPC** | quanto paghi per clic | confrontalo tra gruppi; se troppo alto, la keyword è competitiva |
| **Conversioni** | quanti lasciano il contatto | è IL numero che conta |
| **CPL** (spesa ÷ conversioni) | costo per contatto | confrontalo col tuo obiettivo (Claude lo fissa dal valore cliente) |

- **Il rito settimanale — "Claude legge i numeri" (tu non estrai niente a mano):** una sola volta Claude ti guida a programmare in Google Ads un **report automatico via email** (Rapporti → pianifica l'invio, ogni lunedì); tu lo inoltri o lo incolli in chat: 30 secondi.
- **Cosa fa Claude:** legge quei numeri, ti dice quali keyword spegnere (spendono senza convertire), quali spingere, e quali negative aggiungere.

## Regola di crescita
**Prima** i termini brand + intento alto (chi cerca esattamente te o il tuo servizio: convertono meglio e costano meno). **Solo dopo** allarga ai termini "problema" più larghi. Aumenta il budget sui gruppi che portano lead a buon costo; spegni quelli che no.

## Errori tipici (evitali)
- **Lasciare la modalità smart/automatica:** perdi il controllo e Google spende dove vuole lui.
- **Partire con Performance Max o Display:** rimandali a dopo. Prima impara con la Search.
- **Corrispondenza generica dal giorno 1:** brucia budget su ricerche inutili.
- **Non installare il tag di conversione:** senza, non sai cosa funziona → stai buttando soldi.
- **Toccare tutto ogni giorno:** dai alla campagna qualche giorno di dati prima di giudicare.

---

**Fatto? Aggiorna la memoria:** in CLAUDE.md spunta questo manuale in "Stato Fase Operativa", aggiorna "Punto di ripresa" al prossimo passo, e annota gli asset creati (account, domini, URL) in "Asset operativi".

**Collegamenti:** headline/description da `output/06-adv.md` (Giorno 6) · tag di conversione sulla thank-you page (**M15**) · i lead nel database (**M09**) e nella dashboard (**M10**). Per la domanda latente/feed vedi **M13** (Meta Ads).
