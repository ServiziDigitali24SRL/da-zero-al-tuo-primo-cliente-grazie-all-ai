# MANUALE 13 — Meta Ads (Facebook e Instagram): setup e gestione

**Perché:** hai il copy delle inserzioni pronto (`output/06-adv.md`), ma il testo da solo non gira. Qui trasformi quelle inserzioni in una campagna che porta contatti, spendendo poco e imparando in fretta. Claude prepara tutto il "caricabile"; tu clicchi.

**Costo:** il budget pubblicitario lo decidi tu (partiamo con 20-50€/giorno per il test). Gli strumenti di Meta sono gratuiti.

**Regola d'oro:** all'inizio l'obiettivo NON è vendere, è **imparare quale angolo funziona** spendendo il minimo. Poi si spinge su quello che vince.

---

## Passo 0 — Se parti da zero su Facebook (mai avuto un account)
Per fare pubblicità su Meta servono, in ordine: un account Facebook **personale** → una **Pagina** aziendale → il **Business Manager**. Se ti manca il primo pezzo, si parte da qui.

- **Cosa fa il cliente** (sono i SUOI account: password e conferme le mette lui, Claude lo guida un campo alla volta):
  1. **Account personale:** su facebook.com → "Crea nuovo account" con **nome e cognome veri** e il **tuo numero di telefono** (verificato via SMS). Niente nomi di fantasia o "account aziendali finti": Meta li banna, e con loro sparirebbe tutto il resto. Salva la password nel gestore password (manuale **00b**).
  2. **Due fattori (2FA):** Impostazioni → "Password e sicurezza" → "Autenticazione a due fattori". È di fatto obbligatoria per lavorare col Business Manager: falla subito, non quando te la impongono.
  3. **La Pagina:** da facebook.com/pages/create → nome azienda, categoria, foto profilo (logo) e copertina.
- **Cosa fa Claude:** ti detta ogni campo ("ora sei su X, clicca Y, incolla questo"), prepara descrizione e testi della Pagina dal brand brief, e verifica con te che tutto sia a posto prima di passare al Passo 1.

> ⚠️ **Attenzione — gli account nuovi sono sotto osservazione.** Meta tratta con sospetto gli inserzionisti appena nati: capita che l'account pubblicitario venga **limitato o disabilitato nei primi giorni** anche senza aver fatto nulla di male. Come ridurre il rischio: dati veri e telefono verificato, **qualche giorno di pazienza** tra la creazione dell'account e la prima campagna (usa la Pagina normalmente: foto, primi post), **budget piccolo all'inizio**, poche modifiche al giorno. Se arriva un blocco: niente panico, si clicca "Richiedi revisione" e in genere si sblocca in 24-72 ore. Può arrivare anche una richiesta di **verifica dell'identità o dell'azienda** (documento, dati aziendali): è prassi normale, si completa e si aspetta. In tutti questi casi, dillo a Claude e la gestite insieme.

## Passo 1 — Business Manager e account pubblicitario
- **Cosa fa il cliente:** crea un **Meta Business Manager** su business.facebook.com (serve una Pagina Facebook aziendale; se non ce l'hai, fai prima il **Passo 0** qui sopra).
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
**Chi la monta dentro Meta? Non tu da solo, mai.** L'interfaccia di Meta Ads Manager è ostile anche per gli esperti: il documento "arrangiati a incollare" non esiste in questo metodo. Due strade:

- **Strada B (preferita) — la monta Claude via API:** una sola volta, Claude ti guida a creare un **token di accesso** (una chiave che autorizza Claude a lavorare sul TUO account pubblicitario) dal Business Manager — pochi clic guidati; la chiave va salvata nel gestore password (manuale **00b**). Da lì in poi **Claude crea campagna, adset e annunci via Graph API** (lo stesso canale tecnico del Manuale **08**), tutto in stato **IN PAUSA**: niente parte e niente spende finché non l'hai visto tu.
  - **Cosa fa Claude:** crea tutta la struttura (nomi, angoli, testi lunghi e corti, titoli, descrizioni, creatività) direttamente nell'account, in pausa.
  - **Cosa fa il cliente:** apre Ads Manager, controlla che testi e budget siano quelli concordati, e clicca **"Attiva"**. Fine.
- **Strada A (minima) — Claude ti guida schermata per schermata:** se il token non si può fare subito, Claude ti porta dentro Ads Manager **un campo alla volta**: "ora sei su X, clicca Y, incolla questo testo che ti do io adesso". Mai un documento da smistare da solo: ogni incolla arriva al momento giusto, e a fine montaggio Claude ti fa ricontrollare tutto con una checklist prima di pubblicare.

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
- **Il rito settimanale — "Claude legge i numeri" (tu non estrai niente a mano):** il patto è "porta i numeri o lasciami leggere, decido io". Due modi, entrambi senza fatica:
  - **(a) Report programmato:** una sola volta, Claude ti guida a creare in Ads Manager un report automatico (Report → programma l'invio) che ti arriva **via email ogni lunedì**. Tu lo inoltri o lo incolli in chat: 30 secondi.
  - **(b) Via Graph API (zero lavoro per te):** se hai fatto il token della Strada B del Passo 3, Claude **legge le metriche direttamente** dall'account e tu non fai nulla.
- **Cosa fa Claude:** applica le due regole d'oro, ti dice cosa spegnere e cosa spingere, e produce le nuove creatività per sostituire i perdenti.

## Errori tipici (evitali)
- **Modificare troppo presto:** ogni annuncio ha ~3-5 giorni di "apprendimento". Non toccarlo ogni ora: falsi i dati e resetti l'apprendimento.
- **Pubblico troppo stretto:** stringere all'eccesso (10 interessi impilati, area minuscola) affama la campagna. Parti largo.
- **Cambiare tutto insieme:** modifica una cosa alla volta, altrimenti non sai cosa ha funzionato.
- **Guardare le metriche di vanità:** like e commenti non pagano le bollette; conta il CPL e i clienti chiusi.
- **Budget troppo basso e frammentato:** meglio 3 adset con budget sensato che 10 adset da 5€ che non escono mai dall'apprendimento.

---

**Fatto? Aggiorna la memoria:** in CLAUDE.md spunta questo manuale in "Stato Fase Operativa", aggiorna "Punto di ripresa" al prossimo passo, e annota gli asset creati (account, domini, URL) in "Asset operativi".

**Collegamenti:** creatività da `output/06-adv.md` (Giorno 6) · pixel installato sulla landing (**M15**) · i lead raccolti finiscono nel database (**M09**) e li rivedi nella dashboard (**M10**). Per la domanda "consapevole" (chi cerca già su Google) vedi **M14**.
