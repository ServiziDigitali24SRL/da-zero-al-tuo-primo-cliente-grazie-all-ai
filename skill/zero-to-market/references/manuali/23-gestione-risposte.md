# MANUALE 23 — Gestire le risposte (il momento in cui un lead vero ti scrive)

**Perché:** prima o poi succede: apri la posta e c'è la risposta di un potenziale cliente. È il momento per cui hai costruito tutto — ed è anche il momento in cui molti si bloccano ("e adesso cosa gli scrivo?"). Questo manuale toglie il panico: ogni risposta rientra in 4 categorie, e per ognuna c'è una mossa già pronta.

**Costo:** €0 — nessun tool nuovo. Usi la posta che hai già (Unibox di Instantly o la tua casella, Manuale 06) e Claude.

**Regola d'oro (SLA = tempo massimo di risposta):** si risponde **entro 24 ore, meglio entro 2-4 ore**. Un lead che ha appena scritto è caldo; ogni ora che passa si raffredda e la probabilità che ti risponda ancora crolla.

**Seconda regola d'oro:** l'obiettivo di OGNI risposta è **uno solo: portare il lead alla call**. Non si vende mai per email — per email si conquista solo il prossimo passo (la chiamata). La vendita si fa a voce, con lo script (`output/05-script-vendita-12-punti.md`).

---

## Il rito operativo (sempre lo stesso, per qualunque risposta)

**Cliente, tu devi fare solo questo:** incolla qui in chat la risposta del lead (copia-incolla del testo, o inoltrala alla tua casella e incolla da lì). Stop.

**Cosa fa Claude:**
1. **Classifica** la risposta in una delle 4 categorie qui sotto (e te lo dice: "questo è un INTERESSATO").
2. **Scrive la risposta pronta** nel tuo tono di voce (dal brand brief, `output/03-brand-brief.md`), già completa di firma.
3. Te la mostra e ti chiede l'ok.

**Cosa fa il cliente:** legge, approva (o chiede una modifica), copia, incolla nella email e clicca Invia. Fine. Mai inviare senza aver letto: la firma è la tua.

> ⚠️ **Rispondi sempre dalla stessa casella su cui è arrivata la risposta** (quella della campagna, non la tua personale): il lead deve vedere lo stesso mittente, e Instantly deve "vedere" la conversazione per fermare i tocchi successivi.

---

## Il TRIAGE: le 4 categorie

Ogni risposta vera è una di queste quattro. Esempi reali di come suonano:

| Categoria | Come suona |
|---|---|
| **1. INTERESSATO** | "Mi dica di più" · "Quanto costa?" · "Come funziona esattamente?" · "Può mandarmi una presentazione?" |
| **2. OBIEZIONE** | "Costa troppo" · "Ho già un fornitore" · "Non vi conosco, come faccio a fidarmi?" · "Non abbiamo budget quest'anno" |
| **3. NON ORA** | "Interessante ma risentiamoci a settembre" · "Adesso siamo in piena stagione, più avanti" · "Ne parlo col socio e le faccio sapere" |
| **4. NO / RIMUOVIMI** | "Non ci interessa" · "Non scrivetemi più" · "Rimuovetemi dalla lista" |

---

## Categoria 1 — INTERESSATO ("mi dica di più / quanto costa")

**Obiettivo unico:** fissare la call. NON rispondere alla domanda per intero via email — se sveli tutto (prezzo compreso) per iscritto, il lead non ha più motivo di sentirti, e per iscritto non puoi fare la diagnosi (script, fasi 3-7).

**Cosa scrive Claude:** una risposta corta (4-6 righe) che (a) ringrazia, (b) dà UN assaggio di valore vero (una riga sul meccanismo, dalla matrice del messaggio), (c) sposta il resto in call con il link di prenotazione (**M22**) e 2 finestre alternative.

**Esempio di risposta tipo (Claude la riscrive nel tuo tono):**
> Buongiorno [Nome], grazie della risposta.
> Le rispondo volentieri — la cifra dipende da [1 variabile concreta del suo caso], quindi sparare un numero a caso le farei un torto.
> Il modo più rapido è una chiamata di 15 minuti: le faccio 3-4 domande sul suo [contesto] e le dico subito se e come possiamo aiutarla, numeri compresi.
> Va bene [giorno] alle [ora] o [alternativa]? Qui può scegliere direttamente lo slot: [link prenotazione].

**E sulla domanda "quanto costa?":** mai il prezzo secco per email. Si dà l'ordine di grandezza SOLO se il lead insiste una seconda volta, e sempre agganciato alla call ("i progetti come il suo partono da ~X, ma il numero vero glielo dico dopo 3 domande in call").

## Categoria 2 — OBIEZIONE ("costa troppo / ho già un fornitore / non mi fido")

**Obiettivo unico:** anche qui, la call. Un'obiezione scritta NON si "vince" per email: si riconosce, si riframa con una prova, e si invita a parlarne a voce. Chi obietta sta ancora parlando con te — è più caldo di quanto sembri.

**Cosa scrive Claude:** la risposta in **3 mosse**, sempre le stesse:
1. **Capisco** — dai ragione alla sensazione, mai combatterla ("ha perfettamente senso, al suo posto direi lo stesso").
2. **Riframe con prova** — sposti il punto di vista con UNA prova concreta (un caso, un numero, il meccanismo) presa da `output/02-storia-prove.md`.
3. **Invito alla call** — "ne parliamo 15 minuti e vede lei se torna: [link M22]".

**Esempio di risposta tipo ("ho già un fornitore"):**
> Ottimo, e non le chiedo di cambiarlo.
> La maggior parte dei nostri clienti aveva già un fornitore: ci usano per [la cosa specifica che il fornitore attuale non copre — dal Meccanismo Unico].
> Le va un confronto di 15 minuti? Nel peggiore dei casi esce con 2-3 domande giuste da fare al suo fornitore attuale: [link prenotazione].

### La banca obiezioni (Claude la costruisce UNA volta, poi la riusa)

**Cosa fa Claude:** alla prima risposta con obiezione (o anche prima, se glielo chiedi), costruisce il file `output/23-banca-obiezioni.md` leggendo tre documenti che hai già:
- `output/02-matrice-messaggio.md` → i dolori e i desideri per segmento (da lì escono le obiezioni "vere" del tuo settore);
- `output/02-storia-prove.md` → le prove da usare nel riframe;
- `output/06-survey-recupero.md` → le ragioni per cui chi non compra dice di no (obiezioni dette con parole loro).

Dentro ci mette le **5-6 obiezioni tipo del tuo settore** (di solito: prezzo · fornitore già presente · sfiducia/non vi conosco · non è il momento · devo chiederlo al socio/titolare · "l'abbiamo già provato e non ha funzionato"), ognuna con la risposta già scritta in 3 mosse (capisco → riframe con prova → invito alla call).

**Cosa fa il cliente:** niente. Quando arriva un'obiezione, Claude pesca da lì e adatta al caso.

## Categoria 3 — NON ORA ("risentiamoci a settembre")

**Obiettivo unico:** non perderlo. "Non ora" non è un no: è un sì con la data sbagliata. Guai a sparire e guai a insistere adesso.

**Cosa scrive Claude:** 3 righe: ringrazia, fissa il patto ("la ricontatto io a [data], così non deve pensarci lei"), e lascia una porta aperta ("se nel frattempo [evento che accelera il problema], mi scriva pure").

**Esempio di risposta tipo:**
> Perfetto [Nome], allora facciamo così: la ricontatto io i primi di settembre, così non deve segnarsi nulla.
> Nel frattempo le lascio [risorsa utile: guida/caso studio], senza impegno.
> Se prima di allora [il problema] dovesse farsi urgente, mi scriva pure — buon lavoro!

**E poi, la parte che nessuno fa (per questo funziona):**
- **Cosa fa Claude:** sposta il lead nella sequenza di **nurturing** (Manuale 04: valore, storia, casi — niente vendita spinta) e annota il **promemoria con la data** nel database lead (Supabase, **M09**) o, se non l'hai ancora, in `output/23-richiami.md` (nome, email, data promessa, contesto in una riga).
- **Cosa fa il cliente:** quando Claude a settembre gli dice "oggi tocca ricontattare [Nome]", approva e invia la mail di richiamo già pronta ("come promesso a luglio…" — riparte dal punto esatto, e il lead se lo ricorda).

## Categoria 4 — NO / RIMUOVIMI

**Obiettivo unico:** chiudere bene e proteggere la lista. Un no gestito male = segnalazione spam = danno a TUTTE le tue email future (la "reputazione" del dominio, Manuale 03). Un no gestito bene lascia la porta socchiusa.

**Cosa fa Claude:** scrive la riga di congedo e ti dice esattamente dove togliere il contatto.
**Cosa fa il cliente:** invia la riga, poi (guidato da Claude un campo alla volta) mette il contatto in **stop-list**: in Instantly → trova il lead → **Unsubscribe/Blocklist** (così nessuna campagna futura lo ripesca), e Claude lo marca "no — non ricontattare" nel database (**M09**).

**Esempio di risposta tipo:**
> Ricevuto [Nome], la tolgo subito dalla lista — non riceverà altre email da noi.
> Grazie del tempo e in bocca al lupo per il suo lavoro.

Mai discutere, mai "posso chiederle perché?", mai un ultimo tentativo di vendita. Il rispetto qui è anche igiene tecnica: liste pulite = email che arrivano in inbox (M03).

---

## Quando dice SÌ alla call (il traguardo di tutto questo manuale)

1. **Cosa fa Claude:** prepara la risposta con il **link di prenotazione** (**M22**) e 2 proposte concrete di giorno/ora (dare solo il link nudo è freddo; dare solo le date costringe al ping-pong — si danno entrambi).
2. Appena il lead prenota (o conferma un orario), **Claude scrive la conferma**: data, ora, durata, come vi collegherete (telefono o video), e UNA riga di pre-lavoro ("mi tenga a portata [dato utile], così andiamo dritti al punto").
3. **Cosa fa Claude, prima della call:** ti prepara la **scheda lead** (chi è, cosa ha scritto, categoria, obiezioni emerse) e ti rimette davanti lo script di vendita (`output/05-script-vendita-12-punti.md`).
4. **Cosa fa il cliente:** presentarsi puntuale e seguire lo script. Da qui in poi è la call di vendita — il lavoro dell'email è finito.

Se il lead non si presenta: niente drammi, Claude prepara il messaggio di recupero ("ci siamo persi — le rimando il link, scelga lo slot che le è comodo") entro poche ore, una sola volta.

---

## Errori tipici (evitali)

- **Rispondere dopo giorni:** il lead caldo diventa freddo. 24 ore è il massimo, non l'obiettivo.
- **Vendere per email:** paginate di dettagli, listino allegato, presentazione da 20 slide. L'email ha UN lavoro: ottenere la call.
- **Combattere le obiezioni per iscritto:** botta e risposta infiniti. Tre mosse e invito in call, sempre.
- **Prendere "risentiamoci a settembre" alla lettera e sparire:** senza promemoria a data, quel lead è perso. Il richiamo è tuo, non suo.
- **Ignorare i "rimuovimi":** chi continua a ricevere email dopo un no segnala spam, e paghi con la consegna di tutte le email future.
- **Rispondere dalla casella sbagliata:** il lead vede un mittente nuovo e si insospettisce; Instantly non ferma la sequenza e il lead riceve il tocco 3 dopo che ti ha già risposto (pessima figura).

---

**Fatto? Aggiorna la memoria:** in CLAUDE.md spunta questo manuale in "Stato Fase Operativa", aggiorna "Punto di ripresa" al prossimo passo, e annota gli asset creati (account, domini, URL) in "Asset operativi".

**Collegamenti:** le risposte arrivano dall'Unibox di Instantly (**M03**) o inoltrate alla tua casella (**M06**) · tono di voce da `output/03-brand-brief.md` · prove e obiezioni da `output/02-matrice-messaggio.md`, `output/02-storia-prove.md`, `output/06-survey-recupero.md` · NON ORA → nurturing (**M04**) e promemoria nel database (**M09**) · SÌ → link di prenotazione (**M22**) e call con lo script (`output/05-script-vendita-12-punti.md`).
