---
paths:
  - "src/api/**"
  - "src/routes/**"
  - "app/api/**"
  - "**/handlers/**"
---

# Regole sugli endpoint

- Ogni input (body, query, params, header) è validato con uno schema prima di essere usato.
  Nessun accesso diretto a dati non validati.
- Shape di risposta uniforme: `{ data }` in caso di successo, `{ error }` in caso di errore.
  Mai stringhe nude, mai shape diverse tra endpoint.
- I messaggi di errore restituiti al client non contengono stack trace, query SQL,
  nomi di tabella, path di filesystem o valori di configurazione.
- Ogni endpoint pubblico ha rate limiting.
- Autorizzazione controllata a livello di risorsa, non solo di rotta: "è loggato" non basta,
  serve "possiede questa risorsa".
- Le operazioni che mutano stato sono idempotenti o protette da chiave di idempotenza.
