---
description: Esegue la verifica completa del progetto (lint, typecheck, test, build) e riporta solo i fallimenti reali con la causa. Usala prima di ogni commit o quando l'utente chiede se il codice funziona.
argument-hint: [percorso opzionale da restringere]
---

## Stato attuale del repo

!`git status --short 2>/dev/null | head -30`

## Diff rispetto a HEAD

!`git diff --stat HEAD 2>/dev/null | tail -20`

---

Esegui la verifica completa del progetto usando i comandi definiti nella sezione "Comandi"
del CLAUDE.md. Nell'ordine: lint → typecheck → test → build.

Regole:

1. Esegui i comandi davvero. Non dedurre l'esito, non dire "dovrebbe passare".
2. Se qualcosa fallisce: leggi l'errore, individua la causa reale (non il sintomo),
   correggi, e **rilancia il comando fallito**. Ripeti finché non passa.
3. Non dichiarare mai "tutto ok" senza aver visto l'output verde dell'ultimo run.
4. Se un fallimento non c'entra con le modifiche in corso (test già rotto prima),
   segnalalo separatamente invece di aggiustarlo di nascosto.
5. Se dopo 3 tentativi un errore persiste, fermati e spiega cosa hai provato e perché
   non funziona. Non insistere sulla stessa strada.

Chiudi con: cosa hai eseguito, cosa passava già, cosa hai dovuto sistemare, cosa resta rotto.
