# MANUALE 00b — Prerequisiti: prima di aprire qualsiasi account

**Perché:** nella Fase Operativa aprirai circa 10 account nuovi (Cloudflare, Migadu, Instantly, Brevo, Supabase, Stripe, Meta, Google…). Senza una base, le password finiscono su foglietti che si perdono, e il primo servizio che chiede la "verifica in due passaggi" ti blocca. Questo manuale sistema UNA VOLTA le tre cose che servono a tutti gli account: il gestore password, l'app per la verifica in due passaggi, e i dati aziendali pronti da incollare. 30 minuti oggi ti risparmiano ore di "password dimenticata" domani.

**Costo:** zero. Bitwarden e Google Authenticator sono gratuiti.

**Regola d'oro:** ogni account nuovo → password GENERATA dal gestore e salvata SUBITO lì dentro. Mai su foglietti, mai la stessa password di un altro account, mai a memoria.

---

## Passo 1 — Il gestore password (la cassaforte delle chiavi)

**Cos'è, in parole semplici:** un'app-cassaforte che inventa password lunghe e impossibili da indovinare, le ricorda al posto tuo e te le incolla da sola quando entri in un sito. Tu devi ricordare UNA sola password: quella della cassaforte (si chiama "password principale").

**Scelta A (consigliata): Bitwarden, gratis.**
- **Cosa fa il cliente:**
  1. Vai su **bitwarden.com** → **Get started** (crea account gratis). Servono: la tua email principale aziendale e una **password principale** — inventala tu, lunga: una frase di 4-5 parole che non dimenticherai mai (es. il titolo di una canzone + un numero). È l'UNICA password che dovrai ricordare a vita: scrivila anche su carta e mettila in un posto sicuro fisico (cassaforte, cassetto chiuso a chiave) — è l'unica eccezione alla regola dei foglietti.
  2. Conferma l'email (arriva un messaggio con un pulsante di verifica).
  3. Installa l'**estensione per il browser** (Chrome/Edge/Safari): su bitwarden.com → Download → scegli il tuo browser → "Aggiungi". Comparirà uno scudetto in alto a destra nel browser: cliccalo e accedi.
  4. Installa anche l'**app sul telefono** (App Store o Play Store, cerca "Bitwarden") e accedi con le stesse credenziali: così le password ti seguono ovunque.
  5. Prova: quando aprirai il primo account (Manuale 01), al momento della password clicca lo scudetto → **Genera password** → salva. Fatto: quella password non la vedrai né ricorderai mai, ci pensa Bitwarden.
- **Cosa fa Claude:** ti dice esattamente dove cliccare a ogni schermata, ti aiuta a scegliere una password principale robusta ma memorizzabile, e a ogni nuovo account del percorso ti ricorda "genera e salva in Bitwarden" prima di andare avanti.

**Scelta B (minimo accettabile): il gestore del browser.** Se Bitwarden ti sembra troppo, Chrome/Edge/Safari hanno un gestore integrato: quando crei una password il browser propone "Usa password sicura" e la salva da solo. Va bene per partire, con due limiti: le password vivono solo in quel browser, e devi avere un blocco (PIN/impronta) sul computer. La regola d'oro vale identica.

## Passo 2 — L'app per la verifica in due passaggi (2FA)

**Cos'è, in parole semplici:** molti servizi, oltre alla password, chiedono un secondo controllo: un codice di 6 cifre che cambia ogni 30 secondi, generato da un'app sul tuo telefono. Si chiama "verifica in due passaggi" o "2FA". È come la chiave + l'allarme: anche se qualcuno ruba la password, senza il tuo telefono non entra. Cloudflare, Google, Meta e Stripe la chiedono o la impongono: meglio essere pronti.

- **Cosa fa il cliente:**
  1. Scarica **Google Authenticator** (gratis, App Store o Play Store — vanno bene anche Microsoft Authenticator o l'authenticator integrato in Bitwarden, il funzionamento è identico).
  2. Quando un servizio propone "attiva la verifica in due passaggi", scegli l'opzione **"app di autenticazione"** (NON solo SMS: gli SMS a volte non arrivano e sono meno sicuri). Il sito mostra un **codice QR** (il quadrato a puntini).
  3. Apri Google Authenticator → tocca **+** → **Scansiona codice QR** → inquadra il quadrato sullo schermo del computer con la fotocamera del telefono. Comparirà una nuova riga con il nome del servizio e un codice a 6 cifre che cambia da solo.
  4. Il sito ti chiede di digitare il codice per conferma: copialo dall'app (fai in fretta, dura 30 secondi — se scade ne appare uno nuovo, nessun problema).
  5. **I codici di backup:** quasi tutti i servizi, dopo l'attivazione, mostrano 8-10 "codici di recupero" (servono se perdi o cambi telefono). NON saltare questo passaggio: salvali nel gestore password (in Bitwarden: apri la voce di quell'account → campo Note → incollali lì). In più, stampali e mettili nello stesso posto fisico sicuro della password principale.
- **Cosa fa Claude:** quando un servizio del percorso chiede la 2FA, ti avvisa prima ("ora ti chiederà il codice: prendi il telefono"), ti guida passo-passo nell'inquadrare il QR e ti ricorda SEMPRE di salvare i codici di backup prima di chiudere la pagina.

## Passo 3 — La cartellina dei dati: cosa tenere pronto per ogni iscrizione

Ogni account nuovo chiede più o meno gli stessi dati. Prepararli UNA volta evita di interrompersi a metà iscrizione per cercare la P.IVA nel cassetto.

- **Cosa fa il cliente:** tieni a portata di mano (basta un foglio o un file sul computer — SENZA password sopra, quelle stanno nel gestore):
  1. **Email aziendale principale** — quella con cui aprirai tutti gli account (una sola per tutto: più facile da gestire).
  2. **Numero di cellulare** — per le verifiche via SMS e la 2FA.
  3. **Carta di credito/debito aziendale** — per domini, Migadu, Instantly; tienila fisicamente vicina, i numeri NON vanno mai scritti in un file.
  4. **Dati aziendali:** ragione sociale esatta, **P.IVA**, codice fiscale, indirizzo della sede.
  5. **IBAN aziendale** — lo chiede Stripe (è dove ti arriveranno i soldi).
  6. **Documento d'identità** (carta d'identità o passaporto, valido) — Stripe e a volte Meta/Google fanno la verifica dell'identità ("KYC", il controllo antifrode: foto del documento e a volte un selfie). È normale, non è un problema tuo: lo chiedono a tutti.
- **Cosa fa Claude:** prima di ogni signup del percorso ti dice in anticipo QUALI di questi dati serviranno ("per Stripe tieni pronti IBAN e documento"), così non ti blocchi mai a metà.

## Passo 4 — Quale account chiede cosa (tabella di riferimento)

Così sai in anticipo cosa aspettarti da ognuno (situazione alla data di stesura; qualche dettaglio può cambiare):

| Servizio | Email | Telefono | Carta | 2FA | Verifica identità/azienda (KYC) |
|---|---|---|---|---|---|
| Cloudflare (M01) | sì | no | sì (per comprare i domini) | consigliata (proposta al setup) | no |
| Migadu (M02) | sì | no | sì (pagamento annuale) | consigliata | no |
| Instantly (M03) | sì | no | sì (abbonamento mensile) | consigliata | no |
| Brevo (M05) | sì | a volte (verifica) | no per partire (piano free) | consigliata | profilo azienda completo richiesto prima di poter inviare |
| Supabase (M09) | sì (o account GitHub/Google) | no | no per partire (piano free) | consigliata | no |
| Stripe (M16) | sì | sì | no (qui i soldi li RICEVI: serve l'IBAN) | sì, imposta | **sì: P.IVA, documento, dati azienda** — senza, niente incassi |
| Meta/Facebook (M08/M13) | sì | sì | sì (per le inserzioni) | fortemente consigliata (account nuovi nel mirino) | possibile per gli inserzionisti (documento) |
| Google (M14, YouTube M17) | sì | sì (verifica obbligatoria) | sì (per Google Ads) | consigliata | verifica inserzionista possibile su Google Ads |

- **Cosa fa Claude:** usa questa tabella per prepararti a ogni apertura e, se un servizio chiede qualcosa di inatteso, controlla il Manuale 18 (troubleshooting) prima di farti perdere tempo.

## Errori tipici (evitali)

- **Password sul foglietto o riusata:** un foglietto perso = account perso; una password riusata = un furto apre TUTTI gli account. Il gestore esiste per questo.
- **Dimenticare la password principale di Bitwarden:** è l'unica non recuperabile facilmente. Scrivila su carta e mettila nel posto fisico sicuro, il giorno stesso.
- **Saltare i codici di backup della 2FA:** se cambi o perdi il telefono senza codici di backup, restare chiusi fuori dal proprio account è questione di secondi. Salvali sempre, subito.
- **2FA solo via SMS quando c'è l'app:** l'SMS può non arrivare (viaggi, cambio operatore). L'app funziona anche senza campo.
- **Email diverse per ogni account:** poi non ricordi più "con quale email mi ero iscritto?". Una email aziendale per tutto il percorso.
- **Scrivere i numeri della carta o le password in un file "per comodità":** mai. Carta fisica a portata di mano, password nel gestore, punto.

**Fatto? Aggiorna la memoria:** in CLAUDE.md spunta questo manuale in "Stato Fase Operativa", aggiorna "Punto di ripresa" al prossimo passo, e annota gli asset creati (account, domini, URL) in "Asset operativi".

---

**Collegamenti:** questo manuale va completato PRIMA del Manuale 01 (**M01** domini). Il gestore password è richiamato in **M01**, **M02** (password caselle) e **M09** (password database). La tabella del Passo 4 rimanda ai manuali di ogni servizio: **M02** Migadu, **M03** Instantly, **M05** Brevo, **M08/M13** Meta, **M09** Supabase, **M14** Google Ads, **M16** Stripe, **M17** YouTube. Se un account si blocca in fase di verifica → **M18** (troubleshooting).
