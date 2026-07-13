# MANUALE 21 — Slide e video animati in codice (Remotion)

**Perché:** Remotion crea **video e slide animate scrivendo codice** (React). Il vantaggio enorme: **Claude scrive il codice per te**, quindi ottieni video professionali (slide che si animano, testi che compaiono, dati che si muovono, sottotitoli) senza saper montare e senza software costosi. Perfetto per VSL animati, caroselli, spot, video-slide del webinar.

**Costo:** Remotion è gratuito per singoli e piccole realtà (licenza gratuita sotto una certa soglia di team/fatturato — verifica su remotion.dev). Serve un computer con Node.js. Nessun canone software.

**Quando usarlo (e quando no):**
- **Usa Remotion se** vuoi video-slide animati, VSL con testo/dati in movimento, tanti video simili con lo stesso stile (Claude cambia solo il testo), sottotitoli automatici.
- **Non serve se** ti basta un deck statico (usa PowerPoint/Canva, Giorno 5) o registri te stesso a webcam (M17). Remotion è per l'**animazione** e la **produzione in serie**.

## Cosa fa Claude / cosa fa il cliente
- **Cosa fa Claude:** scrive l'intero progetto Remotion — le "scene" (slide animate) partendo dal tuo `output/05-slide-deck.md` o dallo script VSL, con i tuoi colori/logo (dal brand brief, Giorno 3). Ti consegna i file pronti e i comandi da lanciare.
- **Cosa fa il cliente:** installa Node.js (una volta), lancia due comandi che Claude ti detta, e ottieni l'anteprima nel browser + il video MP4 finale.

## Passo 1 — Prepara il computer (una volta sola)
- **Cosa fa il cliente:** installa **Node.js** da nodejs.org (versione LTS). Su Mac/Windows è un installer classico "avanti-avanti".
- **Cosa fa Claude:** ti guida se qualcosa non va (M18 troubleshooting).

## Passo 2 — Claude genera il progetto
- **Cosa fa Claude:** in Cowork/Code crea la cartella Remotion con le scene animate dal tuo deck/VSL: titoli che entrano, bullet che compaiono uno alla volta, numeri che salgono, logo, musica/voce (l'MP3 di ElevenLabs, M20), sottotitoli sincronizzati.

## Passo 3 — Anteprima e resa
- **Cosa fa il cliente:** lancia i comandi che Claude ti dà:
  - `npm install` (una volta, scarica il necessario)
  - `npm start` → si apre l'anteprima nel browser: guardi il video e chiedi a Claude le modifiche ("più lento", "cambia colore", "aggiungi una slide")
  - `npm run build` (o il comando render) → esce l'**MP4** finale
- **Cosa fa Claude:** applica le tue modifiche cambiando il codice, finché il video ti piace (prova e riprova).

## Passo 4 — Dove usarlo
- **VSL animato** sulla sales page (M15) · **video-slide del webinar** (M17) · **caroselli/spot** per ADV (M13) · **Reel** 9:16 con sottotitoli (fondamentali su social).
- **Voce + avatar:** combina Remotion (animazione+slide) con la voce ElevenLabs (M20) e, se vuoi il volto, l'avatar HeyGen (M19).

## Avvisi
- Serve un computer che regge il rendering (i video lunghi richiedono qualche minuto di elaborazione). Per volumi alti, il rendering può girare su un servizio cloud — Claude te lo imposta se serve, ma per iniziare il tuo computer basta.
- Rispetta la licenza Remotion (gratuita sotto le soglie indicate; sopra, licenza aziendale): Claude te lo ricorda in base alla tua situazione.

## Errori tipici
- **Video troppo carico:** troppe animazioni distraggono. Un'idea per scena (come le slide, Giorno 5).
- **Testo illeggibile su mobile:** caratteri grandi, alto contrasto (la maggior parte guarda da telefono).
- **Dimenticare i sottotitoli:** su Reel/TikTok molti guardano senza audio. Chiedi sempre a Claude i sottotitoli.

---

**Collegamenti:** slide da `output/05-slide-deck.md` · voce da **M20** (ElevenLabs) · avatar da **M19** (HeyGen) · video usati in sales page (**M15**), ADV (**M13**), webinar (**M17**). Per deck statici resta su PowerPoint/Canva (Giorno 5).
