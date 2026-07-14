# PRODUZIONE FILE REALI — dal .md al deliverable finito

Come trasformare i deliverable in file pronti, in base agli strumenti disponibili nella sessione dell'utente. Leggi questo file prima di produrre slide, brochure, PDF o deck.

> ⭐ **REGOLA CARDINE: il file finito è OBBLIGATORIO.** Il cliente compra deliverable pronti da usare, non appunti. Il `.md` da solo è ammesso **SOLO** se in questa sessione non è disponibile NESSUNO strumento di produzione (né skill file né connettori). In quel caso: (1) **lo dichiari al cliente** con parole semplici ("oggi hai il testo pronto e approvato; il file grafico lo produciamo appena colleghi Canva o riapri la sessione con la creazione file"); (2) lo annoti come **Debito di formato** in `output/00-stato-progetto.md` E in `CLAUDE.md` (quale file manca e in che formato andava prodotto); (3) **lo colmi appena possibile**, alla prima sessione con gli strumenti giusti — prima di produrre cose nuove.

## 1) Rileva gli strumenti disponibili

Il check andrebbe già fatto a inizio percorso e annotato in `CLAUDE.md` → "Strumenti disponibili" (vedi Apertura standard in SKILL.md). Qui verifica cosa hai davvero in QUESTA sessione e usa lo strumento migliore che c'è:
- **Skill di produzione documenti** (nomi esatti da invocare se presenti): **`pptx`** (slide/deck PowerPoint, con note relatore) · **`pdf`** (brochure, lead magnet, one-pager) · **`docx`** (script, brand brief) · **`xlsx`** (fogli/calcoli) · **`canvas-design`** (poster/grafica curata in .png/.pdf, quando serve più cura estetica di un pptx base).
- **Connettore Canva:** deck e brochure direttamente nell'account Canva dell'utente (spesso il risultato più "bello" per un non-designer).
- **Connettore Adobe:** Express/PDF per grafiche e documenti.
- **Nessuno strumento grafico:** SOLO in questo caso è ammesso consegnare il .md da solo. Dillo chiaramente al cliente ("oggi hai il testo pronto; il file grafico lo produciamo appena colleghi Canva"), annota il **Debito di formato** in `output/00-stato-progetto.md` e in `CLAUDE.md` (quale file, in che formato andava) e colmalo appena uno strumento è disponibile. Nel frattempo aggiungi 2 righe pratiche su come trasformarlo (es. "incolla in Canva → Presentazione, un blocco per slide") e, con gentilezza, suggerisci di collegare Canva — senza farne un ostacolo tecnico.

Se un connettore utile NON è collegato ma migliorerebbe il risultato (es. Canva per la brochure), dillo all'utente: può collegarlo dalle impostazioni e riprendere.

## 2) Mappa deliverable → formato ideale

| Deliverable | Formato ideale | Fallback (solo se strumenti assenti, da dichiarare) |
|---|---|---|
| Slide webinar (Giorno 5) | .pptx oppure deck Canva (poi scaricato in .pptx) | .md outline |
| Brochure / one-pager / kit fiera (Giorno 6) | .pdf oppure Canva | .md |
| Lead magnet / report gratuito (Giorno 4) | .pdf o .docx | .md |
| Brand brief (Giorno 3) | .pdf o .docx | .md |
| Optin / sales page (Giorni 4-6) | .html brandizzato | copy da incollare nel page builder |
| Quiz-funnel (Giorno 4) | .html con domande + logica punteggio (sezione Quiz-funnel del Manuale 15) | copy pronto per un quiz builder (Tally/ScoreApp) |
| Pagine risultato del quiz (Giorno 4) | .html, una per bucket | .md |
| Survey (Giorni 2 e 6) | .html pubblicata da Claude (pattern Manuale 15) | Tally guidato campo per campo |
| Email (Giorno 4) | .md pronto da incollare nell'ESP | — |
| Script (webinar, VSL, call) | .md / .docx | — |

## 3) Regole di produzione

1. **Prima il contenuto, poi il file:** scrivi e fai approvare il .md, POI produci il file finito. Mai il contrario.
2. **Design:** pulito e leggibile. Usa i colori/logo del brand se il cliente li ha forniti (chiedili al Giorno 3 dentro il brand brief); altrimenti palette neutra professionale coerente col settore.
3. **Nomi file:** stesso prefisso del giorno, es. `output/05-slide-deck.pptx`, `output/06-brochure.pdf`, `output/06-one-pager-en.pdf`.
4. **Connettori esterni:** chiedi sempre conferma all'utente PRIMA di creare/modificare qualcosa nel suo account (Canva, Adobe, ecc.).
5. **Multilingua:** un file per lingua con suffisso (`-en`, `-de`, `-fr`…). Adatta contenuti e valute, non solo la lingua.
6. **Slide:** 1 idea per slide, testo minimo, note del relatore = lo script. Se produci .pptx, includi le note.
7. **Brochure/one-pager:** fronte = promessa+benefici+prova+CTA con QR (chiedi l'URL di destinazione, di solito l'optin page); retro = meccanismo in 3 step + casi + contatti.

## 4) Checklist qualità — prima di consegnare OGNI file finito

Passala TUTTA, con prove reali (aprire/scansionare), non a fiducia:
- [ ] Il file **si apre senza errori** (aprilo davvero prima di consegnarlo)
- [ ] **Colori, logo e font = brand brief** del Giorno 3 (non una palette inventata al momento)
- [ ] **Zero placeholder**: niente "lorem ipsum", "[NOME]", "TODO", immagini segnaposto
- [ ] I **.pptx hanno le note del relatore** compilate (lo script, non slide mute)
- [ ] Il **QR code è stato testato** e punta all'URL giusto (scansionalo o apri il link codificato)
- [ ] Le **versioni in altra lingua sono adattate, non tradotte**: valute, esempi, prove e riferimenti del mercato locale
