# MANUALE 20 — Voce AI (ElevenLabs)

**Perché:** la voce è ciò che rende credibile un video o un audio. Con ElevenLabs trasformi qualsiasi script in una **voce naturale** (o nella **tua voce clonata**) per VSL, video con avatar (M19), spot, messaggi audio, persino podcast — in italiano e nelle lingue dei tuoi mercati.

**Costo:** piano gratuito per provare (pochi minuti/mese); piani da ~5$/mese in su a "caratteri" o "minuti" (verifica su elevenlabs.io). La clonazione della voce è nei piani a pagamento.

**Regola d'oro:** una voce naturale e ben ritmata batte una voce "perfetta" ma piatta. Fai fare a Claude la punteggiatura giusta: è lì che nasce il ritmo.

## Cosa puoi fare
- **Voce narrante** per VSL e video (da libreria, molto naturali).
- **Clona la tua voce:** carichi qualche minuto di tuo audio pulito → ElevenLabs crea la tua voce digitale. Da quel momento ogni script "parla con la tua voce", anche in altre lingue.
- **Doppiaggio multilingua:** stesso messaggio in EN/DE per i clienti esteri, con la stessa voce.
- **Audio brevi:** messaggi WhatsApp vocali, intro podcast, risponditori.

## Passo 1 — Account e scelta voce
- **Cosa fa il cliente:** registrati su **elevenlabs.io**. Scegli una **voce dalla libreria** (filtra per lingua, genere, tono) oppure crea la **tua voce clonata** (Voice Cloning): carica 1-3 minuti di tuo audio registrato bene (stanza silenziosa, buon microfono — vedi M17). Consenso richiesto: cloni solo la tua voce o di persone consenzienti.
- **Cosa fa Claude:** ti consiglia voce da libreria (veloce) o clonata (massima fiducia e riconoscibilità del brand).

## Passo 2 — Lo script pronto al parlato
- **Cosa fa Claude:** prende lo script (`output/05-vsl.md` ecc.) e lo prepara per la sintesi: frasi brevi, virgole nei punti di respiro, niente sigle da sillabare, indicazioni di enfasi. Un testo ben punteggiato = voce dal ritmo umano.

## Passo 3 — Genera l'audio
- **Cosa fa il cliente:** incolla il testo, scegli la voce, regola **stabilità** (più bassa = più espressiva/variabile; più alta = più costante) e **somiglianza**; genera e ascolta; scarica l'MP3.
- **Cosa fa Claude:** ti suggerisce le impostazioni per il tuo tipo di contenuto (VSL commerciale vs narrazione calma) e ti fa iterare finché suona bene.

## Passo 4 — Come usarla (2 vie)
- **Dentro HeyGen (M19):** colleghi ElevenLabs a HeyGen → l'avatar parla con questa voce. È il flusso consigliato per i video.
- **Audio da solo:** l'MP3 lo metti su un video montato con Remotion (M21), su una registrazione schermo, o come messaggio vocale.
- **API (avanzato):** per generare molti audio in automatico (es. messaggi personalizzati per lead), Claude scrive lo script che chiama l'API ElevenLabs.

## Avvisi e rischi
- **Consenso vocale:** clona SOLO la tua voce o di chi ha dato consenso esplicito. Clonare la voce di altri senza permesso è illecito.
- **Trasparenza:** per contenuti dove conta l'autenticità, valuta se dichiarare l'uso dell'AI.
- **Qualità dell'input:** una voce clonata è buona quanto l'audio che carichi. Registra bene la base (M17).

## Errori tipici
- **Stabilità sbagliata:** troppo alta = monotona, troppo bassa = incoerente. Trova il punto (Passo 3).
- **Testo non punteggiato:** senza virgole la voce corre. Fallo sistemare a Claude.
- **Clonare con audio scadente:** rumore/eco nella base = voce clonata mediocre.

---

**Collegamenti:** voce per gli avatar HeyGen (**M19**) · script da `output/05-vsl.md` e `output/06-adv.md` · audio nei video montati con Remotion (**M21**) e nella sales page (**M15**). Per registrare la base pulita, vedi **M17**.
