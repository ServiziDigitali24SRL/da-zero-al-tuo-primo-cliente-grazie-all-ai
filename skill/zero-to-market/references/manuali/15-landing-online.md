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
1. **Cosa fa il cliente:** vai su **app.netlify.com/drop**, trascina il file HTML nella finestra. Fatto: la pagina è online con un indirizzo tipo `nome-a-caso.netlify.app`.
2. Zero registrazione obbligatoria per provare; crea un account gratuito per tenerla stabile e cambiarle nome.
- La via più veloce in assoluto: dal file all'online in 30 secondi.

### (b) Connettore Netlify/Vercel — lo fa Claude
- **Se il connettore Netlify o Vercel è collegato** (Impostazioni → Connettori): Claude pubblica la pagina direttamente, con la tua conferma, e ti restituisce il link. Ideale per aggiornarla nel tempo senza toccare nulla.

### (c) Sito esistente / WordPress — incolla le sezioni
- Se hai già un sito: **Cosa fa Claude** ti prepara le sezioni (o lo shortcode/blocco HTML) da incollare in una nuova pagina del tuo WordPress/sito. Utile per tenere tutto sotto lo stesso dominio.

## Passo 4 — Dominio personalizzato (facoltativo ma consigliato)
Un indirizzo tuo (`vai.tuobrand.com`) è più professionale di `nome-a-caso.netlify.app`.
- **Cosa fa il cliente:** su **Cloudflare → DNS** (M01) aggiungi un record **CNAME** che punta all'indirizzo Netlify/Vercel (te lo indica la piattaforma). Nuvoletta arancione (proxy) o grigia secondo le istruzioni della piattaforma.
- **Cosa fa Claude:** ti detta il valore esatto del CNAME e verifica che la pagina risponda sul tuo dominio con HTTPS attivo.

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

---

**Collegamenti:** copy da `output/04-optin-page.md` e `output/06-sales-page.md` · form → Brevo (**M05**) e/o Supabase (**M09**) · pixel Meta (**M13**) e tag Google (**M14**) · dominio su Cloudflare (**M01**). I lead raccolti si vedono nella dashboard (**M10**).
