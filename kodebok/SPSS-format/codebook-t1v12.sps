* Encoding: UTF-8.
* SSHF ARRPROM T1 v1.2 (id 269985) - 24.11.2022 12:20

* Define Variable Properties.

*vis-info-retting-sletting_1.
VARIABLE LABELS vis-info-retting-sletting_1 'null'.
VALUE LABELS vis-info-retting-sletting_1
  ja 'Vis informasjon om lagring av dine svar og rett til innsyn, kopi, retting og sletting'.

*fnr.
VARIABLE LABELS fnr 'Hva er ditt fødselsnummer? (11 siffer)'.

*morsmaal.
VARIABLE LABELS morsmaal 'Hva er ditt morsmål?'.
VALUE LABELS morsmaal
  norsk 'Norsk'
  annet 'Annet'.

*morsmaal-tekst.
VARIABLE LABELS morsmaal-tekst 'Morsmål:'.

*sprakvansker.
VARIABLE LABELS sprakvansker 'Har du lesevansker, skrivevansker eller vansker med å forstå norsk?'.
VALUE LABELS sprakvansker
  ja 'Ja'
  nei 'Nei'.

*sivilstatus.
VARIABLE LABELS sivilstatus 'Sivilstatus'.
VALUE LABELS sivilstatus
  gift-partner 'Gift/samboer/registrert partner'
  enslig 'Enslig'.

*barn.
VARIABLE LABELS barn 'Hvor mange barn har du?'.

*antall-i-husholdning.
VARIABLE LABELS antall-i-husholdning 'Hvor mange personer (i tillegg til deg) bor hos deg nå/er i husholdningen?'.

*plager-verste.
VARIABLE LABELS plager-verste 'Dine smerter på det verste den siste uken.'.

*plager-beste.
VARIABLE LABELS plager-beste 'Dine smerter på det beste den siste uken.'.

*plager-gjsn.
VARIABLE LABELS plager-gjsn 'Gjennomsnittet den siste uken.'.

*plager-mer-enn-et-aar.
VARIABLE LABELS plager-mer-enn-et-aar 'Har du hatt smertene i ett år eller mer?'.
VALUE LABELS plager-mer-enn-et-aar
  ja 'Ja'
  nei 'Nei'.

*plager-mnd.
VARIABLE LABELS plager-mnd 'Hvor mange måneder har du hatt smertene?'.

*plager-aar.
VARIABLE LABELS plager-aar 'Hvor mange år har du hatt smertene?'.

*fibro-utmattelse.
VARIABLE LABELS fibro-utmattelse 'Utmattelse'.
VALUE LABELS fibro-utmattelse
  ingen '0'
  lett '1'
  moderat '2'
  alvorlig '3'.

*fibro-kognisjon.
VARIABLE LABELS fibro-kognisjon 'Problemer med å tenke og huske'.
VALUE LABELS fibro-kognisjon
  ingen '0'
  lett '1'
  moderat '2'
  alvorlig '3'.

*fibro-trett.
VARIABLE LABELS fibro-trett 'Våkner opp trett (ikke uthvilt)'.
VALUE LABELS fibro-trett
  ingen '0'
  lett '1'
  moderat '2'
  alvorlig '3'.

*fibro-mage.
VARIABLE LABELS fibro-mage 'Smerte/krampe nedre del av magen'.
VALUE LABELS fibro-mage
  ja 'Ja'
  nei 'Nei'.

*fibro-depresjon.
VARIABLE LABELS fibro-depresjon 'Depresjon'.
VALUE LABELS fibro-depresjon
  ja 'Ja'
  nei 'Nei'.

*fibro-hodepine.
VARIABLE LABELS fibro-hodepine 'Hodepine'.
VALUE LABELS fibro-hodepine
  ja 'Ja'
  nei 'Nei'.

*fibro-smerteomraader_1.
VARIABLE LABELS fibro-smerteomraader_1 'null'.
VALUE LABELS fibro-smerteomraader_1
  skulder-ven 'Skulder, venstre'
  skulder-hoy 'Skulder, høyre'
  hofte-ven 'Hofte, venstre'
  hofte-hoy 'Hofte, høyre'
  overarm-ven 'Overarm, venstre'
  overarm-hoy 'Overarm, høyre'
  underarm-ven 'Underarm, venstre'
  underarm-hoy 'Underarm, høyre'
  laar-kne-ven 'Lår/kne, venstre'
  laar-kne-hoy 'Lår/kne, høyre'
  legg-fot-ven 'Legg/fot, venstre'
  legg-fot-hoy 'Legg/fot, høyre'
  kjeve-ven 'Kjeve, venstre'
  kjeve-hoy 'Kjeve, høyre'
  bryst 'Brystkasse'
  mage 'Buk/mage'
  korsrygg 'Korsrygg'
  ovre-rygg 'Øvre del av ryggen'
  nakke-hals 'Nakke/hals'
  ingen 'Ingen smerter i noen av disse'.

*fibro-smerteomraader_2.
VARIABLE LABELS fibro-smerteomraader_2 'null'.
VALUE LABELS fibro-smerteomraader_2
  skulder-ven 'Skulder, venstre'
  skulder-hoy 'Skulder, høyre'
  hofte-ven 'Hofte, venstre'
  hofte-hoy 'Hofte, høyre'
  overarm-ven 'Overarm, venstre'
  overarm-hoy 'Overarm, høyre'
  underarm-ven 'Underarm, venstre'
  underarm-hoy 'Underarm, høyre'
  laar-kne-ven 'Lår/kne, venstre'
  laar-kne-hoy 'Lår/kne, høyre'
  legg-fot-ven 'Legg/fot, venstre'
  legg-fot-hoy 'Legg/fot, høyre'
  kjeve-ven 'Kjeve, venstre'
  kjeve-hoy 'Kjeve, høyre'
  bryst 'Brystkasse'
  mage 'Buk/mage'
  korsrygg 'Korsrygg'
  ovre-rygg 'Øvre del av ryggen'
  nakke-hals 'Nakke/hals'
  ingen 'Ingen smerter i noen av disse'.

*fibro-smerteomraader_3.
VARIABLE LABELS fibro-smerteomraader_3 'null'.
VALUE LABELS fibro-smerteomraader_3
  skulder-ven 'Skulder, venstre'
  skulder-hoy 'Skulder, høyre'
  hofte-ven 'Hofte, venstre'
  hofte-hoy 'Hofte, høyre'
  overarm-ven 'Overarm, venstre'
  overarm-hoy 'Overarm, høyre'
  underarm-ven 'Underarm, venstre'
  underarm-hoy 'Underarm, høyre'
  laar-kne-ven 'Lår/kne, venstre'
  laar-kne-hoy 'Lår/kne, høyre'
  legg-fot-ven 'Legg/fot, venstre'
  legg-fot-hoy 'Legg/fot, høyre'
  kjeve-ven 'Kjeve, venstre'
  kjeve-hoy 'Kjeve, høyre'
  bryst 'Brystkasse'
  mage 'Buk/mage'
  korsrygg 'Korsrygg'
  ovre-rygg 'Øvre del av ryggen'
  nakke-hals 'Nakke/hals'
  ingen 'Ingen smerter i noen av disse'.

*fibro-smerteomraader_4.
VARIABLE LABELS fibro-smerteomraader_4 'null'.
VALUE LABELS fibro-smerteomraader_4
  skulder-ven 'Skulder, venstre'
  skulder-hoy 'Skulder, høyre'
  hofte-ven 'Hofte, venstre'
  hofte-hoy 'Hofte, høyre'
  overarm-ven 'Overarm, venstre'
  overarm-hoy 'Overarm, høyre'
  underarm-ven 'Underarm, venstre'
  underarm-hoy 'Underarm, høyre'
  laar-kne-ven 'Lår/kne, venstre'
  laar-kne-hoy 'Lår/kne, høyre'
  legg-fot-ven 'Legg/fot, venstre'
  legg-fot-hoy 'Legg/fot, høyre'
  kjeve-ven 'Kjeve, venstre'
  kjeve-hoy 'Kjeve, høyre'
  bryst 'Brystkasse'
  mage 'Buk/mage'
  korsrygg 'Korsrygg'
  ovre-rygg 'Øvre del av ryggen'
  nakke-hals 'Nakke/hals'
  ingen 'Ingen smerter i noen av disse'.

*fibro-smerteomraader_5.
VARIABLE LABELS fibro-smerteomraader_5 'null'.
VALUE LABELS fibro-smerteomraader_5
  skulder-ven 'Skulder, venstre'
  skulder-hoy 'Skulder, høyre'
  hofte-ven 'Hofte, venstre'
  hofte-hoy 'Hofte, høyre'
  overarm-ven 'Overarm, venstre'
  overarm-hoy 'Overarm, høyre'
  underarm-ven 'Underarm, venstre'
  underarm-hoy 'Underarm, høyre'
  laar-kne-ven 'Lår/kne, venstre'
  laar-kne-hoy 'Lår/kne, høyre'
  legg-fot-ven 'Legg/fot, venstre'
  legg-fot-hoy 'Legg/fot, høyre'
  kjeve-ven 'Kjeve, venstre'
  kjeve-hoy 'Kjeve, høyre'
  bryst 'Brystkasse'
  mage 'Buk/mage'
  korsrygg 'Korsrygg'
  ovre-rygg 'Øvre del av ryggen'
  nakke-hals 'Nakke/hals'
  ingen 'Ingen smerter i noen av disse'.

*fibro-smerteomraader_6.
VARIABLE LABELS fibro-smerteomraader_6 'null'.
VALUE LABELS fibro-smerteomraader_6
  skulder-ven 'Skulder, venstre'
  skulder-hoy 'Skulder, høyre'
  hofte-ven 'Hofte, venstre'
  hofte-hoy 'Hofte, høyre'
  overarm-ven 'Overarm, venstre'
  overarm-hoy 'Overarm, høyre'
  underarm-ven 'Underarm, venstre'
  underarm-hoy 'Underarm, høyre'
  laar-kne-ven 'Lår/kne, venstre'
  laar-kne-hoy 'Lår/kne, høyre'
  legg-fot-ven 'Legg/fot, venstre'
  legg-fot-hoy 'Legg/fot, høyre'
  kjeve-ven 'Kjeve, venstre'
  kjeve-hoy 'Kjeve, høyre'
  bryst 'Brystkasse'
  mage 'Buk/mage'
  korsrygg 'Korsrygg'
  ovre-rygg 'Øvre del av ryggen'
  nakke-hals 'Nakke/hals'
  ingen 'Ingen smerter i noen av disse'.

*fibro-smerteomraader_7.
VARIABLE LABELS fibro-smerteomraader_7 'null'.
VALUE LABELS fibro-smerteomraader_7
  skulder-ven 'Skulder, venstre'
  skulder-hoy 'Skulder, høyre'
  hofte-ven 'Hofte, venstre'
  hofte-hoy 'Hofte, høyre'
  overarm-ven 'Overarm, venstre'
  overarm-hoy 'Overarm, høyre'
  underarm-ven 'Underarm, venstre'
  underarm-hoy 'Underarm, høyre'
  laar-kne-ven 'Lår/kne, venstre'
  laar-kne-hoy 'Lår/kne, høyre'
  legg-fot-ven 'Legg/fot, venstre'
  legg-fot-hoy 'Legg/fot, høyre'
  kjeve-ven 'Kjeve, venstre'
  kjeve-hoy 'Kjeve, høyre'
  bryst 'Brystkasse'
  mage 'Buk/mage'
  korsrygg 'Korsrygg'
  ovre-rygg 'Øvre del av ryggen'
  nakke-hals 'Nakke/hals'
  ingen 'Ingen smerter i noen av disse'.

*fibro-smerteomraader_8.
VARIABLE LABELS fibro-smerteomraader_8 'null'.
VALUE LABELS fibro-smerteomraader_8
  skulder-ven 'Skulder, venstre'
  skulder-hoy 'Skulder, høyre'
  hofte-ven 'Hofte, venstre'
  hofte-hoy 'Hofte, høyre'
  overarm-ven 'Overarm, venstre'
  overarm-hoy 'Overarm, høyre'
  underarm-ven 'Underarm, venstre'
  underarm-hoy 'Underarm, høyre'
  laar-kne-ven 'Lår/kne, venstre'
  laar-kne-hoy 'Lår/kne, høyre'
  legg-fot-ven 'Legg/fot, venstre'
  legg-fot-hoy 'Legg/fot, høyre'
  kjeve-ven 'Kjeve, venstre'
  kjeve-hoy 'Kjeve, høyre'
  bryst 'Brystkasse'
  mage 'Buk/mage'
  korsrygg 'Korsrygg'
  ovre-rygg 'Øvre del av ryggen'
  nakke-hals 'Nakke/hals'
  ingen 'Ingen smerter i noen av disse'.

*fibro-smerteomraader_9.
VARIABLE LABELS fibro-smerteomraader_9 'null'.
VALUE LABELS fibro-smerteomraader_9
  skulder-ven 'Skulder, venstre'
  skulder-hoy 'Skulder, høyre'
  hofte-ven 'Hofte, venstre'
  hofte-hoy 'Hofte, høyre'
  overarm-ven 'Overarm, venstre'
  overarm-hoy 'Overarm, høyre'
  underarm-ven 'Underarm, venstre'
  underarm-hoy 'Underarm, høyre'
  laar-kne-ven 'Lår/kne, venstre'
  laar-kne-hoy 'Lår/kne, høyre'
  legg-fot-ven 'Legg/fot, venstre'
  legg-fot-hoy 'Legg/fot, høyre'
  kjeve-ven 'Kjeve, venstre'
  kjeve-hoy 'Kjeve, høyre'
  bryst 'Brystkasse'
  mage 'Buk/mage'
  korsrygg 'Korsrygg'
  ovre-rygg 'Øvre del av ryggen'
  nakke-hals 'Nakke/hals'
  ingen 'Ingen smerter i noen av disse'.

*fibro-smerteomraader_10.
VARIABLE LABELS fibro-smerteomraader_10 'null'.
VALUE LABELS fibro-smerteomraader_10
  skulder-ven 'Skulder, venstre'
  skulder-hoy 'Skulder, høyre'
  hofte-ven 'Hofte, venstre'
  hofte-hoy 'Hofte, høyre'
  overarm-ven 'Overarm, venstre'
  overarm-hoy 'Overarm, høyre'
  underarm-ven 'Underarm, venstre'
  underarm-hoy 'Underarm, høyre'
  laar-kne-ven 'Lår/kne, venstre'
  laar-kne-hoy 'Lår/kne, høyre'
  legg-fot-ven 'Legg/fot, venstre'
  legg-fot-hoy 'Legg/fot, høyre'
  kjeve-ven 'Kjeve, venstre'
  kjeve-hoy 'Kjeve, høyre'
  bryst 'Brystkasse'
  mage 'Buk/mage'
  korsrygg 'Korsrygg'
  ovre-rygg 'Øvre del av ryggen'
  nakke-hals 'Nakke/hals'
  ingen 'Ingen smerter i noen av disse'.

*fibro-smerteomraader_11.
VARIABLE LABELS fibro-smerteomraader_11 'null'.
VALUE LABELS fibro-smerteomraader_11
  skulder-ven 'Skulder, venstre'
  skulder-hoy 'Skulder, høyre'
  hofte-ven 'Hofte, venstre'
  hofte-hoy 'Hofte, høyre'
  overarm-ven 'Overarm, venstre'
  overarm-hoy 'Overarm, høyre'
  underarm-ven 'Underarm, venstre'
  underarm-hoy 'Underarm, høyre'
  laar-kne-ven 'Lår/kne, venstre'
  laar-kne-hoy 'Lår/kne, høyre'
  legg-fot-ven 'Legg/fot, venstre'
  legg-fot-hoy 'Legg/fot, høyre'
  kjeve-ven 'Kjeve, venstre'
  kjeve-hoy 'Kjeve, høyre'
  bryst 'Brystkasse'
  mage 'Buk/mage'
  korsrygg 'Korsrygg'
  ovre-rygg 'Øvre del av ryggen'
  nakke-hals 'Nakke/hals'
  ingen 'Ingen smerter i noen av disse'.

*fibro-smerteomraader_12.
VARIABLE LABELS fibro-smerteomraader_12 'null'.
VALUE LABELS fibro-smerteomraader_12
  skulder-ven 'Skulder, venstre'
  skulder-hoy 'Skulder, høyre'
  hofte-ven 'Hofte, venstre'
  hofte-hoy 'Hofte, høyre'
  overarm-ven 'Overarm, venstre'
  overarm-hoy 'Overarm, høyre'
  underarm-ven 'Underarm, venstre'
  underarm-hoy 'Underarm, høyre'
  laar-kne-ven 'Lår/kne, venstre'
  laar-kne-hoy 'Lår/kne, høyre'
  legg-fot-ven 'Legg/fot, venstre'
  legg-fot-hoy 'Legg/fot, høyre'
  kjeve-ven 'Kjeve, venstre'
  kjeve-hoy 'Kjeve, høyre'
  bryst 'Brystkasse'
  mage 'Buk/mage'
  korsrygg 'Korsrygg'
  ovre-rygg 'Øvre del av ryggen'
  nakke-hals 'Nakke/hals'
  ingen 'Ingen smerter i noen av disse'.

*fibro-smerteomraader_13.
VARIABLE LABELS fibro-smerteomraader_13 'null'.
VALUE LABELS fibro-smerteomraader_13
  skulder-ven 'Skulder, venstre'
  skulder-hoy 'Skulder, høyre'
  hofte-ven 'Hofte, venstre'
  hofte-hoy 'Hofte, høyre'
  overarm-ven 'Overarm, venstre'
  overarm-hoy 'Overarm, høyre'
  underarm-ven 'Underarm, venstre'
  underarm-hoy 'Underarm, høyre'
  laar-kne-ven 'Lår/kne, venstre'
  laar-kne-hoy 'Lår/kne, høyre'
  legg-fot-ven 'Legg/fot, venstre'
  legg-fot-hoy 'Legg/fot, høyre'
  kjeve-ven 'Kjeve, venstre'
  kjeve-hoy 'Kjeve, høyre'
  bryst 'Brystkasse'
  mage 'Buk/mage'
  korsrygg 'Korsrygg'
  ovre-rygg 'Øvre del av ryggen'
  nakke-hals 'Nakke/hals'
  ingen 'Ingen smerter i noen av disse'.

*fibro-smerteomraader_14.
VARIABLE LABELS fibro-smerteomraader_14 'null'.
VALUE LABELS fibro-smerteomraader_14
  skulder-ven 'Skulder, venstre'
  skulder-hoy 'Skulder, høyre'
  hofte-ven 'Hofte, venstre'
  hofte-hoy 'Hofte, høyre'
  overarm-ven 'Overarm, venstre'
  overarm-hoy 'Overarm, høyre'
  underarm-ven 'Underarm, venstre'
  underarm-hoy 'Underarm, høyre'
  laar-kne-ven 'Lår/kne, venstre'
  laar-kne-hoy 'Lår/kne, høyre'
  legg-fot-ven 'Legg/fot, venstre'
  legg-fot-hoy 'Legg/fot, høyre'
  kjeve-ven 'Kjeve, venstre'
  kjeve-hoy 'Kjeve, høyre'
  bryst 'Brystkasse'
  mage 'Buk/mage'
  korsrygg 'Korsrygg'
  ovre-rygg 'Øvre del av ryggen'
  nakke-hals 'Nakke/hals'
  ingen 'Ingen smerter i noen av disse'.

*fibro-smerteomraader_15.
VARIABLE LABELS fibro-smerteomraader_15 'null'.
VALUE LABELS fibro-smerteomraader_15
  skulder-ven 'Skulder, venstre'
  skulder-hoy 'Skulder, høyre'
  hofte-ven 'Hofte, venstre'
  hofte-hoy 'Hofte, høyre'
  overarm-ven 'Overarm, venstre'
  overarm-hoy 'Overarm, høyre'
  underarm-ven 'Underarm, venstre'
  underarm-hoy 'Underarm, høyre'
  laar-kne-ven 'Lår/kne, venstre'
  laar-kne-hoy 'Lår/kne, høyre'
  legg-fot-ven 'Legg/fot, venstre'
  legg-fot-hoy 'Legg/fot, høyre'
  kjeve-ven 'Kjeve, venstre'
  kjeve-hoy 'Kjeve, høyre'
  bryst 'Brystkasse'
  mage 'Buk/mage'
  korsrygg 'Korsrygg'
  ovre-rygg 'Øvre del av ryggen'
  nakke-hals 'Nakke/hals'
  ingen 'Ingen smerter i noen av disse'.

*fibro-smerteomraader_16.
VARIABLE LABELS fibro-smerteomraader_16 'null'.
VALUE LABELS fibro-smerteomraader_16
  skulder-ven 'Skulder, venstre'
  skulder-hoy 'Skulder, høyre'
  hofte-ven 'Hofte, venstre'
  hofte-hoy 'Hofte, høyre'
  overarm-ven 'Overarm, venstre'
  overarm-hoy 'Overarm, høyre'
  underarm-ven 'Underarm, venstre'
  underarm-hoy 'Underarm, høyre'
  laar-kne-ven 'Lår/kne, venstre'
  laar-kne-hoy 'Lår/kne, høyre'
  legg-fot-ven 'Legg/fot, venstre'
  legg-fot-hoy 'Legg/fot, høyre'
  kjeve-ven 'Kjeve, venstre'
  kjeve-hoy 'Kjeve, høyre'
  bryst 'Brystkasse'
  mage 'Buk/mage'
  korsrygg 'Korsrygg'
  ovre-rygg 'Øvre del av ryggen'
  nakke-hals 'Nakke/hals'
  ingen 'Ingen smerter i noen av disse'.

*fibro-smerteomraader_17.
VARIABLE LABELS fibro-smerteomraader_17 'null'.
VALUE LABELS fibro-smerteomraader_17
  skulder-ven 'Skulder, venstre'
  skulder-hoy 'Skulder, høyre'
  hofte-ven 'Hofte, venstre'
  hofte-hoy 'Hofte, høyre'
  overarm-ven 'Overarm, venstre'
  overarm-hoy 'Overarm, høyre'
  underarm-ven 'Underarm, venstre'
  underarm-hoy 'Underarm, høyre'
  laar-kne-ven 'Lår/kne, venstre'
  laar-kne-hoy 'Lår/kne, høyre'
  legg-fot-ven 'Legg/fot, venstre'
  legg-fot-hoy 'Legg/fot, høyre'
  kjeve-ven 'Kjeve, venstre'
  kjeve-hoy 'Kjeve, høyre'
  bryst 'Brystkasse'
  mage 'Buk/mage'
  korsrygg 'Korsrygg'
  ovre-rygg 'Øvre del av ryggen'
  nakke-hals 'Nakke/hals'
  ingen 'Ingen smerter i noen av disse'.

*fibro-smerteomraader_18.
VARIABLE LABELS fibro-smerteomraader_18 'null'.
VALUE LABELS fibro-smerteomraader_18
  skulder-ven 'Skulder, venstre'
  skulder-hoy 'Skulder, høyre'
  hofte-ven 'Hofte, venstre'
  hofte-hoy 'Hofte, høyre'
  overarm-ven 'Overarm, venstre'
  overarm-hoy 'Overarm, høyre'
  underarm-ven 'Underarm, venstre'
  underarm-hoy 'Underarm, høyre'
  laar-kne-ven 'Lår/kne, venstre'
  laar-kne-hoy 'Lår/kne, høyre'
  legg-fot-ven 'Legg/fot, venstre'
  legg-fot-hoy 'Legg/fot, høyre'
  kjeve-ven 'Kjeve, venstre'
  kjeve-hoy 'Kjeve, høyre'
  bryst 'Brystkasse'
  mage 'Buk/mage'
  korsrygg 'Korsrygg'
  ovre-rygg 'Øvre del av ryggen'
  nakke-hals 'Nakke/hals'
  ingen 'Ingen smerter i noen av disse'.

*fibro-smerteomraader_19.
VARIABLE LABELS fibro-smerteomraader_19 'null'.
VALUE LABELS fibro-smerteomraader_19
  skulder-ven 'Skulder, venstre'
  skulder-hoy 'Skulder, høyre'
  hofte-ven 'Hofte, venstre'
  hofte-hoy 'Hofte, høyre'
  overarm-ven 'Overarm, venstre'
  overarm-hoy 'Overarm, høyre'
  underarm-ven 'Underarm, venstre'
  underarm-hoy 'Underarm, høyre'
  laar-kne-ven 'Lår/kne, venstre'
  laar-kne-hoy 'Lår/kne, høyre'
  legg-fot-ven 'Legg/fot, venstre'
  legg-fot-hoy 'Legg/fot, høyre'
  kjeve-ven 'Kjeve, venstre'
  kjeve-hoy 'Kjeve, høyre'
  bryst 'Brystkasse'
  mage 'Buk/mage'
  korsrygg 'Korsrygg'
  ovre-rygg 'Øvre del av ryggen'
  nakke-hals 'Nakke/hals'
  ingen 'Ingen smerter i noen av disse'.

*fibro-smerteomraader_20.
VARIABLE LABELS fibro-smerteomraader_20 'null'.
VALUE LABELS fibro-smerteomraader_20
  skulder-ven 'Skulder, venstre'
  skulder-hoy 'Skulder, høyre'
  hofte-ven 'Hofte, venstre'
  hofte-hoy 'Hofte, høyre'
  overarm-ven 'Overarm, venstre'
  overarm-hoy 'Overarm, høyre'
  underarm-ven 'Underarm, venstre'
  underarm-hoy 'Underarm, høyre'
  laar-kne-ven 'Lår/kne, venstre'
  laar-kne-hoy 'Lår/kne, høyre'
  legg-fot-ven 'Legg/fot, venstre'
  legg-fot-hoy 'Legg/fot, høyre'
  kjeve-ven 'Kjeve, venstre'
  kjeve-hoy 'Kjeve, høyre'
  bryst 'Brystkasse'
  mage 'Buk/mage'
  korsrygg 'Korsrygg'
  ovre-rygg 'Øvre del av ryggen'
  nakke-hals 'Nakke/hals'
  ingen 'Ingen smerter i noen av disse'.

*aarsak.
VARIABLE LABELS aarsak 'Hva tror du er årsak til plagene dine?'.

*skadelig.
VARIABLE LABELS skadelig 'Det kan være skadelig for en person med min tilstand å være fysisk aktiv.'.

*farlig.
VARIABLE LABELS farlig 'Smertene jeg kjenner må bety at noe farlig skjer i kroppen min.'.

*kroppen-skadet.
VARIABLE LABELS kroppen-skadet 'Smerter betyr alltid at kroppen er skadet.'.

*unngaa-vondt.
VARIABLE LABELS unngaa-vondt 'Jeg forsøker å unngå bevegelser som gjør vondt.'.

*tro-paa-bedring.
VARIABLE LABELS tro-paa-bedring 'Jeg har tro på bedring av plagene mine.'.

*fryktelig.
VARIABLE LABELS fryktelig 'Smertene er fryktelig og jeg føler at de overvelder meg'.
VALUE LABELS fryktelig
  0 'Aldri'
  1 'Litt'
  2 'I moderat grad'
  3 'I stor grad'
  4 'Hele tiden'.

*forverring.
VARIABLE LABELS forverring 'Jeg blir redd for at smertene skal bli verre'.
VALUE LABELS forverring
  0 'Aldri'
  1 'Litt'
  2 'I moderat grad'
  3 'I stor grad'
  4 'Hele tiden'.

*ikke-ut-av-hodet.
VARIABLE LABELS ikke-ut-av-hodet 'Der virker som jeg ikke klarer å få smertene ut av hodet'.
VALUE LABELS ikke-ut-av-hodet
  0 'Aldri'
  1 'Litt'
  2 'I moderat grad'
  3 'I stor grad'
  4 'Hele tiden'.

*hjelpeloshet.
VARIABLE LABELS hjelpeloshet 'Det er ingenting jeg kan gjøre for å redusere smertenes intensitet'.
VALUE LABELS hjelpeloshet
  0 'Aldri'
  1 'Litt'
  2 'I moderat grad'
  3 'I stor grad'
  4 'Hele tiden'.

*tidligere-behandling_1.
VARIABLE LABELS tidligere-behandling_1 'Har du forsøkt noen annen behandling før du ble henvist hit?'.
VALUE LABELS tidligere-behandling_1
  fysio-trening 'Trening hos fysioterapeut'
  fysio-passiv 'Passiv behandling hos fysioterapeut (massasje, varmepakning e.l)'
  manuell 'Manuellterapi'
  psykomot 'Psykomotorisk fysioterapi'
  kiro 'Kiropraktor'
  osteo 'Osteopat'
  aku 'Akupunktur'
  dogn 'Døgnrehabilitering'
  injeksjoner 'Injeksjoner'
  operasjon 'Operasjon'
  medikamenter 'Medikamenter'
  annet 'Annet (spesifiser under)'.

*tidligere-behandling_2.
VARIABLE LABELS tidligere-behandling_2 'Har du forsøkt noen annen behandling før du ble henvist hit?'.
VALUE LABELS tidligere-behandling_2
  fysio-trening 'Trening hos fysioterapeut'
  fysio-passiv 'Passiv behandling hos fysioterapeut (massasje, varmepakning e.l)'
  manuell 'Manuellterapi'
  psykomot 'Psykomotorisk fysioterapi'
  kiro 'Kiropraktor'
  osteo 'Osteopat'
  aku 'Akupunktur'
  dogn 'Døgnrehabilitering'
  injeksjoner 'Injeksjoner'
  operasjon 'Operasjon'
  medikamenter 'Medikamenter'
  annet 'Annet (spesifiser under)'.

*tidligere-behandling_3.
VARIABLE LABELS tidligere-behandling_3 'Har du forsøkt noen annen behandling før du ble henvist hit?'.
VALUE LABELS tidligere-behandling_3
  fysio-trening 'Trening hos fysioterapeut'
  fysio-passiv 'Passiv behandling hos fysioterapeut (massasje, varmepakning e.l)'
  manuell 'Manuellterapi'
  psykomot 'Psykomotorisk fysioterapi'
  kiro 'Kiropraktor'
  osteo 'Osteopat'
  aku 'Akupunktur'
  dogn 'Døgnrehabilitering'
  injeksjoner 'Injeksjoner'
  operasjon 'Operasjon'
  medikamenter 'Medikamenter'
  annet 'Annet (spesifiser under)'.

*tidligere-behandling_4.
VARIABLE LABELS tidligere-behandling_4 'Har du forsøkt noen annen behandling før du ble henvist hit?'.
VALUE LABELS tidligere-behandling_4
  fysio-trening 'Trening hos fysioterapeut'
  fysio-passiv 'Passiv behandling hos fysioterapeut (massasje, varmepakning e.l)'
  manuell 'Manuellterapi'
  psykomot 'Psykomotorisk fysioterapi'
  kiro 'Kiropraktor'
  osteo 'Osteopat'
  aku 'Akupunktur'
  dogn 'Døgnrehabilitering'
  injeksjoner 'Injeksjoner'
  operasjon 'Operasjon'
  medikamenter 'Medikamenter'
  annet 'Annet (spesifiser under)'.

*tidligere-behandling_5.
VARIABLE LABELS tidligere-behandling_5 'Har du forsøkt noen annen behandling før du ble henvist hit?'.
VALUE LABELS tidligere-behandling_5
  fysio-trening 'Trening hos fysioterapeut'
  fysio-passiv 'Passiv behandling hos fysioterapeut (massasje, varmepakning e.l)'
  manuell 'Manuellterapi'
  psykomot 'Psykomotorisk fysioterapi'
  kiro 'Kiropraktor'
  osteo 'Osteopat'
  aku 'Akupunktur'
  dogn 'Døgnrehabilitering'
  injeksjoner 'Injeksjoner'
  operasjon 'Operasjon'
  medikamenter 'Medikamenter'
  annet 'Annet (spesifiser under)'.

*tidligere-behandling_6.
VARIABLE LABELS tidligere-behandling_6 'Har du forsøkt noen annen behandling før du ble henvist hit?'.
VALUE LABELS tidligere-behandling_6
  fysio-trening 'Trening hos fysioterapeut'
  fysio-passiv 'Passiv behandling hos fysioterapeut (massasje, varmepakning e.l)'
  manuell 'Manuellterapi'
  psykomot 'Psykomotorisk fysioterapi'
  kiro 'Kiropraktor'
  osteo 'Osteopat'
  aku 'Akupunktur'
  dogn 'Døgnrehabilitering'
  injeksjoner 'Injeksjoner'
  operasjon 'Operasjon'
  medikamenter 'Medikamenter'
  annet 'Annet (spesifiser under)'.

*tidligere-behandling_7.
VARIABLE LABELS tidligere-behandling_7 'Har du forsøkt noen annen behandling før du ble henvist hit?'.
VALUE LABELS tidligere-behandling_7
  fysio-trening 'Trening hos fysioterapeut'
  fysio-passiv 'Passiv behandling hos fysioterapeut (massasje, varmepakning e.l)'
  manuell 'Manuellterapi'
  psykomot 'Psykomotorisk fysioterapi'
  kiro 'Kiropraktor'
  osteo 'Osteopat'
  aku 'Akupunktur'
  dogn 'Døgnrehabilitering'
  injeksjoner 'Injeksjoner'
  operasjon 'Operasjon'
  medikamenter 'Medikamenter'
  annet 'Annet (spesifiser under)'.

*tidligere-behandling_8.
VARIABLE LABELS tidligere-behandling_8 'Har du forsøkt noen annen behandling før du ble henvist hit?'.
VALUE LABELS tidligere-behandling_8
  fysio-trening 'Trening hos fysioterapeut'
  fysio-passiv 'Passiv behandling hos fysioterapeut (massasje, varmepakning e.l)'
  manuell 'Manuellterapi'
  psykomot 'Psykomotorisk fysioterapi'
  kiro 'Kiropraktor'
  osteo 'Osteopat'
  aku 'Akupunktur'
  dogn 'Døgnrehabilitering'
  injeksjoner 'Injeksjoner'
  operasjon 'Operasjon'
  medikamenter 'Medikamenter'
  annet 'Annet (spesifiser under)'.

*tidligere-behandling_9.
VARIABLE LABELS tidligere-behandling_9 'Har du forsøkt noen annen behandling før du ble henvist hit?'.
VALUE LABELS tidligere-behandling_9
  fysio-trening 'Trening hos fysioterapeut'
  fysio-passiv 'Passiv behandling hos fysioterapeut (massasje, varmepakning e.l)'
  manuell 'Manuellterapi'
  psykomot 'Psykomotorisk fysioterapi'
  kiro 'Kiropraktor'
  osteo 'Osteopat'
  aku 'Akupunktur'
  dogn 'Døgnrehabilitering'
  injeksjoner 'Injeksjoner'
  operasjon 'Operasjon'
  medikamenter 'Medikamenter'
  annet 'Annet (spesifiser under)'.

*tidligere-behandling_10.
VARIABLE LABELS tidligere-behandling_10 'Har du forsøkt noen annen behandling før du ble henvist hit?'.
VALUE LABELS tidligere-behandling_10
  fysio-trening 'Trening hos fysioterapeut'
  fysio-passiv 'Passiv behandling hos fysioterapeut (massasje, varmepakning e.l)'
  manuell 'Manuellterapi'
  psykomot 'Psykomotorisk fysioterapi'
  kiro 'Kiropraktor'
  osteo 'Osteopat'
  aku 'Akupunktur'
  dogn 'Døgnrehabilitering'
  injeksjoner 'Injeksjoner'
  operasjon 'Operasjon'
  medikamenter 'Medikamenter'
  annet 'Annet (spesifiser under)'.

*tidligere-behandling_11.
VARIABLE LABELS tidligere-behandling_11 'Har du forsøkt noen annen behandling før du ble henvist hit?'.
VALUE LABELS tidligere-behandling_11
  fysio-trening 'Trening hos fysioterapeut'
  fysio-passiv 'Passiv behandling hos fysioterapeut (massasje, varmepakning e.l)'
  manuell 'Manuellterapi'
  psykomot 'Psykomotorisk fysioterapi'
  kiro 'Kiropraktor'
  osteo 'Osteopat'
  aku 'Akupunktur'
  dogn 'Døgnrehabilitering'
  injeksjoner 'Injeksjoner'
  operasjon 'Operasjon'
  medikamenter 'Medikamenter'
  annet 'Annet (spesifiser under)'.

*tidligere-behandling_12.
VARIABLE LABELS tidligere-behandling_12 'Har du forsøkt noen annen behandling før du ble henvist hit?'.
VALUE LABELS tidligere-behandling_12
  fysio-trening 'Trening hos fysioterapeut'
  fysio-passiv 'Passiv behandling hos fysioterapeut (massasje, varmepakning e.l)'
  manuell 'Manuellterapi'
  psykomot 'Psykomotorisk fysioterapi'
  kiro 'Kiropraktor'
  osteo 'Osteopat'
  aku 'Akupunktur'
  dogn 'Døgnrehabilitering'
  injeksjoner 'Injeksjoner'
  operasjon 'Operasjon'
  medikamenter 'Medikamenter'
  annet 'Annet (spesifiser under)'.

*annen-tidligere-beh.
VARIABLE LABELS annen-tidligere-beh 'Beskriv annen tidligere behandling'.

*utdannelse.
VARIABLE LABELS utdannelse 'Hva er den høyeste utdannelsen du har fullført?'.
VALUE LABELS utdannelse
  ikke-grunnskole 'Ikke fullført 7 - 10-årig grunnskole/folkeskole'
  grunnskole '7 - 10-årig grunnskole/folkeskole'
  vgs 'Videregående skole'
  fagbrev 'Videregående skole med fagbrev'
  hoyere-under-4ar 'Høyskole eller universitet, mindre enn 4 år'
  hoyere-4ar-og-over 'Høyskole eller universitet, 4 år eller mer'.

*tid-i-arbeidslivet.
VARIABLE LABELS tid-i-arbeidslivet 'Hvor mange år har du vært i arbeidslivet tilsammen?'.
VALUE LABELS tid-i-arbeidslivet
  1 '1 år eller mindre'
  2-5 '2 - 5 år'
  6-10 '6 - 10 år'
  11-20 '11 - 20 år'
  mer-enn-20 'Mer enn 20 år'.

*arbeidsforhold.
VARIABLE LABELS arbeidsforhold 'Har du for tiden et arbeidsforhold?'.
VALUE LABELS arbeidsforhold
  ja 'Ja'
  nei 'Nei'.

*trivsel-jobb.
VARIABLE LABELS trivsel-jobb 'Trives du på jobben?'.
VALUE LABELS trivsel-jobb
  veldig-godt 'Veldig godt'
  godt 'Godt'
  verken-eller 'Verken godt eller dårlig'
  daarlig 'Dårlig'
  veldig-daarlig 'Veldig dårlig'.

*yrke-fritekst.
VARIABLE LABELS yrke-fritekst 'Vennligst beskriv jobben du har i dag eller den siste jobben du hadde (for eksempel &#34;hjelpepleier på sykehjem&#34; eller &#34;tømrer i eget firma&#34;).'.

*stillingsprosent.
VARIABLE LABELS stillingsprosent 'Hvor stor stillingsprosent har du i jobben din?'.

*sektor_1.
VARIABLE LABELS sektor_1 'Hvilken type virksomhet(er) arbeider du i?'.
VALUE LABELS sektor_1
  privat 'Privat sektor'
  offentlig 'Offentlig sektor'
  selvstendig 'Selvstendig næringsdrivende'
  usikker 'Vet ikke/usikker'.

*sektor_2.
VARIABLE LABELS sektor_2 'Hvilken type virksomhet(er) arbeider du i?'.
VALUE LABELS sektor_2
  privat 'Privat sektor'
  offentlig 'Offentlig sektor'
  selvstendig 'Selvstendig næringsdrivende'
  usikker 'Vet ikke/usikker'.

*sektor_3.
VARIABLE LABELS sektor_3 'Hvilken type virksomhet(er) arbeider du i?'.
VALUE LABELS sektor_3
  privat 'Privat sektor'
  offentlig 'Offentlig sektor'
  selvstendig 'Selvstendig næringsdrivende'
  usikker 'Vet ikke/usikker'.

*sektor_4.
VARIABLE LABELS sektor_4 'Hvilken type virksomhet(er) arbeider du i?'.
VALUE LABELS sektor_4
  privat 'Privat sektor'
  offentlig 'Offentlig sektor'
  selvstendig 'Selvstendig næringsdrivende'
  usikker 'Vet ikke/usikker'.

*sm-aap.
VARIABLE LABELS sm-aap 'Er du sykemeldt eller mottar du arbeidsavklaringspenger?'.
VALUE LABELS sm-aap
  nei 'Nei, jeg er ikke sykemeldt og mottar ikke arbeidsavklaringspenger'
  delvis-sm 'Ja, delvis sykemeldt'
  fullt-sm 'Ja, fullt sykemeldt'
  aap 'Mottar arbeidsavklaringspenger'.

*prosent-sykemeldt.
VARIABLE LABELS prosent-sykemeldt 'Hvor mange prosent av din stilling er du sykemeldt?'.

*fare-sykemelding.
VARIABLE LABELS fare-sykemelding 'Står du i fare for å bli sykemeldt?'.

*fare-mer-sykemeldt.
VARIABLE LABELS fare-mer-sykemeldt 'Står du i fare for å bli mer sykemeldt enn du er i dag?'.

*oppfolgingsplan.
VARIABLE LABELS oppfolgingsplan 'Har du utarbeidet oppfølgingsplan sammen med din arbeidsgiver?'.
VALUE LABELS oppfolgingsplan
  ja 'Ja'
  nei 'Nei'.

*aktivitetsplan.
VARIABLE LABELS aktivitetsplan 'Har du utarbeidet aktivitetsplan sammen med din NAV-veileder?'.
VALUE LABELS aktivitetsplan
  ja 'Ja'
  nei 'Nei'.

*avtalt-i-oppfolgingsplan.
VARIABLE LABELS avtalt-i-oppfolgingsplan 'Hva er avtalt i oppfølgingsplanen med din arbeidsgiver?'.

*avtalt-i-aktivitetsplan.
VARIABLE LABELS avtalt-i-aktivitetsplan 'Hva er avtalt i aktivitetsplanen med NAV?'.

*aarsak-sm-app.
VARIABLE LABELS aarsak-sm-app 'Hva er årsak til at du er sykemeldt/mottar arbeidsavklaringspenger?'.

*samarbeid-nav.
VARIABLE LABELS samarbeid-nav 'Hvordan opplever du samarbeidet med NAV?'.
VALUE LABELS samarbeid-nav
  v-bra 'Veldig bra'
  bra 'Bra'
  middels 'Middels'
  daarlig 'Dårlig'
  v-daarlig 'Veldig dårlig'
  ikke-kontakt 'Jeg har ikke kontakt med NAV'.

*tidl-tiltak.
VARIABLE LABELS tidl-tiltak 'Har du tidligere deltatt i tiltak for å avklare din arbeidsevne?'.
VALUE LABELS tidl-tiltak
  ja 'Ja'
  nei 'Nei'.

*rapport-avklaring.
VARIABLE LABELS rapport-avklaring 'Foreligger det rapport(er) derfra?'.
VALUE LABELS rapport-avklaring
  ja 'Ja'
  nei 'Nei'.

*ytelser_1.
VARIABLE LABELS ytelser_1 'Mottar du noen av disse ytelsene? (kan velge flere)'.
VALUE LABELS ytelser_1
  sykepenger 'Sykepenger (fra arbeidsgiver eller NAV)'
  aap 'Arbeidsavklaringspenger (AAP)'
  ufor 'Uføretrygd'
  dagpenger 'Dagpenger ved arbeidsledighet'
  sosialhjelp 'Sosialstønad/sosialhjelp'
  tult 'Tidsubegrenset lønnstilskudd (TULT)'
  nei 'Nei, jeg mottar ingen av disse ytelsene'
  usikker 'Vet ikke/usikker'.

*ytelser_2.
VARIABLE LABELS ytelser_2 'Mottar du noen av disse ytelsene? (kan velge flere)'.
VALUE LABELS ytelser_2
  sykepenger 'Sykepenger (fra arbeidsgiver eller NAV)'
  aap 'Arbeidsavklaringspenger (AAP)'
  ufor 'Uføretrygd'
  dagpenger 'Dagpenger ved arbeidsledighet'
  sosialhjelp 'Sosialstønad/sosialhjelp'
  tult 'Tidsubegrenset lønnstilskudd (TULT)'
  nei 'Nei, jeg mottar ingen av disse ytelsene'
  usikker 'Vet ikke/usikker'.

*ytelser_3.
VARIABLE LABELS ytelser_3 'Mottar du noen av disse ytelsene? (kan velge flere)'.
VALUE LABELS ytelser_3
  sykepenger 'Sykepenger (fra arbeidsgiver eller NAV)'
  aap 'Arbeidsavklaringspenger (AAP)'
  ufor 'Uføretrygd'
  dagpenger 'Dagpenger ved arbeidsledighet'
  sosialhjelp 'Sosialstønad/sosialhjelp'
  tult 'Tidsubegrenset lønnstilskudd (TULT)'
  nei 'Nei, jeg mottar ingen av disse ytelsene'
  usikker 'Vet ikke/usikker'.

*ytelser_4.
VARIABLE LABELS ytelser_4 'Mottar du noen av disse ytelsene? (kan velge flere)'.
VALUE LABELS ytelser_4
  sykepenger 'Sykepenger (fra arbeidsgiver eller NAV)'
  aap 'Arbeidsavklaringspenger (AAP)'
  ufor 'Uføretrygd'
  dagpenger 'Dagpenger ved arbeidsledighet'
  sosialhjelp 'Sosialstønad/sosialhjelp'
  tult 'Tidsubegrenset lønnstilskudd (TULT)'
  nei 'Nei, jeg mottar ingen av disse ytelsene'
  usikker 'Vet ikke/usikker'.

*ytelser_5.
VARIABLE LABELS ytelser_5 'Mottar du noen av disse ytelsene? (kan velge flere)'.
VALUE LABELS ytelser_5
  sykepenger 'Sykepenger (fra arbeidsgiver eller NAV)'
  aap 'Arbeidsavklaringspenger (AAP)'
  ufor 'Uføretrygd'
  dagpenger 'Dagpenger ved arbeidsledighet'
  sosialhjelp 'Sosialstønad/sosialhjelp'
  tult 'Tidsubegrenset lønnstilskudd (TULT)'
  nei 'Nei, jeg mottar ingen av disse ytelsene'
  usikker 'Vet ikke/usikker'.

*ytelser_6.
VARIABLE LABELS ytelser_6 'Mottar du noen av disse ytelsene? (kan velge flere)'.
VALUE LABELS ytelser_6
  sykepenger 'Sykepenger (fra arbeidsgiver eller NAV)'
  aap 'Arbeidsavklaringspenger (AAP)'
  ufor 'Uføretrygd'
  dagpenger 'Dagpenger ved arbeidsledighet'
  sosialhjelp 'Sosialstønad/sosialhjelp'
  tult 'Tidsubegrenset lønnstilskudd (TULT)'
  nei 'Nei, jeg mottar ingen av disse ytelsene'
  usikker 'Vet ikke/usikker'.

*ytelser_7.
VARIABLE LABELS ytelser_7 'Mottar du noen av disse ytelsene? (kan velge flere)'.
VALUE LABELS ytelser_7
  sykepenger 'Sykepenger (fra arbeidsgiver eller NAV)'
  aap 'Arbeidsavklaringspenger (AAP)'
  ufor 'Uføretrygd'
  dagpenger 'Dagpenger ved arbeidsledighet'
  sosialhjelp 'Sosialstønad/sosialhjelp'
  tult 'Tidsubegrenset lønnstilskudd (TULT)'
  nei 'Nei, jeg mottar ingen av disse ytelsene'
  usikker 'Vet ikke/usikker'.

*ytelser_8.
VARIABLE LABELS ytelser_8 'Mottar du noen av disse ytelsene? (kan velge flere)'.
VALUE LABELS ytelser_8
  sykepenger 'Sykepenger (fra arbeidsgiver eller NAV)'
  aap 'Arbeidsavklaringspenger (AAP)'
  ufor 'Uføretrygd'
  dagpenger 'Dagpenger ved arbeidsledighet'
  sosialhjelp 'Sosialstønad/sosialhjelp'
  tult 'Tidsubegrenset lønnstilskudd (TULT)'
  nei 'Nei, jeg mottar ingen av disse ytelsene'
  usikker 'Vet ikke/usikker'.

*varighet-sm-siste-ar.
VARIABLE LABELS varighet-sm-siste-ar 'Hvor lenge har du tilsammen vært helt eller delvis sykemeldt de siste 12 månedene?'.
VALUE LABELS varighet-sm-siste-ar
  0 'Jeg har ikke vært sykemeldt siste år'
  mindre-to-uker 'Mindre enn 2 uker'
  2-8-uker 'Mellom 2 og 8 uker'
  9-uker-6-mnd 'Mellom 9 uker og 6 måneder'
  7-12-mnd 'Mellom 7 og 12 måneder'
  usikker 'Vet ikke/usikker'.

*okonomi.
VARIABLE LABELS okonomi 'Er du bekymret for økonomien din?'.
VALUE LABELS okonomi
  god 'Ikke bekymret'
  middels 'Litt bekymret'
  daarlig 'Ganske bekymret'
  sv-daarlig 'Veldig bekymret'.

*sokt-ufor.
VARIABLE LABELS sokt-ufor 'Har du søkt eller planlegger du å søke om uføretrygd?'.
VALUE LABELS sokt-ufor
  ja 'Ja'
  nei 'Nei'.

*erstatningssak.
VARIABLE LABELS erstatningssak 'Har du en uavklart eller pågående forsikrings/erstatningssak knyttet til plagene dine?'.
VALUE LABELS erstatningssak
  ja 'Ja'
  nei 'Nei'.

*estimat-rtw.
VARIABLE LABELS estimat-rtw 'Hvor lang tid tror du at det tar før du er tilbake i arbeid?'.
VALUE LABELS estimat-rtw
  under-2-uker 'Umiddelbart eller i løpet av 2 uker'
  innen-1-mnd 'Innen 1 måned'
  innen-2-mnd 'Innen 2 måneder'
  innen-3-mnd 'Innen 3 måneder'
  innen-6-mnd 'Innen 6 måneder'
  innen-1-ar 'Innen 1 år'
  mer-enn-1-ar 'Mer enn 1 år'
  aldri 'Aldri'
  er-i-jobb 'Jeg er i jobb'.

*onsket-jobb.
VARIABLE LABELS onsket-jobb 'Hvilken jobb håper du å komme tilbake til?'.
VALUE LABELS onsket-jobb
  sist-jobb 'Jobben jeg har i dag/jobben jeg hadde sist'
  ny-jobb-samme-yrke 'Ny jobb innen samme yrke'
  ny-jobb-annet-yrke 'Ny jobb innen annet yrke'.

*arbeidsevne-fysiske-krav.
VARIABLE LABELS arbeidsevne-fysiske-krav 'Hvordan vurderer du din egen arbeidsevne sett opp mot fysisk krav i jobben (gå, stå, løfte etc)?'.
VALUE LABELS arbeidsevne-fysiske-krav
  meget-darlig 'Meget dårlig'
  ganske-darlig 'Ganske dårlig'
  middels 'Middels'
  ganske-god 'Ganske god'
  meget-god 'Meget god'.

*arbeidsevne-mentale-krav.
VARIABLE LABELS arbeidsevne-mentale-krav 'Hvordan vurderer du din egen arbeidsevne sett opp mot mentale krav i jobben (konsentrasjon, planlegging etc)?'.
VALUE LABELS arbeidsevne-mentale-krav
  meget-darlig 'Meget dårlig'
  ganske-darlig 'Ganske dårlig'
  middels 'Middels'
  ganske-god 'Ganske god'
  meget-god 'Meget god'.

*arbeidsevne-sosiale-krav.
VARIABLE LABELS arbeidsevne-sosiale-krav 'Hvordan vurderer du din egen arbeidsevne sett opp mot sosiale krav i jobben (for eksempel delta i felleslunsj eller på sosiale samlinger)?'.
VALUE LABELS arbeidsevne-sosiale-krav
  meget-darlig 'Meget dårlig'
  ganske-darlig 'Ganske dårlig'
  middels 'Middels'
  ganske-god 'Ganske god'
  meget-god 'Meget god'.

*arbeidsevne-ny-jobb.
VARIABLE LABELS arbeidsevne-ny-jobb 'Hvordan vurderer du din helhetlige arbeidsevne i en eventuell ny jobb?'.

*arbeidsevne-aktuell-jobb.
VARIABLE LABELS arbeidsevne-aktuell-jobb 'Hvordan vurderer du din  helhetlige arbeidsevne i jobben du har/jobben du hadde sist?'.

*endringer-jobbsit-rtw.
VARIABLE LABELS endringer-jobbsit-rtw 'Hvis du ser bort i fra endring i smertesituasjonen, hvilke endringer i arbeidssituasjonen skal til for at du med dine plager gradvis kan gå tilbake i jobb?'.

*livskvalitet.
VARIABLE LABELS livskvalitet 'Hvordan opplever du din livskvalitet?'.

*mosjon.
VARIABLE LABELS mosjon 'Tenk på de siste to ukene. Hvor ofte mosjonerte du i minst 30 minutter sammenhengende?'.
VALUE LABELS mosjon
  en-eller-sjeldnere 'Sjeldnere enn 1 gang per uke eller aldri'
  en-til-to '1 til 2 ganger per uke'
  tre-til-fire '3 -4 ganger per uke'
  fem-eller-mer '5 ganger per uke eller mer'.

*hoyde.
VARIABLE LABELS hoyde 'Høyde (cm)'.

*vekt.
VARIABLE LABELS vekt 'Vekt (kg)'.

*kosthold.
VARIABLE LABELS kosthold 'Hvordan vurderer du ditt eget kosthold?'.
VALUE LABELS kosthold
  veldig-godt 'Veldig godt'
  godt 'Godt'
  daarlig 'Dårlig'
  veldig-daarlig 'Veldig dårlig'.

*maaltidsrytme.
VARIABLE LABELS maaltidsrytme 'Hvordan vurderer du din måltidsrytme?'.
VALUE LABELS maaltidsrytme
  veldig-god 'Veldig god'
  god 'God'
  daarlig 'Dårlig'
  veldig-daarlig 'Veldig dårlig'.

*vurderer-endre_1.
VARIABLE LABELS vurderer-endre_1 'Vurderer du å endre på ditt kosthold eller din måltidsrytme?'.
VALUE LABELS vurderer-endre_1
  kosthold 'Jeg vurderer å endre på kosthold'
  maaltidsrytme 'Jeg vurderer å endre på måltidsrytme'.

*vurderer-endre_2.
VARIABLE LABELS vurderer-endre_2 'Vurderer du å endre på ditt kosthold eller din måltidsrytme?'.
VALUE LABELS vurderer-endre_2
  kosthold 'Jeg vurderer å endre på kosthold'
  maaltidsrytme 'Jeg vurderer å endre på måltidsrytme'.

*scl-plutselig-frykt.
VARIABLE LABELS scl-plutselig-frykt 'Plutselig frykt uten grunn'.
VALUE LABELS scl-plutselig-frykt
  ikke-plaget 'Ikke plaget'
  litt-plaget 'Litt plaget'
  ganske-mye 'Ganske mye'
  veldig-mye 'Veldig mye'.

*scl-redd.
VARIABLE LABELS scl-redd 'Føler deg redd eller engstelig'.
VALUE LABELS scl-redd
  ikke-plaget 'Ikke plaget'
  litt-plaget 'Litt plaget'
  ganske-mye 'Ganske mye'
  veldig-mye 'Veldig mye'.

*scl-matt.
VARIABLE LABELS scl-matt 'Matthet eller svimmelhet'.
VALUE LABELS scl-matt
  ikke-plaget 'Ikke plaget'
  litt-plaget 'Litt plaget'
  ganske-mye 'Ganske mye'
  veldig-mye 'Veldig mye'.

*scl-anspent.
VARIABLE LABELS scl-anspent 'Føler deg anspent eller oppjaget'.
VALUE LABELS scl-anspent
  ikke-plaget 'Ikke plaget'
  litt-plaget 'Litt plaget'
  ganske-mye 'Ganske mye'
  veldig-mye 'Veldig mye'.

*scl-kandre.
VARIABLE LABELS scl-kandre 'Lett for å klandre deg selv'.
VALUE LABELS scl-kandre
  ikke-plaget 'Ikke plaget'
  litt-plaget 'Litt plaget'
  ganske-mye 'Ganske mye'
  veldig-mye 'Veldig mye'.

*scl-sovn.
VARIABLE LABELS scl-sovn 'Søvnproblemer'.
VALUE LABELS scl-sovn
  ikke-plaget 'Ikke plaget'
  litt-plaget 'Litt plaget'
  ganske-mye 'Ganske mye'
  veldig-mye 'Veldig mye'.

*scl-unyttig.
VARIABLE LABELS scl-unyttig 'Følelse av å være unyttig, lite verdt'.
VALUE LABELS scl-unyttig
  ikke-plaget 'Ikke plaget'
  litt-plaget 'Litt plaget'
  ganske-mye 'Ganske mye'
  veldig-mye 'Veldig mye'.

*scl-nedtrykt.
VARIABLE LABELS scl-nedtrykt 'Nedtrykt, tungsindig eller trist'.
VALUE LABELS scl-nedtrykt
  ikke-plaget 'Ikke plaget'
  litt-plaget 'Litt plaget'
  ganske-mye 'Ganske mye'
  veldig-mye 'Veldig mye'.

*scl-slit.
VARIABLE LABELS scl-slit 'Følelse av at alt er et slit'.
VALUE LABELS scl-slit
  ikke-plaget 'Ikke plaget'
  litt-plaget 'Litt plaget'
  ganske-mye 'Ganske mye'
  veldig-mye 'Veldig mye'.

*scl-haaplos.
VARIABLE LABELS scl-haaplos 'Følelse av håpløshet med tanke på fremtiden'.
VALUE LABELS scl-haaplos
  ikke-plaget 'Ikke plaget'
  litt-plaget 'Litt plaget'
  ganske-mye 'Ganske mye'
  veldig-mye 'Veldig mye'.

*isi-innsov.
VARIABLE LABELS isi-innsov 'Problemer med å sovne'.
VALUE LABELS isi-innsov
  ingen 'Ingen'
  milde 'Milde'
  moderate 'Moderate'
  alvorlige 'Alvorlige'
  veldig-alvorlige 'Veldig alvorlige'.

*isi-oppvaak.
VARIABLE LABELS isi-oppvaak 'Problemer med at du våkner opp i løpet av natten'.
VALUE LABELS isi-oppvaak
  ingen 'Ingen'
  milde 'Milde'
  moderate 'Moderate'
  alvorlige 'Alvorlige'
  veldig-alvorlige 'Veldig alvorlige'.

*isi-for-tidlig-oppvaak.
VARIABLE LABELS isi-for-tidlig-oppvaak 'Våkner for tidlig'.
VALUE LABELS isi-for-tidlig-oppvaak
  ingen 'Ingen'
  milde 'Milde'
  moderate 'Moderate'
  alvorlige 'Alvorlige'
  veldig-alvorlige 'Veldig alvorlige'.

*isi-tilfreds.
VARIABLE LABELS isi-tilfreds 'Hvor tilfreds/utilfreds er du med ditt nåværende søvnmønster?'.
VALUE LABELS isi-tilfreds
  veldig-tilfreds 'Veldig tilfreds'
  tilfreds 'Tilfreds'
  verken 'Verken tilfreds eller utilfreds'
  utilfreds 'Utilfreds'
  veldig-utilfreds 'Veldig utilfreds'.

*isi-fungering.
VARIABLE LABELS isi-fungering 'I hvor stor grad synes du søvnproblemene dine REDUSERER funksjonsevnen din til daglig ?'.
VALUE LABELS isi-fungering
  ingen 'Ikke i det hele tatt'
  litt 'Litt'
  noe 'Noe'
  ganske-mye 'Ganske mye'
  veldig-mye 'Veldig mye'.

*isi-merkbart.
VARIABLE LABELS isi-merkbart 'Hvor MERKBARE tror du at søvnproblemene dine er for andre?'.
VALUE LABELS isi-merkbart
  ingen 'Ikke merkbare i det hele tatt'
  litt 'Litt merkbare'
  noe 'Noe merkbare'
  ganske 'Ganske merkbare'
  veldig 'Veldig merkbare'.

*isi-bekymret.
VARIABLE LABELS isi-bekymret 'I hvor stor grad BEKYMRER/plager dine søvnproblemer deg?'.
VALUE LABELS isi-bekymret
  ingen 'Ikke i det hele tatt'
  litt 'Litt'
  noe 'Noe'
  mye 'Mye'
  veldig-mye 'Veldig mye'.

*viktigste-problem.
VARIABLE LABELS viktigste-problem 'Hvilket problem er viktigst for deg å få hjelp med?'.

*type-hjelp.
VARIABLE LABELS type-hjelp 'Hva slags type hjelp/oppfølging tror du vil være nyttig for deg nå?'.

*tilbakemeldinger.
VARIABLE LABELS tilbakemeldinger 'Mine tilbakemeldinger'.

EXECUTE.