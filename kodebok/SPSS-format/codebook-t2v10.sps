* Encoding: UTF-8.
* SSHF ARRPROM T2 v1.0 (id 275961) - 24.11.2022 12:20

* Define Variable Properties.

*vis-info-retting-sletting_1.
VARIABLE LABELS vis-info-retting-sletting_1 'null'.
VALUE LABELS vis-info-retting-sletting_1
  ja 'Vis informasjon om lagring av dine svar og rett til innsyn, kopi, retting og sletting'.

*fnr.
VARIABLE LABELS fnr 'Hva er ditt fødselsnummer? (11 siffer)'.

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
VARIABLE LABELS fryktelig 'Smertene er fryktelige og jeg føler at de overvelder meg'.
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

*stillingsprosent.
VARIABLE LABELS stillingsprosent 'Hvor stor stillingsprosent har du i jobben din?'.

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

*samarbeid-nav.
VARIABLE LABELS samarbeid-nav 'Hvordan opplever du samarbeidet med NAV?'.
VALUE LABELS samarbeid-nav
  v-bra 'Veldig bra'
  bra 'Bra'
  middels 'Middels'
  daarlig 'Dårlig'
  v-daarlig 'Veldig dårlig'
  ikke-kontakt 'Jeg har ikke kontakt med NAV'.

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
VARIABLE LABELS arbeidsevne-ny-jobb 'Hvordan vurderer du din helhetlige arbeidsevne i en ny jobb?'.

*arbeidsevne-aktuell-jobb.
VARIABLE LABELS arbeidsevne-aktuell-jobb 'Hvordan vurderer du din helhetlige arbeidsevne i jobben du har/jobben du hadde sist?'.

*livskvalitet.
VARIABLE LABELS livskvalitet 'Hvordan opplever du din livskvalitet?'.

*mosjon.
VARIABLE LABELS mosjon 'Tenk på den siste uken. Hvor ofte mosjonerte du i minst 30 minutter sammenhengende?'.
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

*tilbakemeldinger.
VARIABLE LABELS tilbakemeldinger 'Mine tilbakemeldinger'.

EXECUTE.