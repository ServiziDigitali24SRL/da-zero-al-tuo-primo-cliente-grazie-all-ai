---
paths:
  - "**/auth/**"
  - "**/payment*/**"
  - "**/billing/**"
  - "**/webhook*/**"
  - "**/middleware*"
---

# Regole su auth, pagamenti e webhook

- Nessun segreto nel codice, nei log, nei messaggi di errore o nei commenti. Solo env var.
- I webhook verificano SEMPRE la firma prima di elaborare il payload. Un webhook non firmato
  è input ostile.
- I token hanno una scadenza. Le sessioni si possono revocare.
- Le password si hashano con argon2 o bcrypt. Mai algoritmi custom, mai SHA da solo.
- Gli importi monetari sono interi (centesimi), mai float.
- Prima di modificare qualcosa in queste directory: spiega cosa cambia e perché,
  e aspetta conferma. Non è codice come gli altri.
