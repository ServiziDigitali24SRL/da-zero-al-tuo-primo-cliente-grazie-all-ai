# MANUALE 16 — Farsi pagare (Stripe e PayPal)

**Perché:** tutto il funnel serve a questo momento. Qui crei il modo più semplice per incassare la tua offerta d'ingresso (SLO) e l'offerta principale, senza sviluppatori e senza carrelli complicati.

**Costo:** aprire l'account è gratis. Paghi solo una **commissione su ogni incasso** (~1,5% + pochi centesimi per carte europee, fino a ~3% per carte extra-UE o PayPal). Nessun canone fisso per iniziare.

**Regola d'oro:** meno passaggi tra "voglio comprare" e "ho pagato = più vendite. Un link diretto batte qualsiasi carrello.

---

## Passo 1 — Apri Stripe e crea il Payment Link per la SLO
Stripe è il modo più veloce e professionale per incassare online.

### Aprire l'account Stripe da zero (se non ce l'hai già)
⚠️ **Prima di tutto: serve la Partita IVA.** In Italia Stripe verifica che dietro l'account ci sia un'attività vera: senza P.IVA (ditta individuale o società) la verifica non passa e l'account resta bloccato a metà. Se non ce l'hai ancora, fermati e sistemala col commercialista (vedi Passo 6) PRIMA di iniziare la registrazione.

**Tieni pronti questi dati (5 minuti di preparazione = zero blocchi dopo):**
- **Ragione sociale** esatta e **Partita IVA** (come da visura)
- **Documento d'identità** del titolare/legale rappresentante (foto o scansione, fronte e retro)
- **IBAN** del conto dove Stripe verserà i soldi
- **Sito web** oppure — se non ce l'hai — una descrizione chiara dell'attività e di cosa vendi (Stripe la accetta al posto del sito)

**La sequenza delle schermate:**
- **Cosa fa il cliente** (guidato da Claude un campo alla volta):
  1. Vai su **https://dashboard.stripe.com/register** → email, nome, password. **Salva la password nel gestore password (manuale 00b).**
  2. Conferma l'email (link nella casella) e attiva la **verifica in 2 passaggi** quando te la propone (codice via SMS o app).
  3. "Attiva il tuo account" → tipo di attività (ditta individuale/società), ragione sociale, P.IVA, indirizzo.
  4. Dati del titolare: nome, data di nascita, codice fiscale, caricamento del documento.
  5. Descrizione dell'attività: cosa vendi e come (qui va il sito, o la descrizione preparata da Claude).
  6. **IBAN** per i versamenti → riepilogo → invia.
- **Cosa fa Claude:** ti dice a ogni schermata "ora sei su X, clicca Y, incolla questo", e prepara lui la descrizione dell'attività partendo dal tuo Giorno 1-3.

**Tempi e trappole note:**
- Puoi creare prodotti e link **subito**, ma i **soldi arrivano sul conto solo a verifica completata** (in genere entro ~7 giorni; il primo versamento può tardare qualche giorno in più). Non è un errore: è normale.
- **Test vs Live:** Stripe ha due modalità. In alto nella dashboard c'è l'interruttore **"Modalità test"**: con quella attiva i pagamenti sono finti (si prova con la carta 4242 4242 4242 4242). Le prove si fanno in test; il link da mettere in pagina è quello **live**. Errore classico dei principianti: pubblicare il link di test e non incassare nulla.

### Creare prodotto e Payment Link — due strade

**Strada A (consigliata) — lo fa Claude via API:**
1. **Cosa fa il cliente:** in Stripe → **Sviluppatori → Chiavi API → Crea chiave con restrizioni** ("restricted key": una chiave che può fare solo le poche cose che le concedi). Dai il permesso di **scrittura** solo su Prodotti, Prezzi e Payment Links. Copiala, **salvala nel gestore password (manuale 00b)** e incollala a Claude in chat.
2. **Cosa fa Claude:** con quella chiave crea via API il **prodotto** (nome dall'offerta del Giorno 3), il **prezzo**, il **Payment Link** e attiva l'invio automatico della **ricevuta** email. Poi fa un pagamento di prova in modalità test e ti mostra il link pronto.
3. **Cosa fa il cliente:** guarda il risultato e conferma. Fine: non hai toccato un menu.

**Strada B — a mano nella dashboard (se preferisci cliccare tu):**
- **Cosa fa il cliente:**
  1. **Prodotti → Aggiungi prodotto:** nome dell'offerta (dal Giorno 3), prezzo della SLO, valuta.
  2. **Crea Payment Link:** Stripe genera un indirizzo tipo `buy.stripe.com/xxxx`. È una pagina di pagamento pronta, sicura, con carta/Apple Pay/Google Pay.
  3. **IVA/tasse:** attiva **Stripe Tax** (calcola l'IVA da solo) oppure imposta manualmente l'aliquota; decidi se il prezzo è "IVA inclusa" (consigliato per il B2C).
  4. **Ricevuta:** attiva l'invio automatico della ricevuta email al cliente (Impostazioni → Email cliente).
- **Cosa fa Claude:** ti detta ogni campo, sceglie con te "IVA inclusa/esclusa" in base al tuo cliente, e ti dice esattamente dove incollare il link.

## Passo 2 — Metti il link dove serve
- Nel bottone della **sales page** (M15) e nella **thank-you page**.
- Nelle **email** che vendono la SLO (Giorno 4: benvenuto, 4DCM).
- **Cosa fa Claude:** inserisce il Payment Link in tutti i punti giusti dei materiali già prodotti.

## Passo 3 — Sapere quando vendi (notifiche) e salvare la vendita (opzionale)
- **Notifiche:** Stripe ti manda un'email a ogni pagamento; attiva anche l'app Stripe sul telefono per il "cha-ching" in tempo reale.
- **Automazione (opzionale, quando vuoi ordine):** collega Stripe a **Supabase** (M09) e **Brevo** (M05) tramite un **webhook** via **Make o Zapier**: "pagamento ricevuto → segna il lead come "cliente" nel database → fai partire l'email post-acquisto/onboarding". **Cosa fa Claude:** prepara lo scenario Make/Zapier e i campi da mappare. All'inizio puoi anche farne a meno e aggiornare i clienti a mano.

## Passo 4 — PayPal (alternativa o aggiunta)
Alcuni clienti si fidano di più di PayPal o non hanno la carta a portata.

**Aprire l'account PayPal Business da zero:**
- **Cosa fa il cliente** (guidato da Claude una schermata alla volta):
  1. Vai su **https://www.paypal.com/it/business** → "Apri un conto Business" → email aziendale e password. **Salva la password nel gestore password (manuale 00b).**
  2. Dati attività: ragione sociale, P.IVA, indirizzo, sito o descrizione di cosa vendi.
  3. Verifiche: conferma **email** e **numero di telefono**; poi collega **conto bancario o carta** e completa la verifica d'identità (ti chiedono il documento — è la procedura "KYC", cioè il controllo obbligatorio di chi sei). Attivazione subito, verifica completa in pochi giorni.
  4. ⚠️ Trappola nota: senza verifica completa PayPal può **trattenere i fondi** o bloccare i prelievi. Completa TUTTE le verifiche prima di ricevere pagamenti veri.
- **Cosa fa Claude:** prepara la descrizione dell'attività e gli importi, ti dice campo per campo cosa incollare, e quando l'account è pronto ti guida a creare il **link di pagamento** (o pulsante) da affiancare a quello Stripe; poi lo inserisce lui nei materiali giusti.
- **Quando aggiungerlo:** se noti che qualcuno abbandona al pagamento, dare PayPal come seconda opzione può recuperare vendite. Non è obbligatorio partire con entrambi.

## Passo 5 — Offerta ad alto costo: il pagamento in call
L'offerta principale (ticket alto) di solito non si vende con un bottone sulla pagina, ma **durante la call di vendita** (script Fase 12).
- **Come funziona:** quando il cliente dice sì, gli invii **lì per lì** il Payment Link Stripe (o i dati per il bonifico) e resti al telefono finché non conferma il pagamento o il blocco del posto.
- **Regole (dallo script):** accetta solo SÌ o NO, mai "ci penso"; **non proporre mai le rate spontaneamente** — presenta sempre il pagamento unico; se le rate le chiede il cliente, massimo 2 (una subito, una a 30 giorni), incentivando il totale con un bonus a costo zero.
- **Cosa fa Claude:** ti prepara il Payment Link dell'offerta alta e le frasi esatte da usare al momento della chiusura.

## Passo 6 — Fatturazione (Italia): il pagamento NON è la fattura
Incassare e fatturare sono due cose diverse. Stripe/PayPal ti danno i soldi e una ricevuta, **ma la fattura fiscale la devi emettere tu**.
- Serve **Partita IVA** e un **regime** adatto (forfettario o ordinario): decidilo col tuo **commercialista** prima di vendere.
- Usa un gestionale di **fatturazione elettronica** (es. FattureInCloud, Fatture in Cloud, o quello del tuo commercialista) per emettere le fatture verso i clienti; molti si collegano a Stripe per semplificare.
- **Avviso onesto:** questo manuale ti mette in condizione di incassare, NON è consulenza fiscale. Le regole (IVA, soglie, esterometro, ecc.) cambiano e dipendono dalla tua situazione: **coordinati sempre col commercialista**.
- **Cosa fa Claude:** ti aiuta a organizzare l'incasso e a preparare le informazioni per il commercialista; non sostituisce il commercialista.

## Passo 7 — Il primo incasso: cosa fare subito
La prima notifica "Pagamento ricevuto" è un momento vero. Non lasciarlo cadere: nell'ordine, fai queste 6 cose.
1. **Verifica l'incasso:** apri Stripe/PayPal e controlla importo, nome ed email di chi ha pagato. **Cosa fa Claude:** ti dice esattamente dove guardare e controlla con te che sia tutto regolare.
2. **Fattura subito:** emetti la fattura elettronica come da Passo 6 (o passa i dati al commercialista **oggi stesso**, non "poi"). **Cosa fa Claude:** prepara il riepilogo dati per la fattura (cliente, importo, data, descrizione).
3. **Consegna la SLO:** chi ha pagato deve ricevere subito quello che ha comprato (accesso, file, appuntamento). **Cosa fa Claude:** se la consegna non è già automatica (M05), scrive lui l'email di consegna; tu la approvi e parte.
4. **Pivot survey:** manda al nuovo cliente 2-3 domande post-acquisto ("perché hai comprato? cosa ti ha convinto? cosa ti aveva frenato?"). È la ricerca più preziosa che esista e alimenta tutti i materiali futuri. **Cosa fa Claude:** prepara lui le domande e il messaggio.
5. **Prenota la testimonianza:** appena il cliente ottiene il primo risultato, chiedi 2 righe di feedback da usare (col suo permesso) su pagina ed email. **Cosa fa Claude:** ti prepara la richiesta e ti ricorda quando mandarla.
6. **Aggiorna la memoria e festeggia:** segna il primo cliente in `CLAUDE.md` e in `output/00-stato-progetto.md` — e goditi il momento: da qui in poi si **replica**, non si riparte da zero.

Il percorso completo dopo il primo euro (dai primi incassi a un flusso stabile) è in `references/fase-verso-il-primo-euro.md`: aprilo appena chiuso questo passo.

## Errori tipici (evitali)
- **Carrelli complicati:** per una singola offerta, un Payment Link basta e avanza. Niente e-commerce se non ti serve.
- **Chiedere troppi dati al pagamento:** ogni campo in più fa perdere vendite. Stripe chiede il minimo, lascialo così.
- **Dimenticare l'IVA e la fattura:** incassi puliti ma poi problemi col fisco. Sistema il lato fiscale PRIMA di lanciare.
- **Proporre le rate di tua iniziativa:** abbassa il valore percepito e il tuo cash flow. Pagamento unico come default.
- **Pubblicare il link di TEST invece di quello live:** la pagina sembra funzionare ma non incassa. Controlla sempre l'interruttore "Modalità test" prima di copiare il link.

---

**Fatto? Aggiorna la memoria:** in CLAUDE.md spunta questo manuale in 'Stato Fase Operativa', aggiorna 'Punto di ripresa' al prossimo passo, e annota gli asset creati (account, domini, URL) in 'Asset operativi'.

**Collegamenti:** prezzo/offerta dal Giorno 3 · link nei materiali di `output/06-sales-page.md` ed email (Giorno 4) · chiusura in call dallo script Fase 12 (`output/05-script-vendita-12-punti.md`) · automazione con Supabase (**M09**) e Brevo (**M05**). I clienti chiusi si vedono nella dashboard (**M10**).
