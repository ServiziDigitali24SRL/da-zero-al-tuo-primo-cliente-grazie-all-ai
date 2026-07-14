# FASE VERSO IL PRIMO EURO — dal lancio al primo incasso

**Perché:** i materiali del kit e il setup tecnico NON sono il traguardo. Sono il motore. Il traguardo è **il primo pagamento incassato**: il momento in cui uno sconosciuto ha dato soldi veri all'azienda del cliente grazie al sistema costruito insieme. Questa fase copre il tratto più delicato di tutto il percorso: quello in cui il cliente ha fatto tutto "come da manuale" e adesso… aspetta. Se lo lasci solo qui, si scoraggia e molla a un passo dal risultato.

**Regola d'oro:** in questa fase **Claude guida, il cliente segue**. Il cliente non sa cosa chiedere — non deve saperlo. Sei TU che a ogni sessione leggi il Contatore, capisci a che gradino della scala siete, e proponi **LA prossima azione** (una sola). Mai aspettare che sia lui a chiedere "e adesso?".

**Il Contatore (definiscilo subito):** è una riga nel `CLAUDE.md` del progetto, sezione "Punto di ripresa" o dedicata, che segna il gradino raggiunto della scala qui sotto, con data e canale. Esempio: `Contatore: M2 — prima risposta (12/03, cold email)`. Se non esiste ancora, crealo alla prima sessione di questa fase. È lo stato di verità: si legge a inizio sessione, si aggiorna a ogni evento.

---

## 1. La scala dei traguardi (M0 → M6)

Sette gradini. Ognuno è un progresso VERO da celebrare (regola boomer 6: il senso di avanzamento è ciò che tiene agganciato il cliente). Per ogni gradino: cosa significa, cosa fai TU entro 24 ore, e cosa dici al cliente.

### M0 — Lancio fatto (campagne attive e/o cold partito)
- **Cosa significa:** il piano di lancio (`output/06-piano-lancio.md`) è arrivato in fondo: le inserzioni girano (M13/M14) e/o le prime cold email (email a freddo verso la lista) stanno partendo (M03-M04-M12).
- **Cosa fa Claude entro 24h:** verifica che tutto giri davvero — spesa delle campagne partita, email consegnate e non in spam (test verso una casella di prova), form della landing che salva in Supabase (M09), dashboard (M10) che mostra i numeri. Poi apre con il cliente il "calendario dell'attesa" (sezione 2) e aggiorna il Contatore a M0.
- **Cosa dice al cliente:** *"Il tuo reparto marketing è ACCESO. Da questo momento il sistema lavora anche mentre dormi. Ora ti spiego cosa succede nei prossimi giorni e cosa faremo insieme nel frattempo — niente attese a vuoto."*

### M1 — PRIMO LEAD arrivato
- **Cosa significa:** una persona vera ha lasciato i suoi contatti (un "lead" = un potenziale cliente che ha alzato la mano). Non è ancora una vendita, ma è la prova che il messaggio attira.
- **Cosa fa Claude entro 24h:** controlla il lead in Supabase/dashboard (chi è, da che canale), verifica che le email automatiche di benvenuto/nurturing (Giorno 4) siano partite davvero, e prepara già la scheda-lead (sezione 3, rito PRE) se il lead è caldo. Aggiorna il Contatore a M1.
- **Cosa dice al cliente:** *"È successo: il tuo PRIMO contatto. Uno sconosciuto ha visto il tuo messaggio e ti ha lasciato i suoi dati. Il sistema funziona. Si chiama [nome], arriva da [canale]. Ci pensa il sistema a scaldarlo — tu non devi fare niente, per ora."*

### M2 — PRIMA RISPOSTA / interazione vera
- **Cosa significa:** qualcuno ha risposto a una email, scritto su WhatsApp, compilato la candidatura, o fatto una domanda vera. Non un click: una persona che parla.
- **Cosa fa Claude entro 24h:** scrive la bozza di risposta (obiettivo: portare la conversazione verso la call, senza vendere per iscritto), aggiorna lo stato del lead. **Cosa fa il cliente:** legge la bozza, la approva e clicca "invia" dal suo account. Contatore a M2.
- **Cosa dice al cliente:** *"Un'altra prima volta: qualcuno ti ha RISPOSTO. Ti ho già preparato io la risposta — leggila, e se ti suona giusta premi invia. L'obiettivo non è convincerlo per iscritto: è portarlo a una chiacchierata."*

### M3 — PRIMA CALL FISSATA
- **Cosa significa:** c'è una data e un'ora in calendario con un potenziale cliente. Ora si prepara la partita vera.
- **Cosa fa Claude entro 24h:** genera la scheda-lead di 1 pagina (rito PRE, sezione 3), ripassa con il cliente le 12 fasi dello script in 5 righe, e **propone lui l'allenamento**: minimo una simulazione completa prima della call vera (rito ALLENAMENTO). Contatore a M3.
- **Cosa dice al cliente:** *"Hai il tuo primo appuntamento di vendita! Niente ansia: arriverai preparato come non lo è nessun tuo concorrente. Ti ho fatto la scheda della persona che incontrerai, e prima della call facciamo una prova insieme — io faccio la sua parte, tu la tua. Quando vuoi, dimmi 'alleniamoci'."*

### M4 — PRIMA CALL FATTA
- **Cosa significa:** il cliente ha condotto la sua prima call di vendita. Comunque sia andata, è un traguardo: la maggior parte delle persone non ci arriva mai.
- **Cosa fa Claude entro 24h:** conduce il debrief (rito POST, sezione 3), aggiorna lo stato del lead, prepara l'eventuale follow-up (messaggio dopo la call: riepilogo + prossimo passo, mai "allora, ci hai pensato?" nudo). Contatore a M4.
- **Cosa dice al cliente (anche se non ha chiuso):** *"Hai fatto la tua PRIMA call di vendita. Questa esperienza vale oro: adesso analizziamola insieme cinque minuti, e la prossima sarà più facile. Com'è andata? A che punto dello script ti sei fermato?"*

### M5 — PRIMO SÌ
- **Cosa significa:** un potenziale cliente ha detto sì all'offerta. Attenzione: **un sì non è un incasso**. Un sì non incassato entro 24-48 ore si raffredda.
- **Cosa fa Claude entro 24h (idealmente entro minuti):** il Payment Link Stripe dell'offerta era già pronto (M16 Passo 5); se il sì è arrivato in call, la regola era mandarlo lì per lì e restare al telefono fino al pagamento. Se il pagamento non è ancora avvenuto, Claude scrive subito il messaggio di conferma con il link ("come concordato, ecco il link per bloccare il posto") e programma un gentile sollecito a 24h. Contatore a M5.
- **Cosa dice al cliente:** *"Ti ha detto SÌ! Ora chiudiamo il cerchio subito: il sì diventa reale solo quando il pagamento è fatto. Ecco il messaggio pronto con il link — mandalo ADESSO, non domani."*

### M6 — PRIMO EURO INCASSATO 🎉
- **Cosa significa:** i soldi sono arrivati. Il sistema costruito da zero ha prodotto il suo primo euro. È IL traguardo del percorso.
- **Cosa fa Claude entro 24h:** esegue TUTTA la Checklist del primo incasso (sezione 5), aggiorna il Contatore (`PRIMO EURO ✅ — data, canale, importo`) e celebra sul serio.
- **Cosa dice al cliente:** *"FATTO. Il tuo primo euro incassato con il sistema che abbiamo costruito insieme, partendo da zero. Fermati un attimo e goditelo: pochissimi imprenditori arrivano fin qui. E la parte bella è che quello che ha funzionato una volta si può ripetere — da domani lavoriamo per il secondo cliente, che arriva sempre più in fretta del primo."*

---

## 2. Il calendario dell'attesa (le 2-4 settimane di warmup e i primi giorni di campagne)

Tra M0 (o addirittura prima, durante il warmup delle caselle — M03) e i primi risultati passano giorni o settimane. **Il nemico è il vuoto**: il cliente che aspetta senza fare niente si convince che "non funziona" e molla. Ogni settimana ha i suoi compiti — brevi, 30-60 minuti al giorno al massimo, uno per volta.

**Settimana 1 (warmup appena partito):**
- **Contenuti social (M08):** Claude prepara i primi post IG/FB dal calendario contenuti del Giorno 6; il cliente approva, la pubblicazione va da sé o con un click.
- **Test della landing:** Claude guida il cliente a fare il percorso completo da visitatore — apre la pagina dal telefono, compila il form con la propria email, verifica che arrivino le email di benvenuto e che il lead compaia in Supabase (M09). Un difetto scoperto ora è un cliente non perso dopo.
- **Prima rifinitura lista lead (M12):** Claude passa la lista, toglie contatti dubbi, arricchisce i campi di personalizzazione delle cold email.
- **Primo ALLENAMENTO alla call (sezione 3):** la prima simulazione si fa ADESSO, a mente fredda, non la sera prima della prima call vera.

**Settimana 2:**
- Contenuti social: si continua col calendario (il muscolo si costruisce con la costanza).
- **Secondo roleplay**, stavolta con le obiezioni più dure emerse al Giorno 2.
- Controllo warmup (M03): Claude verifica che le caselle si stiano scaldando senza problemi (consegna, spam).
- Claude prepara in anticipo le survey di recupero e pivot (Giorno 6, Blocco F) così sono pronte all'uso.

**Settimane 3-4 (il warmup matura, le campagne ADV possono già girare):**
- Se le ADV sono attive: **controllo numeri quotidiano leggero + rito M10 settimanale** — spesa, contatti arrivati, costo per contatto. Kill rule del piano di lancio: un'inserzione che dopo 3 giorni costa il doppio del previsto si spegne e si sostituisce.
- Terzo roleplay se il cliente non si sente pronto (si è pronti quando arriva in fondo allo script senza guardarlo).
- Quando il warmup è maturo: **si preme il bottone del cold** (M03-M04) e si torna alla scala: obiettivo M1.

**Ogni settimana, sempre:** il rito dei numeri (M10) — si guardano insieme i numeri della dashboard, si sceglie UNA correzione, si fa UNA azione. Mai di più: la fretta di toccare tutto rovina i test.

---

## 3. I 3 riti della call di vendita

La call 1:1 è dove si incassa (script 12 fasi, `output/05-script-vendita-12-punti.md`). Tre riti, sempre.

### Rito PRE (prima di ogni call) — la scheda-lead
Claude genera una scheda di **1 pagina, non di più**:
- **Chi è:** nome, azienda, settore, da che canale arriva, cosa ha già visto (webinar? sales page? email?).
- **Le sue risposte alla candidatura** (o quanto sappiamo dalle conversazioni).
- **L'obiezione più probabile** (dalle obiezioni vere del suo segmento, Giorno 2) e come spezzarla.
- **L'obiettivo della call** (vendere la SLO? l'offerta principale? qualificare?) e il numero da fargli dichiarare (fase 5 dello script: mai proseguire senza un numero misurabile).

Sotto la scheda, **il ripasso delle 12 fasi in 5 righe**: apertura e direzione → motivazione, diagnosi e NUMERO attuale → target, emozioni e i "magici 3" → serietà, permesso e posizionamento (poi SILENZIO) → offerta inversa e prezzo (solo SÌ o NO, mai "ci penso", mai proporre rate).

### Rito ALLENAMENTO (roleplay) — obbligatorio prima della prima call vera
- **Come si attiva:** il cliente dice **"alleniamoci"** (e Claude glielo propone comunque a M3, senza aspettare).
- **Come funziona:** Claude interpreta il potenziale cliente — realistico, non morbido — usando le **obiezioni vere raccolte al Giorno 2** ("costa troppo", "devo parlarne col socio", "ho già provato e non ha funzionato"…). Il cliente conduce seguendo le 12 fasi. Claude esce dal personaggio solo alla fine, per il feedback: cosa ha funzionato, dove si è impantanato, UNA cosa da migliorare (non dieci).
- **Regola minima:** almeno **1 simulazione completa** (dall'apertura al prezzo) prima della prima call vera. Meglio due o tre, distribuite nel calendario dell'attesa.

### Rito POST (debrief, entro 24h dalla call)
Quattro domande, in ordine:
1. **Com'è andata?** (sfogo libero prima, analisi poi.)
2. **A che fase dello script ti sei fermato?** (Se salta sempre alla stessa fase — spesso la 5, il numero, o la 12, il prezzo — il prossimo roleplay si concentra lì.)
3. **Cosa ti ha risposto che non sapevi gestire?** Il classico è "ci penso": Claude prepara la risposta esatta per la prossima volta (il "ci penso" si gestisce IN call — "certo; di solito 'ci penso' vuol dire che c'è una domanda a cui non ho risposto: qual è?" — non con un'email il giorno dopo).
4. **Aggiornamento stato lead:** esito in dashboard/CLAUDE.md (chiuso sì / chiuso no / follow-up fissato) e Contatore aggiornato se c'è stato un gradino nuovo.

---

## 4. Quando qualcosa non si muove — soglie di allarme oneste

Le attese fanno parte del gioco; i blocchi no. Soglie realistiche e cosa si tocca (UNA cosa alla volta, poi si riosserva):

| Sintomo | Soglia di allarme | Cosa si tocca |
|---|---|---|
| Campagne ADV attive ma **zero lead** | 5-7 giorni di spesa vera (non 24 ore) | Angolo e creatività: si rilegge M13/M14, si prova l'angolo successivo di `06-adv.md`, si cambia l'aggancio dei primi 3 secondi |
| Cold partito ma **zero lead/aperture** | 7-10 giorni a regime pieno | Prima la lista (M12: contatti giusti? campi personalizzazione veri?), poi la consegna (in spam? → M18) |
| **Lead ma zero risposte** alle email | 2 settimane o ~50 lead entrati | Oggetto e copy (M04): oggetti nuovi in A/B; e parte la **survey di recupero** (`output/06-survey-recupero.md`) a chi ha visto e non si è mosso — le risposte diventano i prossimi angoli |
| **Risposte ma zero call fissate** | 5+ conversazioni senza appuntamento | Si riscrive il ponte alla call (M23): il passaggio da "mi interessa" a "fissiamo 30 minuti" è troppo lungo, vago o impegnativo |
| **Call ma zero sì** | 3+ call complete senza chiusura | Roleplay mirato sulle obiezioni dove si inceppa (rito POST, domanda 2) + revisione dell'offerta col Giorno 3: se il valore percepito non è ~10× il prezzo, il problema non è il venditore |
| Qualcosa di **tecnico** non va (form, email, pagamenti, pubblicazioni) | subito | M18 — Troubleshooting, caso per caso |

**Onestà obbligatoria col cliente:** se i numeri dicono che una cosa non funziona, si dice chiaro e si corregge — mai "dai, aspettiamo ancora" per non dargli una notizia scomoda. La fiducia si costruisce con la verità sui numeri.

---

## 5. Checklist del PRIMO INCASSO (quando M6 accade)

Nell'ordine, tutte — Claude le propone una alla volta:

1. **Verifica il pagamento su Stripe (M16):** importo giusto, valuta giusta, ricevuta automatica partita al cliente finale. **Cosa fa Claude:** guida dove guardare nel pannello Stripe. **Cosa fa il cliente:** apre Stripe e conferma con i suoi occhi.
2. **Fattura (M16, Passo 6):** il pagamento NON è la fattura. **Cosa fa Claude:** prepara il riepilogo per il commercialista (chi ha pagato, cosa, quanto, quando). **Cosa fa il cliente:** lo gira al commercialista ed emette la fattura come concordato con lui.
3. **Consegna e onboarding di ciò che è stato venduto:** il nuovo cliente deve sentire di aver fatto bene a pagare, entro poche ore. **Cosa fa Claude:** scrive l'email di benvenuto (cosa succede adesso, primi passi, chi contattare) e l'eventuale calendario di consegna. **Cosa fa il cliente:** approva e invia dal suo account.
4. **Parte la Pivot Survey** (`output/06-survey-pivot.md`): si chiede a chi HA comprato cosa cercava e cosa l'ha convinto — oro puro per i prossimi lanci. Claude prepara l'invito, il cliente lo invia.
5. **Testimonianza e referral (al momento giusto):** Claude scrive due messaggi pronti — la richiesta di testimonianza (da mandare quando il cliente finale ha avuto il primo risultato o la prima buona esperienza, non il giorno del pagamento) e la richiesta di referral ("conosci qualcuno come te a cui questo servirebbe?").
6. **Claude aggiorna `CLAUDE.md`:** Contatore = `PRIMO EURO ✅ — [data], [canale], [importo]`, più cosa ha funzionato in "Cosa abbiamo imparato". E **celebra il traguardo** col cliente, per esteso: questo momento va marcato, non liquidato.
7. **Si apre la modalità Reparto Marketing** (vedi SKILL.md): dal "primo euro" al reparto che lavora ogni settimana — contenuti, campagne, lead, call, incassi. Claude la propone LUI, come sempre: *"Il primo c'è. Ora facciamo in modo che non resti l'unico: da qui in poi lavoro per te come il tuo reparto marketing, ogni settimana."*

---

## 6. Regole ferree della fase

1. **Mai dichiarare "abbiamo finito" prima di M6.** Materiali pronti, setup completo, campagne attive: tutto bello, ma finché il Contatore non dice PRIMO EURO ✅ il lavoro non è finito. (È il gemello della regola ferrea 4: là il manifest dei file, qua il manifest dei soldi.)
2. **Ogni sessione di questa fase inizia così:** leggi il Contatore in `CLAUDE.md` → capisci il gradino → proponi **LA prossima azione, una sola**. Il cliente non deve mai chiedersi "e adesso?": la risposta gliela porti tu.
3. **Ogni evento aggiorna il Contatore.** Lead arrivato, risposta, call fissata, call fatta, sì, incasso: si scrive subito, con data e canale. Il Contatore è la memoria che permette a qualsiasi sessione futura di ripartire dal punto giusto.
4. **Il rito settimanale (M10) qui diventa: numeri → UNA correzione → UNA azione.** Si guardano i numeri della dashboard, si sceglie la correzione più promettente, si fa una sola azione conseguente. Poi si lascia lavorare il sistema fino alla settimana dopo.

---

**Fatto? Aggiorna la memoria:** in CLAUDE.md spunta questo manuale in "Stato Fase Operativa", aggiorna "Punto di ripresa" al prossimo passo, e annota gli asset creati (account, domini, URL) in "Asset operativi".

---

**Collegamenti:** piano di lancio e survey da `output/06-piano-lancio.md`, `06-survey-recupero.md`, `06-survey-pivot.md` (Giorno 6) · script call 12 fasi in `output/05-script-vendita-12-punti.md` e obiezioni vere dal Giorno 2 · offerta e prezzo dal Giorno 3 (`references/framework-offerta-12-punti.md` per il valore ancorato) · incasso e fattura con **M16** · campagne **M13/M14** · cold e copy **M03-M04-M12** · social **M08** · dashboard e rito dei numeri **M10** · fissare e condurre la call **M22** · ponte alla call/risposte **M23** · blocchi tecnici **M18**.
