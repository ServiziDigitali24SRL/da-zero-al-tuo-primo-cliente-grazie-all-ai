# MANUALE 07 — WhatsApp: template e sender

**Due mondi. Spiegali SEMPRE chiaramente al cliente prima di scegliere:**

## A) Ufficiale (consigliato per il business)
1. **WhatsApp Business App** (gratis): per volumi piccoli/manuali. Numero dedicato, profilo aziendale, risposte rapide, etichette, catalogo. Claude scrive i template dei messaggi rapidi.
2. **WhatsApp Business Platform (Cloud API)** — per automazione e volumi: si accede da Meta direttamente o tramite provider (Twilio, 360dialog, Wati…). Requisiti: Business Manager verificato, numero dedicato, **template pre-approvati da Meta** per iniziare conversazioni, **opt-in obbligatorio** del destinatario. Costi a conversazione (tariffe per categoria marketing/utility: verifica il listino Meta per l'Italia). Nessun rischio ban se rispetti le regole.

### Aprire WhatsApp Business App da zero (via 1)
- **Cosa fa il cliente:**
  1. **Procurati un numero dedicato** che NON sia già usato sul tuo WhatsApp personale (un numero = un solo WhatsApp: se usi quello personale, la chat privata si trasforma in aziendale). Due strade: una **seconda SIM** (~10€ una tantum da un operatore low-cost, la metti nel telefono se ha il doppio slot SIM) oppure il **numero fisso aziendale** — WhatsApp Business accetta anche i fissi: al momento della verifica scegli **"Chiamami"** invece dell'SMS e rispondi alla telefonata automatica che ti detta il codice.
  2. Scarica l'app **"WhatsApp Business"** (icona verde con la B) da App Store o Play Store: è un'app SEPARATA da WhatsApp normale, possono convivere sullo stesso telefono senza disturbarsi.
  3. Apri l'app → accetta le condizioni → inserisci il numero dedicato → ricevi il codice (SMS, o chiamata se è un fisso) → conferma.
  4. Compila il **profilo aziendale**: nome dell'azienda (scrivilo giusto subito: cambiarlo dopo è macchinoso), categoria, indirizzo, orari, sito, foto/logo.
- **Cosa fa Claude:** ti prepara PRIMA tutti i testi da incollare (descrizione del profilo, messaggio di benvenuto, messaggio di assenza, risposte rapide) e ti guida schermata per schermata: "ora sei su X, tocca Y, incolla questo".
- **Tempi:** 15-20 minuti se il numero c'è già; una seconda SIM nuova può richiedere 1-2 giorni per l'attivazione.

### Aprire la Cloud API da zero (via 2, tramite provider)
Per un non-tecnico la strada più semplice è un provider che fa da tramite con Meta. Consigliato per iniziare: **360dialog** (360dialog.com) — fa solo questo, canone mensile contenuto (~50€/mese alla data di stesura, verifica sul sito) + i costi Meta a conversazione. Alternativa: Twilio (twilio.com), paghi a consumo ma il pannello è più "da sviluppatori".
- **Cosa fa il cliente:**
  1. Prerequisito: **Business Manager Meta verificato** (la verifica dell'azienda con documenti e P.IVA — percorso completo in **M13**). Senza verifica l'API parte con limiti molto stretti sul numero di conversazioni.
  2. Vai su **360dialog.com** → registrati con l'email aziendale. Dati da tenere pronti: ragione sociale, P.IVA, sito (la cartellina del manuale 00b).
  3. Quando richiesto, collega il tuo Business Manager (login Facebook) e registra il **numero dedicato**. Attenzione: NON deve essere già attivo su WhatsApp o WhatsApp Business — se lo è, prima va scollegato dall'app (Impostazioni → Elimina account: cancella solo il collegamento WhatsApp, non il numero).
  4. Salva la chiave API nel gestore password (manuale 00b).
- **Cosa fa Claude:** scrive i **template** nelle categorie giuste (utility/marketing) pronti da sottoporre all'approvazione di Meta, prepara il codice che invia i messaggi via API, e ti guida UN campo alla volta dentro il pannello del provider.
- **Tempi:** attivazione del numero in poche ore; **approvazione dei template da parte di Meta: da pochi minuti a 24-48 ore** (pianifica gli invii di conseguenza); la verifica del Business Manager, se non l'hai già fatta, può richiedere giorni (M13).
- **Gotcha noti che bloccano i principianti:** numero già collegato a un WhatsApp esistente = il setup si blocca (scollegalo prima); il **nome visualizzato** (display name) deve corrispondere al brand/sito o Meta lo rifiuta; template marketing inviati senza opt-in documentato = segnalazioni degli utenti e "quality rating" che crolla, fino al blocco del numero.

## B) Non ufficiale (esiste, ma AVVISA dei rischi)
Strumenti che automatizzano WhatsApp Web/numero normale senza API ufficiale. Vantaggi: costo basso, niente approvazione template. **Rischi reali: viola i termini di WhatsApp → il numero può essere bannato in qualsiasi momento, senza preavviso e senza appello.** Se il cliente sceglie comunque questa strada: numero dedicato NON aziendale, volumi bassissimi, ritmi umani, solo contatti che conoscono l'azienda, e la consapevolezza scritta del rischio. Claude NON consiglia questa via per attività su cui il business dipende.

## Template (li scrive Claude dal materiale dei Giorni 1-4)
- **Opt-in/benvenuto:** "Ciao {{nome}}, sono X di Y. Mi hai lasciato il contatto per Z: ti va se ti scrivo qui gli aggiornamenti? Rispondi STOP per non ricevere più nulla."
- **Utility:** conferme appuntamento, promemoria call, consegna materiali (link)
- **Marketing (con opt-in):** promo con scadenza vera, invito webinar, follow-up fiera
- Regole: brevi (2-4 righe), 1 CTA, nome vero, sempre via d'uscita. Per la Cloud API, formattali secondo le categorie template di Meta (utility/marketing) con variabili {{1}}, {{2}}.

**Fatto? Aggiorna la memoria:** in CLAUDE.md spunta questo manuale in "Stato Fase Operativa", aggiorna "Punto di ripresa" al prossimo passo, e annota gli asset creati (account, domini, URL) in "Asset operativi".
