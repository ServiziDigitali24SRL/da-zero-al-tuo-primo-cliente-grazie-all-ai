# MANUALE 22 — Prenotazione call (Calendly): l'ultimo miglio prima della vendita

**Perché:** tutto il funnel converge su una cosa sola: la **call di vendita**. La pagina candidatura (Giorno 5), le email (Giorno 4), le cold email (M04), lo script di vendita in 12 punti — tutto serve a portare una persona a parlare con te. Ma se per fissare l'appuntamento servono 5 messaggi tipo "quando puoi?", "martedì no", "giovedì forse", metà dei lead si perde per strada. Qui crei un **link di prenotazione**: il lead clicca, sceglie un orario tra quelli che TU hai deciso, e la call finisce da sola nel tuo calendario con il collegamento video già pronto. È l'ultimo miglio prima del primo euro.

**Costo:** gratis. Il piano Free di Calendly basta (1 tipo di evento è tutto ciò che serve per partire). Anche l'alternativa Cal.com è gratuita.

**Regola d'oro:** meno attrito tra "voglio parlarti" e "appuntamento fissato" = più call. Un link con 2 clic batte qualsiasi scambio di messaggi.

---

## Passo 1 — Apri l'account Calendly (da zero, 5 minuti)

Calendly è lo strumento più diffuso e più semplice; lo scegliamo per questo.

- **Cosa fa il cliente:**
  1. Vai su **calendly.com/it** → **Iscriviti** (Sign up). Puoi registrarti con l'account Google (consigliato: un clic e ti collega già il calendario, vedi Passo 2) oppure con email e password.
  2. Se ti registri con email: arriva una **email di verifica** — clicca il link dentro (controlla anche lo spam). Senza questo clic l'account non parte.
  3. Password nuova generata e salvata nel **gestore password** (manuale 00b) — mai riusare quella di altri account.
  4. Calendly ti propone una **prova gratuita del piano a pagamento** (trial ~14 giorni): va bene, alla scadenza torni automaticamente al piano **Free** senza pagare nulla. Non serve inserire la carta.
  5. Scegli il tuo **indirizzo Calendly** (es. `calendly.com/mario-rossi-azienda`): è il link che manderai ai lead, quindi mettici il nome del brand o il tuo nome, non sigle strane. Si può cambiare dopo, ma il vecchio link smette di funzionare — sceglilo bene ora.
- **Cosa fa Claude:** ti detta ogni campo, ti suggerisce l'indirizzo Calendly giusto in base al brand (Giorno 3), e ti dice cosa cliccare schermata per schermata.
- **Gotcha noti:** (a) durante l'onboarding Calendly fa molte domande ("quanti siete", "a cosa ti serve") — rispondi qualsiasi cosa, non cambiano nulla; (b) se l'interfaccia ti appare in inglese: icona profilo → Settings → Language → Italiano.

**Alternativa: Cal.com.** Stessa logica, open source, piano free anche lui. Signup su **cal.com/signup**. La guida qui sotto vale uguale (i nomi dei menu cambiano leggermente; Claude ti guida allo stesso modo). Scegli Cal.com se preferisci un link `cal.com/tuonome` o se un domani vuoi più eventi gratis; per partire, Calendly va benissimo.

## Passo 2 — Collega il calendario e la videochiamata

Il link funziona solo se Calendly "vede" il tuo calendario (per non farti prenotare quando sei occupato) e sa che collegamento video creare.

- **Calendario (Google Calendar):**
  - **Cosa fa il cliente:** in Calendly → **Integrazioni → Calendar** (o durante l'onboarding) → **Google Calendar** → si apre la schermata di Google → scegli il tuo account → **Consenti**. Sei tu a cliccare "Consenti" perché è un permesso sul TUO account Google.
  - Se non hai un account Google: aprirne uno è il prerequisito — la procedura è nel **manuale 00b**. Ce l'hai quasi sicuramente già se usi Gmail o un telefono Android.
  - **Cosa fa Claude:** verifica con te che sia collegato il calendario giusto (quello dove segni gli impegni veri, non uno vuoto: se Calendly guarda un calendario vuoto, ti farà prenotare sopra i tuoi impegni reali).
- **Videochiamata (Google Meet, automatico):**
  - **Cosa fa il cliente:** in **Integrazioni** → **Google Meet** → Consenti. Da questo momento ogni prenotazione genera **da sola** il link Meet e lo mette nell'invito: né tu né il lead dovete creare nulla.
  - **Alternativa Zoom:** se preferisci Zoom (o lo usi già per i webinar, **M17**), collega l'integrazione Zoom allo stesso modo. Serve l'account Zoom del M17. Meet è la via più semplice: zero installazioni per te, il lead clicca e entra dal browser.

## Passo 3 — Crea l'evento "Call conoscitiva 30 min"

Questo è il cuore del manuale: UN tipo di evento, fatto bene.

- **Cosa fa Claude:** scrive per te tutti i testi (li adatti in 1 minuto):
  - **Nome evento:** "Call conoscitiva — 30 minuti" (o la versione col tuo brand).
  - **Descrizione:** 2-3 righe che dicono al lead cosa succederà ("30 minuti per capire la tua situazione e vedere se e come possiamo aiutarti. Nessun impegno.") — presa dal tono di voce del Giorno 3.
  - **Domande di qualifica** nel form di prenotazione: Claude le riprende da `output/05-candidatura.md` (le stesse della pagina candidatura del Giorno 5) e ne sceglie **3-4 al massimo** — le più utili per arrivare in call già preparato (es. settore, dimensione, problema principale, urgenza). Ogni domanda in più fa perdere prenotazioni: qualifica il minimo indispensabile, il resto lo scopri in call.
- **Cosa fa il cliente:** in Calendly → **Event Types → Nuovo evento → One-on-One** → incolla nome e descrizione che Claude ti ha preparato, durata **30 minuti**, location **Google Meet** (dal Passo 2). Poi le impostazioni che contano:
  1. **Disponibilità REALISTICHE:** apri solo le finestre in cui puoi DAVVERO rispondere con calma (es. Mar-Gio 10:00-12:00 e 15:00-17:00), non "tutta la settimana". Un no-show tuo vale dieci dei loro. Se lavori sul campo la mattina, la mattina resta chiusa.
  2. **Buffer tra le call:** 15 minuti prima e dopo (in "Limiti evento" / buffers). Ti servono per prepararti sul prossimo lead e per non arrivare in ritardo se una call sfora.
  3. **Preavviso minimo:** almeno 4 ore (meglio: il giorno prima). Eviti la prenotazione "tra 20 minuti" che ti trova impreparato.
  4. **Limite giornaliero (consigliato):** massimo 3-4 call al giorno. Le call di vendita stancano; la quinta la fai male.
  5. **Fuso orario:** controlla che sia quello giusto — Calendly poi lo converte da solo per il lead estero.
- **Cosa fa Claude:** ti detta ogni impostazione UN campo alla volta ("ora sei su Availability, clicca qui, metti questo") e alla fine ti fa fare una **prenotazione di prova** con la tua stessa email: verifichi che arrivi l'invito nel calendario e che il link Meet funzioni. Finché il test non passa, non si manda il link a nessuno.

## Passo 4 — Metti il link dove serve (tutti i punti del funnel)

Il link di prenotazione è inutile nel cassetto. Va in ogni punto dove un lead "caldo" può cliccarlo:

| Dove | Quale materiale | Manuale/Giorno |
|---|---|---|
| **Thank-you page** dopo l'optin | "Vuoi fare prima? Prenota subito una call" | **M15** |
| **Email del Giorno 4** (benvenuto/nurturing) | CTA nelle email che invitano alla call | Giorno 4 |
| **Pagina candidatura** del Giorno 5 | il passo dopo il form: "prenota qui il tuo posto" | Giorno 5 |
| **Firma delle cold email** | riga finale discreta con il link | **M04** |
| **Risposta alle risposte calde** | quando un lead risponde interessato, la risposta contiene il link | **M23** |

- **Cosa fa Claude:** inserisce il link in tutti questi materiali già prodotti (HTML della thank-you, email, firma delle sequenze cold) e ti mostra le modifiche prima di pubblicarle. Tu non incolli nulla a mano.

## Passo 5 — Promemoria anti no-show e recupero

Il nemico numero uno delle call gratuite è il **no-show** (il lead prenota e non si presenta). Si combatte in due mosse.

- **Promemoria automatici (li fa Calendly da solo):**
  - **Cosa fa il cliente:** nell'evento → **Comunicazioni / Workflows** → attiva i promemoria email **24 ore prima** e **1 ora prima**. Sul piano Free c'è comunque l'email di conferma con l'invito calendario; se i workflow completi risultano solo a pagamento, Claude imposta l'equivalente con quello che il piano offre (conferma + invito calendario, che sul telefono del lead suona da solo).
  - **Cosa fa Claude:** scrive i testi dei promemoria (tono del Giorno 3, brevi: "Ci vediamo domani alle 15:00 — ecco il link"), così non escono i messaggi robotici di default in inglese.
  - **Se WhatsApp è attivo (M07):** un promemoria WhatsApp 1 ora prima vale doppio (si legge sempre). Claude ti prepara il messaggio; l'invio segue il canale che hai attivato nel M07.
- **Gestione no-show — 2 tentativi di recupero, poi stop:**
  - **Cosa fa Claude:** scrive i due messaggi (email, o WhatsApp se attivo):
    1. **Stesso giorno, 1-2 ore dopo** — gentile, zero colpe: "Ci siamo persi! Capita. Ecco il link per riprenotare quando ti è più comodo." + link.
    2. **Dopo 2-3 giorni** — ultimo tentativo, con una leggera scarsità onesta: "Tengo il posto ancora qualche giorno, poi passo ai prossimi in lista." + link.
  - Dopo il secondo tentativo senza risposta: il lead torna nel nurturing normale (Giorno 4 / M04), non lo si insegue oltre. Chi sparisce due volte non era pronto.
  - **Cosa fa il cliente:** decide se mandare i recuperi (sono messaggi verso terzi: l'invio parte sempre con il suo ok) e risponde al telefono quando la call, finalmente, arriva.

## Errori tipici (evitali)

- **Disponibilità "sempre aperto":** sembra generoso, ma ti fa prenotare call nei momenti sbagliati e comunica poco valore. Finestre precise, come un professionista.
- **Zero buffer:** due call attaccate = seconda call fatta male. 15 minuti di respiro sempre.
- **Form di prenotazione chilometrico:** 8 domande obbligatorie e il lead abbandona. Massimo 3-4, il resto in call.
- **Link creato ma mai testato:** prenota TU per primo con un'email di prova. Se l'invito non arriva o il Meet non si apre, meglio scoprirlo tu che il lead.
- **Niente promemoria:** senza il messaggio 24h+1h prima, i no-show raddoppiano. È la singola impostazione che ripaga di più.
- **Cambiare l'indirizzo Calendly dopo averlo distribuito:** il vecchio link muore e tutti i materiali (M15, M04, email) puntano nel vuoto. Se proprio devi, Claude aggiorna TUTTI i punti del Passo 4 nello stesso momento.

---

**Fatto? Aggiorna la memoria:** in CLAUDE.md spunta questo manuale in "Stato Fase Operativa", aggiorna "Punto di ripresa" al prossimo passo, e annota gli asset creati (account, domini, URL) in "Asset operativi".

**Collegamenti:** gestore password e account Google (**00b**) · il link va in thank-you page (**M15**), email Giorno 4, pagina candidatura Giorno 5, firma cold (**M04**), risposte calde (**M23**) · videochiamata Zoom (**M17**) · promemoria WhatsApp (**M07**) · domande di qualifica da `output/05-candidatura.md` · la call chiude col pagamento in call (**M16**, Passo 5) e lo script `output/05-script-vendita-12-punti.md`. Le call fissate si segnano nella dashboard (**M10**).
