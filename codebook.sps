* Encoding: UTF-8.
* SSHF ARR T0 (id 164602) - 08.11.2020 20:48

* Define Variable Properties.

*fnr.
VARIABLE LABELS fnr 'Hva er ditt fødselsnummer (11 siffer)?'.

*morsmal.
VARIABLE LABELS morsmal 'Ditt morsmål:'.

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
VARIABLE LABELS antall-i-husholdning 'Hvor mange (i tillegg til deg) bor hos deg nå/er i husholdningen?'.

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

*yrke.
VARIABLE LABELS yrke 'Hva er nåværende yrke, eller hva var ditt siste hovedyrke?'.
VALUE LABELS yrke
  student 'Student eller skoleelev'
  laerling 'Lærling eller på arbeidsopplæring'
  ufaglaert 'Yrke uten krav til utdanning'
  operator-transport 'Prosess-/maskinoperatør eller transportarbeider'
  handtverker 'Håndtverker'
  jord-skog-fisk 'Yrke innen jorbruk, skogbruk eller fiske'
  salg-service-omsorg 'Salgs-, service- eller omsorgsyrke'
  kontor 'Kontor- eller kundeserviceyrke'
  bachelor 'Yrke med kortere (3 årig) høyskole- eller universitetsutdanning'
  akademisk 'Akademisk yrke'
  ledelse-politikk 'Yrke innen administrativ ledelse eller politikk'
  militaert 'Militært yrke'
  annet 'Annet yrke'.

*arbeidsforhold.
VARIABLE LABELS arbeidsforhold 'Har du for tiden et arbeidsforhold?'.
VALUE LABELS arbeidsforhold
  ja 'Ja'
  nei 'Nei'.

*stillingsprosent.
VARIABLE LABELS stillingsprosent 'Hvor stor stillingsprosent har du i jobben din?'.
VALUE LABELS stillingsprosent
  1-25 '1 - 25%'
  26-50 '26 - 50%'
  51-75 '51-75%'
  76-99 '76 - 99%'
  100 '100%'
  mer-enn-100 'Mer enn 100%'
  usikker 'Vet ikke/usikker'.

*i-jobb-na.
VARIABLE LABELS i-jobb-na 'Hvor mye jobber du i den stillingsprosenten du har?'.
VALUE LABELS i-jobb-na
  fullt 'Jeg jobber fullt eller mer enn stillingsprosenten jeg har'
  redusert 'Jeg jobber en redusert del av den stillingsprosenten jeg har'
  nei 'Jeg jobber ikke'.

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

*sokt-ufor.
VARIABLE LABELS sokt-ufor 'Har du søkt eller planlegger du å søke om uføretrygd?'.
VALUE LABELS sokt-ufor
  ja 'Ja'
  nei 'Nei'.

*erstatningssak.
VARIABLE LABELS erstatningssak 'Har du en uavklart eller pågående erstatningssak knyttet til helseplagene dine?'.
VALUE LABELS erstatningssak
  ja 'Ja'
  nei 'Nei'.

*arbeidsevne-generelt.
VARIABLE LABELS arbeidsevne-generelt 'Du skal nå forsøke å vurdere din nåværende arbeidsevne sammenliknet med da den var på sitt beste. Vi går ut i fra at din arbeidsevne på sitt beste verdsettes med 10 poeng. Hvor mange poeng vil du gi til din nåværende arbeidsevne?'.
VALUE LABELS arbeidsevne-generelt
  0 '0'
  1 '1'
  2 '2'
  3 '3'
  4 '4'
  5 '5'
  6 '6'
  7 '7'
  8 '8'
  9 '9'
  10 '10'.

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
  usikker 'Vet ikke/usikker'
  er-i-jobb 'Jeg er i jobb'.

*onsket-jobb.
VARIABLE LABELS onsket-jobb 'Hvilken jobb håper du å komme tilbake til?'.
VALUE LABELS onsket-jobb
  sist-jobb 'Jobben jeg har i dag/jobben jeg hadde sist'
  ny-jobb-samme-yrke 'Ny jobb innen samme yrke'
  ny-jobb-annet-yrke 'Ny jobb innen annet yrke'.

*fysakt-timer.
VARIABLE LABELS fysakt-timer 'Timer'.

*fysakt-min.
VARIABLE LABELS fysakt-min 'Minutter'.

*sm-arsak-fysakt.
VARIABLE LABELS sm-arsak-fysakt 'Smertene mine ble forårsaket av fysisk aktivitet'.
VALUE LABELS sm-arsak-fysakt
  uenig 'Uenig'
  usikker 'Usikker'
  enig 'Enig'.

*fysakt-forverrer-sm.
VARIABLE LABELS fysakt-forverrer-sm 'Fysisk aktivitet forverrer smertene mine'.
VALUE LABELS fysakt-forverrer-sm
  uenig 'Uenig'
  usikker 'Usikker'
  enig 'Enig'.

*fysakt-skadelig.
VARIABLE LABELS fysakt-skadelig 'Fysisk aktivitet kan være skadelig for kroppen min'.
VALUE LABELS fysakt-skadelig
  uenig 'Uenig'
  usikker 'Usikker'
  enig 'Enig'.

*fysakt-utilradelig.
VARIABLE LABELS fysakt-utilradelig 'Jeg burde ikke gjøre fysisk aktivitet som kan øke smertene mine'.
VALUE LABELS fysakt-utilradelig
  uenig 'Uenig'
  usikker 'Usikker'
  enig 'Enig'.

*sm-arsak-jobb.
VARIABLE LABELS sm-arsak-jobb 'Smertene mine ble forårsaket av jobben min eller et uhell på jobben'.
VALUE LABELS sm-arsak-jobb
  uenig 'Uenig'
  usikker 'Usikker'
  enig 'Enig'.

*jobb-gjort-sm-verre.
VARIABLE LABELS jobb-gjort-sm-verre 'Jobben min har gjort smertene verre'.
VALUE LABELS jobb-gjort-sm-verre
  uenig 'Uenig'
  usikker 'Usikker'
  enig 'Enig'.

*erstatningskrav.
VARIABLE LABELS erstatningskrav 'Jeg har framsatt erstatningskrav for smertene mine'.
VALUE LABELS erstatningskrav
  uenig 'Uenig'
  usikker 'Usikker'
  enig 'Enig'.

*arbeid-for-tungt.
VARIABLE LABELS arbeid-for-tungt 'Arbeidet mitt er for tungt for kroppen min'.
VALUE LABELS arbeid-for-tungt
  uenig 'Uenig'
  usikker 'Usikker'
  enig 'Enig'.

*jobb-forverrer-sm.
VARIABLE LABELS jobb-forverrer-sm 'Å gå på jobb forverrer smertene mine'.
VALUE LABELS jobb-forverrer-sm
  uenig 'Uenig'
  usikker 'Usikker'
  enig 'Enig'.

*jobb-kan-skade.
VARIABLE LABELS jobb-kan-skade 'Arbeidet mitt kan skade kroppen min'.
VALUE LABELS jobb-kan-skade
  uenig 'Uenig'
  usikker 'Usikker'
  enig 'Enig'.

*burde-ikke-jobbe.
VARIABLE LABELS burde-ikke-jobbe 'Jeg burde ikke utføre det vanlige arbeidet mitt med mine nåværende smerter'.
VALUE LABELS burde-ikke-jobbe
  uenig 'Uenig'
  usikker 'Usikker'
  enig 'Enig'.

*klarer-ikke-jobbe.
VARIABLE LABELS klarer-ikke-jobbe 'Jeg klarer ikke utføre det vanlige arbeidet mitt med mine nåværende smerter'.
VALUE LABELS klarer-ikke-jobbe
  uenig 'Uenig'
  usikker 'Usikker'
  enig 'Enig'.

*ikke-rtw-innen-3mnd.
VARIABLE LABELS ikke-rtw-innen-3mnd 'Jeg tror ikke jeg vil være tilbake på det vanlige arbeidet mitt innen 3 måneder'.
VALUE LABELS ikke-rtw-innen-3mnd
  uenig 'Uenig'
  usikker 'Usikker'
  enig 'Enig'.

*aldri-rtw.
VARIABLE LABELS aldri-rtw 'Jeg tror ikke jeg noen gang vil være i stand til å komme tilbake til det vanlige arbeidet mitt'.
VALUE LABELS aldri-rtw
  uenig 'Uenig'
  usikker 'Usikker'
  enig 'Enig'.

*hads-tidlig-oppvakning.
VARIABLE LABELS hads-tidlig-oppvakning 'Jeg våkner tidlig for så å sove dårlig resten av natten'.
VALUE LABELS hads-tidlig-oppvakning
  ja-definitivt 'Ja, definitivt'
  ja-noen-ganger 'Ja, noen ganger'
  nei-ikke-mye 'Nei, ikke så mye'
  nei-ikke-hele-tatt 'Nei, ikke i det hele tatt'.

*hads-panikk.
VARIABLE LABELS hads-panikk 'Jeg blir veldig redd eller får panikkfølelse uten noen åpenbar grunn'.
VALUE LABELS hads-panikk
  ja-definitivt 'Ja, definitivt'
  ja-noen-ganger 'Ja, noen ganger'
  nei-ikke-mye 'Nei, ikke så mye'
  nei-ikke-hele-tatt 'Nei, ikke i det hele tatt'.

*hads-trist.
VARIABLE LABELS hads-trist 'Jeg føler meg trist og nedfor'.
VALUE LABELS hads-trist
  ja-definitivt 'Ja, definitivt'
  ja-noen-ganger 'Ja, noen ganger'
  nei-ikke-mye 'Nei, ikke så mye'
  nei-ikke-hele-tatt 'Nei, ikke i det hele tatt'.

*hads-nervos.
VARIABLE LABELS hads-nervos 'Jeg føler meg nervøs når jeg går ut av boligen min på egenhånd'.
VALUE LABELS hads-nervos
  ja-definitivt 'Ja, definitivt'
  ja-noen-ganger 'Ja, noen ganger'
  nei-ikke-mye 'Nei, ikke så mye'
  nei-ikke-hele-tatt 'Nei, ikke i det hele tatt'.

*hads-interessetap.
VARIABLE LABELS hads-interessetap 'Jeg har mistet interesse for ting'.
VALUE LABELS hads-interessetap
  ja-definitivt 'Ja, definitivt'
  ja-noen-ganger 'Ja, noen ganger'
  nei-ikke-mye 'Nei, ikke så mye'
  nei-ikke-hele-tatt 'Nei, ikke i det hele tatt'.

*hads-hjertebank.
VARIABLE LABELS hads-hjertebank 'Jeg får hjertebank eller følelse av &#34;sommerfugler&#34; i brystet eller magen'.
VALUE LABELS hads-hjertebank
  ja-definitivt 'Ja, definitivt'
  ja-noen-ganger 'Ja, noen ganger'
  nei-ikke-mye 'Nei, ikke så mye'
  nei-ikke-hele-tatt 'Nei, ikke i det hele tatt'.

*hads-svak-apetitt.
VARIABLE LABELS hads-svak-apetitt 'Jeg har dårlig apetitt'.
VALUE LABELS hads-svak-apetitt
  ja-definitivt 'Ja, definitivt'
  ja-noen-ganger 'Ja, noen ganger'
  nei-ikke-mye 'Nei, ikke så mye'
  nei-ikke-hele-tatt 'Nei, ikke i det hele tatt'.

*hads-redd.
VARIABLE LABELS hads-redd 'Jeg føler meg redd'.
VALUE LABELS hads-redd
  ja-definitivt 'Ja, definitivt'
  ja-noen-ganger 'Ja, noen ganger'
  nei-ikke-mye 'Nei, ikke så mye'
  nei-ikke-hele-tatt 'Nei, ikke i det hele tatt'.

*hads-ikke-verd-leve.
VARIABLE LABELS hads-ikke-verd-leve 'Jeg føler at livet ikke er verd å leve'.
VALUE LABELS hads-ikke-verd-leve
  ja-definitivt 'Ja, definitivt'
  ja-noen-ganger 'Ja, noen ganger'
  nei-ikke-mye 'Nei, ikke så mye'
  nei-ikke-hele-tatt 'Nei, ikke i det hele tatt'.

*hads-anhedoni.
VARIABLE LABELS hads-anhedoni 'Jeg setter ikke lenger pris på ting jeg likte før'.
VALUE LABELS hads-anhedoni
  ja-definitivt 'Ja, definitivt'
  ja-noen-ganger 'Ja, noen ganger'
  nei-ikke-mye 'Nei, ikke så mye'
  nei-ikke-hele-tatt 'Nei, ikke i det hele tatt'.

*hads-rastlos.
VARIABLE LABELS hads-rastlos 'Jeg er rastløs og har problemer med å holde meg i ro'.
VALUE LABELS hads-rastlos
  ja-definitivt 'Ja, definitivt'
  ja-noen-ganger 'Ja, noen ganger'
  nei-ikke-mye 'Nei, ikke så mye'
  nei-ikke-hele-tatt 'Nei, ikke i det hele tatt'.

*hads-irritabel.
VARIABLE LABELS hads-irritabel 'Jeg er mer irritabel enn jeg pleier'.
VALUE LABELS hads-irritabel
  ja-definitivt 'Ja, definitivt'
  ja-noen-ganger 'Ja, noen ganger'
  nei-ikke-mye 'Nei, ikke så mye'
  nei-ikke-hele-tatt 'Nei, ikke i det hele tatt'.

*hads-langsomt.
VARIABLE LABELS hads-langsomt 'Det føles som jeg beveger meg eller tenker seinere enn vanlig'.
VALUE LABELS hads-langsomt
  ja-definitivt 'Ja, definitivt'
  ja-noen-ganger 'Ja, noen ganger'
  nei-ikke-mye 'Nei, ikke så mye'
  nei-ikke-hele-tatt 'Nei, ikke i det hele tatt'.

*hads-bekymringer.
VARIABLE LABELS hads-bekymringer 'Bekymringer er alltid tilstede i tankene mine'.
VALUE LABELS hads-bekymringer
  ja-definitivt 'Ja, definitivt'
  ja-noen-ganger 'Ja, noen ganger'
  nei-ikke-mye 'Nei, ikke så mye'
  nei-ikke-hele-tatt 'Nei, ikke i det hele tatt'.

*eq5d-gange.
VARIABLE LABELS eq5d-gange 'Gange'.
VALUE LABELS eq5d-gange
  ingen-prob 'Jeg har ingen problemer med å gå omkring'
  litt-prob 'Jeg har litt problemer med å gå omkring'
  middels-prob 'Jeg har middels store problemer med å gå omkring'
  store-prob 'Jeg har store problemer med å gå omkring'
  ute-av-stand 'Jeg er ute av stand til å gå omkring'.

*eq5d-stell.
VARIABLE LABELS eq5d-stell 'Personlig stell'.
VALUE LABELS eq5d-stell
  ingen-prob 'Jeg har ingen problemer med å vaske meg eller kle meg'
  litt-prob 'Jeg har litt problemer med å vaske meg eller kle meg'
  middels-prob 'Jeg har middels store problemer med å vaske meg eller kle meg'
  store-prob 'Jeg har store problemer med å vaske meg eller kle meg'
  ute-av-stand 'Jeg er ute av stand til å vaske meg eller kle meg'.

*eq5d-gjoremal.
VARIABLE LABELS eq5d-gjoremal 'Vanlige gjøremål'.
VALUE LABELS eq5d-gjoremal
  ingen-prob 'Jeg har ingen problemer med å utføre mine vanlige gjøremål'
  litt-prob 'Jeg har litt problemer med å utføre mine vanlige gjøremål'
  middels-prob 'Jeg har middels store problemer med å utføre mine vanlige gjøremål'
  store-prob 'Jeg har store problemer med å utføre mine vanlige gjøremål'
  ute-av-stand 'Jeg er ute av stand til å utføre mine vanlige gjøremål'.

*eq5d-smerter.
VARIABLE LABELS eq5d-smerter 'Smerter/ubehag'.
VALUE LABELS eq5d-smerter
  nei 'Jeg har verken smerter eller ubehag'
  litt 'Jeg har litt smerter eller ubehag'
  middels 'Jeg har middels sterke smerter eller ubehag'
  sterke 'Jeg har sterke smerter eller ubehag'
  svaert-sterke 'Jeg har svært sterke smerter eller ubehag'.

*eq5d-angst-dep.
VARIABLE LABELS eq5d-angst-dep 'Angst/depresjon'.
VALUE LABELS eq5d-angst-dep
  nei 'Jeg er verken engstelig eller deprimert'
  litt 'Jeg er litt engstelig eller deprimert'
  middels 'Jeg er middels engstelig eller deprimert'
  svaert 'Jeg er svært engstelig eller deprimert'
  ekstremt 'Jeg er ekstremt engstelig eller deprimert'.

*gsaq-innsovning.
VARIABLE LABELS gsaq-innsovning '... har du hatt vansker med å sovne inn?'.
VALUE LABELS gsaq-innsovning
  aldri 'Aldri'
  noen-ganger 'Noen ganger'
  vanligvis 'Vanligvis'
  alltid 'Alltid'.

*gsaq-oppvakning.
VARIABLE LABELS gsaq-oppvakning '... hatt vansker med å sove gjennom natta?'.
VALUE LABELS gsaq-oppvakning
  aldri 'Aldri'
  noen-ganger 'Noen ganger'
  vanligvis 'Vanligvis'
  alltid 'Alltid'.

*gsaq-utvilt-dagtid.
VARIABLE LABELS gsaq-utvilt-dagtid '... har du følt deg lite uthvilt på dagtid?'.
VALUE LABELS gsaq-utvilt-dagtid
  aldri 'Aldri'
  noen-ganger 'Noen ganger'
  vanligvis 'Vanligvis'
  alltid 'Alltid'.

*gsaq-vansker-holde-vaken.
VARIABLE LABELS gsaq-vansker-holde-vaken '... har du sovet uten at du ville det, eller måtte kjempe med å holde deg våken på dagtid?'.
VALUE LABELS gsaq-vansker-holde-vaken
  aldri 'Aldri'
  noen-ganger 'Noen ganger'
  vanligvis 'Vanligvis'
  alltid 'Alltid'.

*gsaq-dagtidfunksjon.
VARIABLE LABELS gsaq-dagtidfunksjon '... har søvnvansker eller søvnighet på dagtid forstyrret dine daglige aktiviteter?'.
VALUE LABELS gsaq-dagtidfunksjon
  aldri 'Aldri'
  noen-ganger 'Noen ganger'
  vanligvis 'Vanligvis'
  alltid 'Alltid'.

*gsaq-jobb-akt-hinder-sovn.
VARIABLE LABELS gsaq-jobb-akt-hinder-sovn '... har arbeid eller andre aktiviteter hindret deg fra å få nok søvn?'.
VALUE LABELS gsaq-jobb-akt-hinder-sovn
  aldri 'Aldri'
  noen-ganger 'Noen ganger'
  vanligvis 'Vanligvis'
  alltid 'Alltid'.

*gsaq-snorking.
VARIABLE LABELS gsaq-snorking '... har du snorket høyt?'.
VALUE LABELS gsaq-snorking
  aldri 'Aldri'
  noen-ganger 'Noen ganger'
  vanligvis 'Vanligvis'
  alltid 'Alltid'.

*gsaq-apne.
VARIABLE LABELS gsaq-apne '... har du hatt pustepauser eller stoppet å puste i søvne?'.
VALUE LABELS gsaq-apne
  aldri 'Aldri'
  noen-ganger 'Noen ganger'
  vanligvis 'Vanligvis'
  alltid 'Alltid'.

*gsaq-restless-legs.
VARIABLE LABELS gsaq-restless-legs '... har du hatt urolige eller maurende følelser i bena om kvelden eller natta, og som ble bedre av bevegelse?'.
VALUE LABELS gsaq-restless-legs
  aldri 'Aldri'
  noen-ganger 'Noen ganger'
  vanligvis 'Vanligvis'
  alltid 'Alltid'.

*gsaq-rykninger.
VARIABLE LABELS gsaq-rykninger '... har du hatt gjentatte rykninger eller bevegelser i bena i søvne?'.
VALUE LABELS gsaq-rykninger
  aldri 'Aldri'
  noen-ganger 'Noen ganger'
  vanligvis 'Vanligvis'
  alltid 'Alltid'.

*gsaq-parasomnier.
VARIABLE LABELS gsaq-parasomnier '... har du hatt mareritt eller ropt, gått, slått eller sparket i søvne?'.
VALUE LABELS gsaq-parasomnier
  aldri 'Aldri'
  noen-ganger 'Noen ganger'
  vanligvis 'Vanligvis'
  alltid 'Alltid'.

*gsaq-trist-engstelig.
VARIABLE LABELS gsaq-trist-engstelig '... har du vært trist eller engstelig?'.
VALUE LABELS gsaq-trist-engstelig
  aldri 'Aldri'
  noen-ganger 'Noen ganger'
  vanligvis 'Vanligvis'
  alltid 'Alltid'.

*gsaq-smerter.
VARIABLE LABELS gsaq-smerter 'Smerter'.
VALUE LABELS gsaq-smerter
  aldri 'Aldri'
  noen-ganger 'Noen ganger'
  vanligvis 'Vanligvis'
  alltid 'Alltid'.

*gsaq-kroppslige-plager.
VARIABLE LABELS gsaq-kroppslige-plager 'Andre kroppslige plager'.
VALUE LABELS gsaq-kroppslige-plager
  aldri 'Aldri'
  noen-ganger 'Noen ganger'
  vanligvis 'Vanligvis'
  alltid 'Alltid'.

*gsaq-bekymringer.
VARIABLE LABELS gsaq-bekymringer 'Bekymringer'.
VALUE LABELS gsaq-bekymringer
  aldri 'Aldri'
  noen-ganger 'Noen ganger'
  vanligvis 'Vanligvis'
  alltid 'Alltid'.

*gsaq-medikamenter.
VARIABLE LABELS gsaq-medikamenter 'Medikamenter'.
VALUE LABELS gsaq-medikamenter
  aldri 'Aldri'
  noen-ganger 'Noen ganger'
  vanligvis 'Vanligvis'
  alltid 'Alltid'.

*helse-samlet.
VARIABLE LABELS helse-samlet 'Prøv å angi hvor god eller dårlig din samlede helse er i dag.'.
VALUE LABELS helse-samlet
  0 '0'
  1 '1'
  2 '2'
  3 '3'
  4 '4'
  5 '5'
  6 '6'
  7 '7'
  8 '8'
  9 '9'
  10 '10'.

*godt-nok-utredet.
VARIABLE LABELS godt-nok-utredet 'Opplever du deg godt nok medisinsk utredet for dine muskel-/skjelettplager?'.
VALUE LABELS godt-nok-utredet
  ja 'Ja'
  nei 'Nei'.

*tilbakemeldinger.
VARIABLE LABELS tilbakemeldinger 'Mine tilbakemeldinger'.

EXECUTE.