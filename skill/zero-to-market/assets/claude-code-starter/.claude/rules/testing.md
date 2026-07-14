---
paths:
  - "**/*.test.ts"
  - "**/*.test.tsx"
  - "**/*.spec.ts"
  - "**/test_*.py"
  - "tests/**"
---

# Regole sui test

- Un test descrive un comportamento, non un'implementazione: se rinomini una funzione
  privata e il test si rompe, il test era scritto male.
- Nome: "dovrebbe <risultato atteso> quando <condizione>".
- Mocka solo i confini esterni (rete, DB, filesystem, orologio). Mai mockare moduli interni.
- Ogni bug fixato entra come test di regressione che fallisce PRIMA della fix.
- Niente `sleep` arbitrari: usa fake timer o attese su condizione.
- Ogni test pulisce i propri effetti collaterali. Nessun ordine di esecuzione implicito.
- Coverage non è un obiettivo: coprire i path di errore lo è.
