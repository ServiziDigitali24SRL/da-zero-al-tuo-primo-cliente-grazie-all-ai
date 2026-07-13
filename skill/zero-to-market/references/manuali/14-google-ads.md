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
- **Cosa fa il cliente:** crea l'account su ads.google.com. **Salta la modalità "smart/semplificata"** che Google propone di default → passa alla **modalità Esperto** (altrimenti non hai il controllo).
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
- **Cosa fa il cliente:** crea un **annuncio adattabile (RSA)** per ogni gruppo e incolla le **15 headline (max 30 caratteri)** e **4 description (max 90 caratteri)** già prodotte in `output/06-adv.md`.
- Aggiungi le **estensioni/asset:** sitelink (link a pagine tue), callout (frasi brevi di valore), numero di telefono. Migliorano i clic gratis.
- **Cosa fa Claude:** adatta le headline al gruppo (chi cerca "problema" vede un titolo diverso da chi cerca "servizio") e le mette entro i limiti di caratteri.

## Passo 6 — Leggere i numeri (senza essere esperti)
Dopo qualche giorno guarda solo queste:

| Metrica | Cosa significa | Soglia semplice |
|---|---|---|
| **CTR** | quanti cliccano il tuo annuncio | sotto ~2-3% su Search = annuncio/keyword deboli |
| **CPC** | quanto paghi per clic | confrontalo tra gruppi; se troppo alto, la keyword è competitiva |
| **Conversioni** | quanti lasciano il contatto | è IL numero che conta |
| **CPL** (spesa ÷ conversioni) | costo per contatto | confrontalo col tuo obiettivo (Claude lo fissa dal valore cliente) |

- **Cosa fa Claude:** ogni settimana legge i tuoi numeri, ti dice quali keyword spengere (spendono senza convertire), quali spingere, e quali negative aggiungere.

## Regola di crescita
**Prima** i termini brand + intento alto (chi cerca esattamente te o il tuo servizio: convertono meglio e costano meno). **Solo dopo** allarga ai termini "problema" più larghi. Aumenta il budget sui gruppi che portano lead a buon costo; spegni quelli che no.

## Errori tipici (evitali)
- **Lasciare la modalità smart/automatica:** perdi il controllo e Google spende dove vuole lui.
- **Partire con Performance Max o Display:** rimandali a dopo. Prima impara con la Search.
- **Corrispondenza generica dal giorno 1:** brucia budget su ricerche inutili.
- **Non installare il tag di conversione:** senza, non sai cosa funziona → stai buttando soldi.
- **Toccare tutto ogni giorno:** dai alla campagna qualche giorno di dati prima di giudicare.

---

**Collegamenti:** headline/description da `output/06-adv.md` (Giorno 6) · tag di conversione sulla thank-you page (**M15**) · i lead nel database (**M09**) e nella dashboard (**M10**). Per la domanda latente/feed vedi **M13** (Meta Ads).
