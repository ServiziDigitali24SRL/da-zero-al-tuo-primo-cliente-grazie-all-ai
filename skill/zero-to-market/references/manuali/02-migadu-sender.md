# MANUALE 02 — Caselle email su Migadu (i tuoi sender)

**Perché Migadu:** hosting email economico con caselle illimitate per dominio (paghi il piano, non le caselle). Perfetto per creare i sender (le caselle mittenti) del cold outreach.

## Passo 0 — Apertura account e scelta del piano (da zero)
- **Cosa fa il cliente:**
  1. Vai su **migadu.com** → **Sign up** (in alto a destra) → email aziendale principale + password generata dal gestore (salvala subito, manuale 00b).
  2. Conferma l'email di verifica che arriva nella casella.
  3. Migadu parte con un **periodo di prova gratuito**: puoi già aggiungere il dominio e fare tutto il setup. La prova però ha invii quasi bloccati: **prima di iniziare il warmup (Manuale 03) devi attivare il piano a pagamento** — il pagamento è **annuale** (carta aziendale).
  4. Scegli il piano con il calcolo qui sotto (lo fa Claude con i tuoi numeri).
- **Cosa fa Claude:** ti guida schermata per schermata, calcola il piano giusto con i tuoi volumi reali, e ti ricorda di attivare il pagamento PRIMA del warmup (altrimenti le email non partono e sembra tutto rotto).

**Quale piano? Fai il conto, non a occhio.** I piani Migadu si distinguono per il **limite di invii in uscita AL GIORNO su tutto l'account** (alla data di stesura, verifica su migadu.com/pricing):
- **Micro** ~19$/anno → 20 invii/giorno totali. NON basta per il cold.
- **Mini** ~90$/anno → ~100 invii/giorno totali.
- **Standard** ~190$/anno → ~500 invii/giorno totali.
- **Pro** ~390$/anno → ~1000 invii/giorno totali.

**Formula:** (numero caselle × invii cold/giorno per casella) + (numero caselle × ~30 email di warmup/giorno) = invii/giorno necessari → scegli il primo piano che li copre.
*Esempio: 4 caselle × 25 cold = 100, più 4 × 30 warmup = 120 → totale 220/giorno → serve **Standard**. Con 2 caselle: 50 + 60 = 110 → Mini è al limite, meglio Standard se pensi di crescere.*

## Passi
1. Dentro Migadu: **Add Domain** → inserisci il dominio comprato su Cloudflare
2. Migadu mostra i **7+ record DNS** da creare su Cloudflare (verifica ownership, 2 MX, SPF, 3 DKIM, DMARC). **Questi record NON li digita il cliente**: un errore di battitura qui significa email in spam per settimane. Due strade:
   - **Binario consigliato — token API Cloudflare (una volta sola) e fa tutto Claude.**
     - **Cosa fa il cliente (5 minuti, guidato campo per campo):** su dash.cloudflare.com → icona profilo in alto a destra → **My Profile → API Tokens → Create Token** → modello **"Edit zone DNS"** → in "Zone Resources" scegli i domini di servizio → **Continue → Create Token** → copia il token e **incollalo a Claude in chat**, poi salvalo nel gestore password (manuale 00b). Il token permette a Claude di scrivere SOLO i record DNS, niente altro.
     - **Cosa fa Claude:** con quel token crea via API TUTTI i record per ogni dominio (verifica, MX, SPF, DKIM, DMARC, con la nuvoletta grigia "DNS only" dove serve) e **verifica ogni record uno per uno** con `dig`/`nslookup` (interrogazioni DNS reali, non a fiducia) prima di dichiararlo fatto.
   - **Binario di riserva — se il token non si riesce a creare:** Claude ti **detta UN record alla volta** ("ora sei su Cloudflare → DNS → Add record: tipo MX, nome @, valore aspmx1.migadu.com, priorità 10 — incolla questo"), tu lo incolli, e Claude lo **verifica con `dig` prima di passare al successivo**. Mai più di un record aperto alla volta.

   I record, per riferimento di Claude:
   - **Verifica:** record TXT/CNAME di ownership indicato da Migadu
   - **MX:** `aspmx1.migadu.com` (priorità 10) e `aspmx2.migadu.com` (priorità 20)
   - **SPF:** TXT su @ → `v=spf1 include:spf.migadu.com -all`
   - **DKIM:** i 3 CNAME `key1._domainkey`, `key2._domainkey`, `key3._domainkey` che Migadu fornisce
   - **DMARC:** TXT su `_dmarc` → `v=DMARC1; p=quarantine; rua=mailto:postmaster@TUODOMINIO`
   - (Su Cloudflare: nuvoletta GRIGIA "DNS only" per MX/record email, mai proxy arancione)
3. Attendi verifica (minuti/ore) → stato dominio "verified" — Claude controlla lo stato, tu non devi fare nulla
4. **Crea le caselle** (Mailboxes → New): 2-3 per dominio, nomi umani reali: `nome@`, `nome.cognome@`, `n.cognome@`. Password robuste generate dal gestore (salvale nel gestore password, manuale 00b — serviranno per Instantly)
5. Recupera credenziali per Instantly: **SMTP** `smtp.migadu.com` porta 465 (SSL) · **IMAP** `imap.migadu.com` porta 993 — user = indirizzo completo

## Verifica finale (Claude la fa col cliente)
Manda un'email di prova a **mail-tester.com** da ogni casella: punteggio atteso 9-10/10 (SPF, DKIM, DMARC verdi). Se sotto 8, Claude ricontrolla i record con `dig` uno per uno e corregge (via API o dettandoti la correzione).

**Fatto? Aggiorna la memoria:** in CLAUDE.md spunta questo manuale in "Stato Fase Operativa", aggiorna "Punto di ripresa" al prossimo passo, e annota gli asset creati (account, domini, URL) in "Asset operativi".
