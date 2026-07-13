# MANUALE 02 — Caselle email su Migadu (i tuoi sender)

**Perché Migadu:** hosting email economico con caselle illimitate per dominio (paghi il piano, non le caselle). Perfetto per creare i sender del cold outreach. Nota: i limiti di invio giornalieri dipendono dal piano — verifica su migadu.com/pricing e scegli il piano adeguato ai volumi (per il cold servono ~20-30 invii/giorno per casella: di solito il piano intermedio basta).

## Passi
1. Account su **migadu.com** → **Add Domain** → inserisci il dominio comprato su Cloudflare
2. Migadu mostra i record DNS da creare. Su **Cloudflare → DNS → Records** aggiungi:
   - **Verifica:** record TXT/CNAME di ownership indicato da Migadu
   - **MX:** `aspmx1.migadu.com` (priorità 10) e `aspmx2.migadu.com` (priorità 20)
   - **SPF:** TXT su @ → `v=spf1 include:spf.migadu.com -all`
   - **DKIM:** i 3 CNAME `key1._domainkey`, `key2._domainkey`, `key3._domainkey` che Migadu fornisce
   - **DMARC:** TXT su `_dmarc` → `v=DMARC1; p=quarantine; rua=mailto:postmaster@TUODOMINIO`
   - (Su Cloudflare: nuvoletta GRIGIA "DNS only" per MX/record email, mai proxy arancione)
3. Attendi verifica (minuti/ore) → stato dominio "verified"
4. **Crea le caselle** (Mailboxes → New): 2-3 per dominio, nomi umani reali: `nome@`, `nome.cognome@`, `n.cognome@`. Password robuste (salvale nel gestore password del cliente)
5. Recupera credenziali per Instantly: **SMTP** `smtp.migadu.com` porta 465 (SSL) · **IMAP** `imap.migadu.com` porta 993 — user = indirizzo completo

## Verifica finale (Claude la fa col cliente)
Manda un'email di prova a **mail-tester.com** da ogni casella: punteggio atteso 9-10/10 (SPF, DKIM, DMARC verdi). Se sotto 8, ricontrolla i record.
