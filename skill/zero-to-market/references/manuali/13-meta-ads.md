# MANUALE 13 — Meta Ads (Facebook e Instagram): setup e gestione

**Perché:** hai il copy delle inserzioni pronto (`output/06-adv.md`), ma il testo da solo non gira. Qui trasformi quelle inserzioni in una campagna che porta contatti, spendendo poco e imparando in fretta. Claude prepara tutto il "caricabile"; tu clicchi.

**Costo:** il budget pubblicitario lo decidi tu (partiamo con 20-50€/giorno per il test). Gli strumenti di Meta sono gratuiti.

**Regola d'oro:** all'inizio l'obiettivo NON è vendere, è **imparare quale angolo funziona** spendendo il minimo. Poi si spinge su quello che vince.

---

## Passo 1 — Business Manager e account pubblicitario
- **Cosa fa il cliente:** crea un **Meta Business Manager** su business.facebook.com (serve una Pagina Facebook aziendale; se non c'è, creala prima).
- Dentro il Business Manager: **Impostazioni → Account pubblicitari → Crea** un nuovo account pubblicitario (fuso orario e valuta corretti: si scelgono UNA volta e non si cambiano più).
- **Metodo di pagamento:** aggiungi una carta in Fatturazione. Imposta un **limite di spesa dell'account** (es. 300€) come rete di sicurezza contro errori.
- Collega la Pagina e l'account Instagram Business all'account pubblicitario.
- **Cosa fa Claude:** ti guida schermata per schermata e ti prepara la checklist di verifica ("prima di partire devi avere: Pagina ✓ account pubblicitario ✓ carta ✓ pixel ✓").

## Passo 2 — Il Pixel (l'occhio che misura i risultati)
Il Pixel è un codice che dice a Meta chi lascia il contatto sulla tua landing: senza, spendi alla cieca.
- **Cosa fa il cliente:** in **Gestione eventi → Origini dati → Connetti origini → Web → Pixel**, crea il pixel e copia il codice.
- **Cosa fa Claude:** inserisce il pixel nella landing che genera (M15) e imposta l'evento **"Lead"** che scatta quando qualcuno invia il form. Dove possibile, configura anche la **Conversions API** (misura più precisa, resiste ai blocchi dei browser) — se serve un intermediario tecnico, Claude te lo dice.
- **Verifica:** con l'estensione Meta Pixel Helper (o l'anteprima eventi) controlla che l'evento Lead scatti quando compili il form di prova.

## Passo 3 — La campagna di test (struttura semplice che funziona)
Una sola struttura, pulita, per capire subito cosa funziona:

- **1 Campagna** — obiettivo **Lead/Contatti**, budget gestito a livello di campagna (**CBO** = il budget si distribuisce da solo sugli annunci migliori), **20-50€/giorno totali**.
- **3 Gruppi di inserzioni (adset) = i 3 angoli del Giorno 6:** Storia · Caso di studio · Diretto/"Cosa devi sapere". Così Meta confronta gli angoli tra loro.
- **Dentro ogni adset, le creatività** da `output/06-adv.md` (2-3 varianti per angolo: testo + immagine/video).
- **Cosa fa Claude:** ti consegna il documento "pronto da incollare" — per ogni adset: nome, angolo, testo primario (lungo e corto), titolo, descrizione, indicazioni sulla creatività visiva. Tu copi e incolli nei campi di Meta.

## Passo 4 — I pubblici (a chi mostrarlo)
- **Broad (consigliato per partire):** nessun interesse impostato, solo paese + età + lingua. Oggi l'algoritmo di Meta trova da solo le persone giuste se il pixel misura bene. Semplice e spesso il più efficace.
- **Interessi:** 1-2 interessi molto pertinenti al tuo settore, SOLO se il broad non rende. Non impilarne dieci.
- **Lookalike (pubblico simile):** attivalo **solo quando hai ≥100 lead** raccolti (dal pixel o da una lista): Meta cerca persone simili ai tuoi contatti reali. È l'arma migliore, ma serve prima aver raccolto dati.
- **Cosa fa Claude:** ti suggerisce il pubblico giusto per la tua fase e ti dice quando è il momento di passare al lookalike.

## Passo 5 — Leggere i numeri (senza essere esperti)
Guarda solo queste 3 cose dopo qualche giorno di dati:

| Metrica | Cosa significa | Soglia semplice |
|---|---|---|
| **CPM** | quanto costa mostrare l'annuncio 1.000 volte | serve solo per confrontare le creatività tra loro |
| **CTR** | quante persone cliccano | sotto ~1% = la creatività non aggancia, cambiala |
| **CPL** | quanto ti costa un contatto | è IL numero che conta: confrontalo col tuo obiettivo |

**Il tuo CPL obiettivo** lo fissa Claude in base al valore di un cliente (se un cliente vale 2.000€ e ne chiudi 1 su 20 contatti, puoi permetterti un CPL anche alto). Non guardare i "mi piace": guarda il costo per contatto.

## Passo 6 — Le due regole d'oro (decidi coi numeri, non con la pancia)
- **Kill rule (spegni ciò che perde):** se dopo **3 giorni** un adset/annuncio ha un **CPL oltre 2 volte** il tuo obiettivo, spegnilo. Basta.
- **Scale rule (spingi ciò che vince):** l'annuncio che porta contatti a buon costo → aumenta il budget del **+20% ogni 3 giorni**. Aumenti bruschi resettano l'apprendimento: vai graduale.
- **Cosa fa Claude:** ogni settimana legge i tuoi numeri (glieli incolli o li collega), applica le regole e ti dice cosa spegnere, cosa spingere, e quali nuove creatività produrre per sostituire i perdenti.

## Errori tipici (evitali)
- **Modificare troppo presto:** ogni annuncio ha ~3-5 giorni di "apprendimento". Non toccarlo ogni ora: falsi i dati e resetti l'apprendimento.
- **Pubblico troppo stretto:** stringere all'eccesso (10 interessi impilati, area minuscola) affama la campagna. Parti largo.
- **Cambiare tutto insieme:** modifica una cosa alla volta, altrimenti non sai cosa ha funzionato.
- **Guardare le metriche di vanità:** like e commenti non pagano le bollette; conta il CPL e i clienti chiusi.
- **Budget troppo basso e frammentato:** meglio 3 adset con budget sensato che 10 adset da 5€ che non escono mai dall'apprendimento.

---

**Collegamenti:** creatività da `output/06-adv.md` (Giorno 6) · pixel installato sulla landing (**M15**) · i lead raccolti finiscono nel database (**M09**) e li rivedi nella dashboard (**M10**). Per la domanda "consapevole" (chi cerca già su Google) vedi **M14**.
