# MANUALE 07 — WhatsApp: template e sender

**Due mondi. Spiegali SEMPRE chiaramente al cliente prima di scegliere:**

## A) Ufficiale (consigliato per il business)
1. **WhatsApp Business App** (gratis): per volumi piccoli/manuali. Numero dedicato, profilo aziendale, risposte rapide, etichette, catalogo. Claude scrive i template dei messaggi rapidi.
2. **WhatsApp Business Platform (Cloud API)** — per automazione e volumi: si accede da Meta direttamente o tramite provider (Twilio, 360dialog, Wati…). Requisiti: Business Manager verificato, numero dedicato, **template pre-approvati da Meta** per iniziare conversazioni, **opt-in obbligatorio** del destinatario. Costi a conversazione (tariffe per categoria marketing/utility: verifica il listino Meta per l'Italia). Nessun rischio ban se rispetti le regole.

## B) Non ufficiale (esiste, ma AVVISA dei rischi)
Strumenti che automatizzano WhatsApp Web/numero normale senza API ufficiale. Vantaggi: costo basso, niente approvazione template. **Rischi reali: viola i termini di WhatsApp → il numero può essere bannato in qualsiasi momento, senza preavviso e senza appello.** Se il cliente sceglie comunque questa strada: numero dedicato NON aziendale, volumi bassissimi, ritmi umani, solo contatti che conoscono l'azienda, e la consapevolezza scritta del rischio. Claude NON consiglia questa via per attività su cui il business dipende.

## Template (li scrive Claude dal materiale dei Giorni 1-4)
- **Opt-in/benvenuto:** "Ciao {{nome}}, sono X di Y. Mi hai lasciato il contatto per Z: ti va se ti scrivo qui gli aggiornamenti? Rispondi STOP per non ricevere più nulla."
- **Utility:** conferme appuntamento, promemoria call, consegna materiali (link)
- **Marketing (con opt-in):** promo con scadenza vera, invito webinar, follow-up fiera
- Regole: brevi (2-4 righe), 1 CTA, nome vero, sempre via d'uscita. Per la Cloud API, formattali secondo le categorie template di Meta (utility/marketing) con variabili {{1}}, {{2}}.
