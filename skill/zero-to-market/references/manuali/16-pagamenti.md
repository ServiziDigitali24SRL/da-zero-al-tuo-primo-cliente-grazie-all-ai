# MANUALE 16 — Farsi pagare (Stripe e PayPal)

**Perché:** tutto il funnel serve a questo momento. Qui crei il modo più semplice per incassare la tua offerta d'ingresso (SLO) e l'offerta principale, senza sviluppatori e senza carrelli complicati.

**Costo:** aprire l'account è gratis. Paghi solo una **commissione su ogni incasso** (~1,5% + pochi centesimi per carte europee, fino a ~3% per carte extra-UE o PayPal). Nessun canone fisso per iniziare.

**Regola d'oro:** meno passaggi tra "voglio comprare" e "ho pagato = più vendite. Un link diretto batte qualsiasi carrello.

---

## Passo 1 — Apri Stripe e crea il Payment Link per la SLO (no-code, 5 minuti)
Stripe è il modo più veloce e professionale per incassare online.
- **Cosa fa il cliente:**
  1. Registrati su **stripe.com** (dati azienda, IBAN per ricevere i soldi, verifica identità).
  2. **Prodotti → Aggiungi prodotto:** nome dell'offerta (dal Giorno 3), prezzo della SLO, valuta.
  3. **Crea Payment Link:** Stripe genera un indirizzo tipo `buy.stripe.com/xxxx`. È una pagina di pagamento pronta, sicura, con carta/Apple Pay/Google Pay.
  4. **IVA/tasse:** attiva **Stripe Tax** (calcola l'IVA da solo) oppure imposta manualmente l'aliquota; decidi se il prezzo è "IVA inclusa" (consigliato per il B2C).
  5. **Ricevuta:** attiva l'invio automatico della ricevuta email al cliente (Impostazioni → Email cliente).
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
- **Cosa fa il cliente:** account PayPal Business → crea un **Link di pagamento** o pulsante, da affiancare a quello Stripe.
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

## Errori tipici (evitali)
- **Carrelli complicati:** per una singola offerta, un Payment Link basta e avanza. Niente e-commerce se non ti serve.
- **Chiedere troppi dati al pagamento:** ogni campo in più fa perdere vendite. Stripe chiede il minimo, lascialo così.
- **Dimenticare l'IVA e la fattura:** incassi puliti ma poi problemi col fisco. Sistema il lato fiscale PRIMA di lanciare.
- **Proporre le rate di tua iniziativa:** abbassa il valore percepito e il tuo cash flow. Pagamento unico come default.

---

**Collegamenti:** prezzo/offerta dal Giorno 3 · link nei materiali di `output/06-sales-page.md` ed email (Giorno 4) · chiusura in call dallo script Fase 12 (`output/05-script-vendita-12-punti.md`) · automazione con Supabase (**M09**) e Brevo (**M05**). I clienti chiusi si vedono nella dashboard (**M10**).
