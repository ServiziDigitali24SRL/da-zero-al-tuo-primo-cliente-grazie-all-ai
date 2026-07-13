# MANUALE 18 — Quando qualcosa si blocca (troubleshooting)

**Perché:** prima o poi qualcosa non va come previsto — è normale. Questo manuale è il tuo pronto soccorso: trova il problema nella tabella, applica la soluzione. Se non basta, in fondo trovi le frasi pronte per farti aiutare da Claude e il contatto umano per l'emergenza.

**Regola d'oro:** un problema alla volta. Non cambiare dieci cose insieme: sistema, verifica, poi passa al prossimo.

---

## Problemi di avvio (repo, skill, memoria)

| Problema | Causa probabile | Soluzione |
|---|---|---|
| **Il clone della repo non parte** | Cowork/Code non ha capito il comando, o link errato | Ripeti il messaggio del QUICKSTART esatto; verifica che il link della repo sia completo e pubblico. In Cowork: "clona questa repo: [link] e leggi CLAUDE.md". |
| **La skill non si attiva** (in chat) | Il file `.skill` non è stato installato, o la richiesta è troppo generica | Verifica in Impostazioni → Skills che sia caricata. Poi chiedi qualcosa di concreto: "creami il marketing della mia azienda" (non solo "ciao"). |
| **Claude non riprende da dove eravamo** | Cartella sbagliata, oppure `CLAUDE.md` non letto | Assicurati di aprire la STESSA cartella delle sessioni precedenti. Di' a Claude: "leggi CLAUDE.md e output/00-stato-progetto.md e riprendi". In chat semplice: ricarica quei due file all'inizio. |
| **Claude "ha dimenticato" la mia azienda** | Stai in una chat nuova senza contesto | Lavora sempre nella cartella (Cowork/Code) o in un Progetto dedicato; incolla `CLAUDE.md` se serve. |
| **Ho raggiunto il limite del piano Claude** | Troppi messaggi/troppo lavoro in poco tempo | Aspetta il reset del limite, oppure valuta il piano superiore. Intanto Claude ha già salvato i file in `output/`: nulla è perso, riprendi dopo. |

## Problemi email (cold, warmup, consegna)

| Problema | Causa probabile | Soluzione |
|---|---|---|
| **Email in spam nonostante SPF/DKIM ok** | Warmup insufficiente, testo "spammoso", troppi link, volume alto | Rallenta gli invii (max 20-30/giorno/casella, M03); togli link e parole spam (M04); prosegui il warmup ancora 1-2 settimane; verifica il DMARC (M02). Testa su mail-tester.com. |
| **Warmup score basso in Instantly** | Casella troppo nuova, o già usata male | Lascia solo il warmup attivo (zero campagne) per altri 7-14 giorni; controlla che SPF/DKIM/DMARC siano verdi (M02); non forzare i volumi. |
| **Bounce alti (>3%)** | Lista non verificata o vecchia | FERMA la campagna. Verifica la lista (MillionVerifier, M12), tieni solo email valide, poi riparti. Bounce alti bruciano il dominio. |
| **Poche o zero risposte al cold** | Target sbagliato o messaggio debole | Cambia lista/segmento prima del testo (M12); poi prova un altro angolo (M04). Con <500 invii i numeri non dicono nulla: serve volume. |
| **Non ricevo le risposte** | Inoltro non configurato | Configura l'inoltro alla mail principale o controlla la Unibox di Instantly (M06). |

## Problemi landing, connettori, file

| Problema | Causa probabile | Soluzione |
|---|---|---|
| **Il form della landing non salva i contatti** | Form non collegato, o chiave errata | Rifai il test di invio (M15); verifica il collegamento a Brevo/Supabase; controlla che l'email di prova arrivi davvero. NON mandare traffico finché il test non passa. |
| **Un connettore non compare** | Non collegato, o non esiste per quel servizio | Impostazioni → Connettori → cerca e collega. Per Instantly/Migadu/Cloudflare/Brevo NON esiste connettore: si usano i manuali passo-passo (M01-M06). |
| **.pptx o PDF non generati** | Ambiente senza creazione file, o connettore assente | In chat semplice la produzione file è limitata: usa Cowork/Code. In alternativa Claude ti dà il .md e le istruzioni per Canva/Gamma (vedi `references/produzione-file.md`). |
| **La pagina non si apre sul mio dominio** | CNAME mancante o non propagato | Verifica il record CNAME su Cloudflare (M15/M01); la propagazione può richiedere qualche ora. |

## Problemi pagamenti e ads

| Problema | Causa probabile | Soluzione |
|---|---|---|
| **Il pagamento non arriva / non vedo l'incasso** | Account Stripe non attivato, o IBAN/verifica mancanti | Completa la verifica identità e l'IBAN su Stripe; controlla che il Payment Link sia "attivo" e testalo con un piccolo importo (M16). |
| **Vendo ma non parte l'email post-acquisto** | Automazione non collegata | Collega Stripe → Brevo/Supabase (webhook Make/Zapier, M16); all'inizio puoi aggiornare i clienti a mano. |
| **Le ads spendono senza contatti** | Pixel/tag non installato, o pubblico/keyword sbagliati | Verifica pixel Meta (M13) / tag Google (M14) sulla landing; controlla che l'evento Lead scatti; applica le kill rule. |
| **Le ads non vengono approvate** | Policy pubblicitaria (claim, immagini, testo) | Leggi il motivo del rifiuto, ammorbidisci i claim, richiedi la revisione; Claude ti riscrive la creatività conforme. |

---

## Come farti aiutare da Claude (frasi pronte)
Copia e incolla, sostituendo le parti tra parentesi. Claude ha tutti i manuali e i tuoi file: usalo come tecnico personale.

- **Diagnosi guidata:** *"Ho questo problema: [descrivi]. Leggi il manuale [Mxx] e i miei file in output/, dimmi la causa più probabile e guidami passo passo alla soluzione. Un passo alla volta."*
- **Verifica setup:** *"Controlla con me la checklist del manuale [Mxx]: fammi le domande una alla volta e dimmi cosa manca."*
- **Errore preciso:** *"Mi appare questo errore/messaggio: [incolla]. Cosa significa e come lo risolvo?"*
- **Numeri deludenti:** *"Ecco i miei numeri [incolla]. Leggendo [M13/M14/M03], dimmi cosa spengo, cosa spingo e cosa cambio."*
- **Prova e riprova:** *"Prima di dirmi che è a posto, guidami a testarlo davvero e verifica insieme a me che funzioni."*

## Se proprio non si sblocca — aiuto umano
Alcune cose (verifiche identità, problemi di account con provider esterni, situazioni fiscali) richiedono una mano umana. Non restare bloccato per giorni: chiedi supporto.
- **Qualunque settore:** Francesco Kei Tudini — SD24 · WhatsApp: https://wa.me/393793594491

---

**Collegamenti:** questo manuale copre i blocchi di tutti gli altri (M01-M17). Per il metodo e le sessioni, torna a `SKILL.md` e ai reference dei giorni.
