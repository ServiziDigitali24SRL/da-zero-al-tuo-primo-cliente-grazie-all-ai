# MANUALE 15 — Pubblicare la landing (dal testo alla pagina online)

**Perché:** hai il copy della pagina di cattura (optin, Giorno 4) e della pagina di vendita (sales page SLO, Giorno 6), ma un testo in un file non raccoglie contatti. Qui lo trasformi in una **pagina web vera**, online, con il form che salva i lead e i pixel che misurano le campagne.

**Costo:** gratis per partire (Netlify/Vercel hanno un piano gratuito generoso). Un dominio personalizzato è opzionale (~10€/anno, M01).

**Regola d'oro:** una pagina semplice, veloce e con UN solo obiettivo (lasciare il contatto) converte più di una pagina bella e piena di distrazioni.

---

## Passo 1 — Claude genera la pagina (un solo file HTML)
- **Cosa fa Claude:** costruisce la landing come **singolo file HTML** (tutto incluso: testo, stile, form) partendo dal copy che hai già:
  - **Optin page** (Giorno 4) — headline, sotto-headline, bullet, form, CTA
  - **Thank-you page** — la schermata "grazie, controlla la mail" che appare DOPO l'invio (qui vivono i tag di conversione, vedi Passo 4)
  - **Sales page SLO** (Giorno 6) — la pagina di vendita dell'offerta d'ingresso
- Un file HTML è comodo: si apre ovunque, si carica in 2 secondi, non richiede WordPress né plugin. Claude usa i colori/logo del brand (dal Giorno 3) e la rende **responsive** (perfetta su telefono, dove arriva la maggior parte del traffico).

## Passo 2 — Collega il form (i contatti devono arrivarti)
Il form deve salvare chi si iscrive. Due strade (Claude sceglie in base ai tuoi strumenti):
- **Via Brevo (semplice):** il form invia i contatti a una lista Brevo, che fa partire in automatico l'email di benvenuto e la consegna del lead magnet (M05). Claude collega il form all'API/form di Brevo.
- **Via Supabase (controllo totale):** il form chiama una piccola funzione (Edge Function) che salva il contatto nel database `leads` (**M09**) e, in parallelo, fa partire l'email da Brevo. Claude scrive la funzione. Consigliata quando vuoi tutti i lead in un posto solo.
- **Nota di sicurezza:** le chiavi "segrete" non finiscono mai nell'HTML pubblico. Claude usa solo chiavi pubbliche lato pagina e tiene le chiavi segrete nella funzione lato server (M09).

## Passo 3 — Pubblica online (3 vie, dalla più facile)

### (a) Netlify Drop — trascina e vai (no-code, gratis)
1. **Cosa fa il cliente:** crea PRIMA l'account gratuito su **app.netlify.com/signup** → scegli **"Sign up with email"** (email + password: la via più semplice, non serve avere GitHub). **Salva la password nel gestore password (manuale 00b).**
2. ⚠️ **Perché l'account prima:** le pagine caricate su Drop **senza account scadono dopo circa 1 ora** — sembrano online, poi spariscono. Con l'account restano su per sempre e puoi cambiarle nome.
3. Fatto il login, vai su **app.netlify.com/drop** e trascina il file HTML nella finestra. La pagina è online con un indirizzo tipo `nome-a-caso.netlify.app`.
- La via più veloce in assoluto: dal file all'online in 2 minuti, account compreso.

### (b) Connettore Netlify/Vercel — lo fa Claude
- Se non hai ancora l'account: **Netlify → app.netlify.com/signup**, **Vercel → vercel.com/signup** — piano gratuito (su Vercel si chiama "Hobby"), registrazione via email in 1 minuto, password nel gestore password (manuale 00b).
- **Se il connettore Netlify o Vercel è collegato** (Impostazioni → Connettori): Claude pubblica la pagina direttamente, con la tua conferma, e ti restituisce il link. Ideale per aggiornarla nel tempo senza toccare nulla.

### (c) Sito esistente / WordPress — incolla le sezioni
- Se hai già un sito: **Cosa fa Claude** ti prepara le sezioni (o lo shortcode/blocco HTML) da incollare in una nuova pagina del tuo WordPress/sito. Utile per tenere tutto sotto lo stesso dominio.

## Passo 4 — Dominio personalizzato (facoltativo ma consigliato)
Un indirizzo tuo (`vai.tuobrand.com`) è più professionale di `nome-a-caso.netlify.app`.
- **Cosa fa il cliente:** su **Cloudflare → DNS** (M01) aggiungi un record **CNAME** che punta all'indirizzo Netlify/Vercel (te lo indica la piattaforma). Nuvoletta arancione (proxy) o grigia secondo le istruzioni della piattaforma.
- **Cosa fa Claude:** ti detta il valore esatto del CNAME e verifica che la pagina risponda sul tuo dominio con HTTPS attivo.

## Oltre la landing: quiz-funnel e survey online (stessa strada, zero strumenti in più)

### Quiz-funnel (dal Giorno 4)
Il quiz che segmenta i contatti (ognuno risponde e finisce nel suo "bucket", cioè gruppo: es. principiante / intermedio / avanzato) non richiede nessuno strumento nuovo: è un'altra pagina HTML.
- **Cosa fa Claude:**
  1. Genera il quiz come **pagina HTML** con le domande del Giorno 4 e la **logica dei bucket** già dentro: in base alle risposte, ogni contatto viene assegnato al suo gruppo.
  2. Crea le **pagine risultato**, una per bucket, ognuna con il messaggio e la CTA giusti per quel gruppo.
  3. Collega il salvataggio: il contatto arriva su **Supabase (M09) con il suo bucket** scritto in una colonna, così sai sempre chi è cosa.
  4. Aggancia le **email per bucket** via **Brevo (M05):** ogni gruppo riceve la sequenza pensata per lui, in automatico.
  5. Pubblica il quiz **come la landing** (Passo 3) e verifica il giro completo con un contatto di prova per ogni bucket.
- **Cosa fa il cliente:** conferma la pubblicazione, poi fa il test: compila il quiz una volta per ogni bucket e controlla di ricevere l'email giusta.

### Survey ASK (Giorno 2 e Giorno 6)
Stessa strada anche per le survey del metodo ASK (`references/metodo-ask.md`):
- **Cosa fa Claude:** genera la survey come **pagina HTML** con le domande del metodo, salva le risposte su **Supabase (M09)** e la **pubblica lui** come al Passo 3.
- **Cosa fa il cliente:** clicca "pubblica" quando serve la conferma e fa un invio di prova per verificare che le risposte arrivino.
- **Alternativa guidata (solo se la preferisci):** **Tally.so** — form gratuito senza codice. Claude ti detta domanda per domanda cosa incollare ("ora sei su Tally, clicca +, incolla questo") e collega le notifiche. Usala solo se vuoi ritoccare le domande da solo, senza passare da Claude.

## Passo 5 — Checklist pre-lancio (spuntala TUTTA prima di mandare traffico)
- [ ] **Mobile:** apri la pagina dal telefono — testo leggibile, form facile da compilare, bottone grande
- [ ] **Velocità:** carica in meno di ~3 secondi (immagini leggere; Claude le ottimizza)
- [ ] **Privacy/cookie:** informativa privacy linkata + banner cookie se usi pixel/tag (obbligatorio in UE); disclaimer dal Giorno 6 (`output/06-disclaimer.md`)
- [ ] **Pixel Meta installato** (M13) — verifica con Pixel Helper che scatti l'evento Lead
- [ ] **Tag Google conversione installato** sulla thank-you page (M14)
- [ ] **Test invio form:** compila tu stesso con un'email di prova → controlla che il contatto arrivi in Brevo/Supabase e che parta l'email di benvenuto
- [ ] **CTA chiara e unica:** un solo obiettivo per pagina, nessun link che porta via
- **Cosa fa Claude:** esegue con te la checklist punto per punto e non dà l'ok finché il test del form non è andato a buon fine (regola: prova, riprova, poi conferma).

## Errori tipici (evitali)
- **Pubblicare senza testare il form:** rischi di mandare traffico (a pagamento!) a una pagina che non salva i contatti. Testa SEMPRE prima.
- **Pagina piena di distrazioni:** menu, link social, "chi siamo"… tolgono clic al form. Una landing ha un obiettivo solo.
- **Dimenticare i pixel:** senza, le campagne (M13/M14) sono cieche.
- **Solo desktop:** la maggior parte arriva da telefono; se è scomoda su mobile, perdi la metà dei contatti.
- **Netlify Drop senza account:** la pagina scade dopo ~1 ora e sparisce. Prima l'account, poi il drop (Passo 3a).

---

**Fatto? Aggiorna la memoria:** in CLAUDE.md spunta questo manuale in 'Stato Fase Operativa', aggiorna 'Punto di ripresa' al prossimo passo, e annota gli asset creati (account, domini, URL) in 'Asset operativi'.

**Collegamenti:** copy da `output/04-optin-page.md` e `output/06-sales-page.md` · quiz e survey dal metodo ASK (`references/metodo-ask.md`, Giorni 2/4/6) · form → Brevo (**M05**) e/o Supabase (**M09**) · pixel Meta (**M13**) e tag Google (**M14**) · dominio su Cloudflare (**M01**). I lead raccolti si vedono nella dashboard (**M10**).
