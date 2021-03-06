import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:material_design_icons_flutter/material_design_icons_flutter.dart';
import 'package:techup/utils/app_localizations.dart';
import 'package:techup/utils/constants.dart';
import 'package:url_launcher/url_launcher.dart';

class EventProgram extends StatefulWidget {
  Function callback;

  EventProgram(this.callback);

  @override
  _EventProgramState createState() => _EventProgramState();
}

class _EventProgramState extends State<EventProgram> {
  int selectedButton = 0;
  Color buttonZeroColor = kCaptionColor;
  Color buttonOneColor = Colors.white;
  Color buttonTwoColor = Colors.white;

  Color buttonZeroTextColor = Colors.white;
  Color buttonOneTextColor = kCaptionColor;
  Color buttonTwoTextColor = kCaptionColor;

  Color dividerColor = Color.fromRGBO(40, 234, 240, 1);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1000) {
        return Container(
          width: MediaQuery.of(context).size.width / 1.25,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context).translate('event_program_big'),
                style: GoogleFonts.montserrat(
                  color: kCaptionColor,
                  fontWeight: FontWeight.w700,
                  fontSize: MediaQuery.of(context).size.width / 32,
                ),
              ),
              SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 5,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          this.widget.callback(3000, 3800);
                          selectedButton = 0;
                          buttonZeroColor = kCaptionColor;
                          buttonZeroTextColor = Colors.white;
                          buttonOneColor = Colors.white;
                          buttonTwoColor = Colors.white;
                          buttonOneTextColor = kCaptionColor;
                          buttonTwoTextColor = kCaptionColor;
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(buttonZeroColor)),
                      child: Text(
                        "22 ${AppLocalizations.of(context).translate('may')}",
                        style: GoogleFonts.montserrat(
                          color: buttonZeroTextColor,
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.width / 48,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 5,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          this.widget.callback(2700, 5500);
                          selectedButton = 1;
                          buttonZeroColor = Colors.white;
                          buttonZeroTextColor = kCaptionColor;
                          buttonOneColor = kCaptionColor;
                          buttonTwoColor = Colors.white;
                          buttonOneTextColor = Colors.white;
                          buttonTwoTextColor = kCaptionColor;
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(buttonOneColor)),
                      child: Text(
                        "23 ${AppLocalizations.of(context).translate('may')}",
                        style: GoogleFonts.montserrat(
                          color: buttonOneTextColor,
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.width / 48,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 5,
                    height: MediaQuery.of(context).size.height / 5,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          this.widget.callback(1450, 3450);
                          selectedButton = 2;
                          buttonZeroColor = Colors.white;
                          buttonZeroTextColor = kCaptionColor;
                          buttonOneColor = Colors.white;
                          buttonTwoColor = kCaptionColor;
                          buttonOneTextColor = kCaptionColor;
                          buttonTwoTextColor = Colors.white;
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(buttonTwoColor)),
                      child: Text(
                        "24 ${AppLocalizations.of(context).translate('may')}",
                        style: GoogleFonts.montserrat(
                          color: buttonTwoTextColor,
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.width / 48,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              eventListContainer(),
            ],
          ),
        );
      } else {
        return Container(
          width: MediaQuery.of(context).size.width / 1.25,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                AppLocalizations.of(context).translate('event_program_big'),
                style: GoogleFonts.montserrat(
                  color: kCaptionColor,
                  fontWeight: FontWeight.w700,
                  fontSize: MediaQuery.of(context).size.width / 12,
                ),
              ),
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    height: MediaQuery.of(context).size.height / 8,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          this.widget.callback(1450.0, 3800.0);
                          selectedButton = 0;
                          buttonZeroColor = kCaptionColor;
                          buttonZeroTextColor = Colors.white;
                          buttonOneColor = Colors.white;
                          buttonTwoColor = Colors.white;
                          buttonOneTextColor = kCaptionColor;
                          buttonTwoTextColor = kCaptionColor;
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(buttonZeroColor)),
                      child: Text(
                        "22 ${AppLocalizations.of(context).translate('may')}",
                        style: GoogleFonts.montserrat(
                          color: buttonZeroTextColor,
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.width / 24,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    height: MediaQuery.of(context).size.height / 8,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          this.widget.callback(500.0, 3500.0);
                          selectedButton = 1;
                          buttonZeroColor = Colors.white;
                          buttonZeroTextColor = kCaptionColor;
                          buttonOneColor = kCaptionColor;
                          buttonTwoColor = Colors.white;
                          buttonOneTextColor = Colors.white;
                          buttonTwoTextColor = kCaptionColor;
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(buttonOneColor)),
                      child: Text(
                        "23 ${AppLocalizations.of(context).translate('may')}",
                        style: GoogleFonts.montserrat(
                          color: buttonOneTextColor,
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.width / 24,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width / 4,
                    height: MediaQuery.of(context).size.height / 8,
                    child: TextButton(
                      onPressed: () {
                        setState(() {
                          this.widget.callback(1110.0, 1200.0);
                          selectedButton = 2;
                          buttonZeroColor = Colors.white;
                          buttonZeroTextColor = kCaptionColor;
                          buttonOneColor = Colors.white;
                          buttonTwoColor = kCaptionColor;
                          buttonOneTextColor = kCaptionColor;
                          buttonTwoTextColor = Colors.white;
                        });
                      },
                      style: ButtonStyle(
                          backgroundColor:
                              MaterialStateProperty.all(buttonTwoColor)),
                      child: Text(
                        "24 ${AppLocalizations.of(context).translate('may')}",
                        style: GoogleFonts.montserrat(
                          color: buttonTwoTextColor,
                          fontWeight: FontWeight.w700,
                          fontSize: MediaQuery.of(context).size.width / 24,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              eventListSmallerContainer(),
            ],
          ),
        );
      }
    });
  }

  Widget eventCard(
      String title,
      String speaker,
      String speakerTitle,
      String time,
      String imageUrl,
      bool isSpeakerTitleSmall,
      bool isTwoSpeakers,
      String secondSpeaker,
      String secondSpeakerTitle,
      String secondSpeakerImageUrl,
      String linkedinFirst,
      String aboutFirst,
      String linkedinSecond,
      String aboutSecond) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            Text(
              time,
              style: GoogleFonts.montserrat(
                color: Colors.white,
                fontSize: MediaQuery.of(context).size.width / 72,
              ),
            ),
            SizedBox(
              width: 30,
            ),
            Container(
              width: MediaQuery.of(context).size.width / 4,
              child: Text(
                title,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(
                  color: Colors.white,
                  fontWeight: FontWeight.w500,
                  fontSize: MediaQuery.of(context).size.width / 72,
                ),
              ),
            )
          ],
        ),
        SizedBox(width: 20),
        Container(
          width: MediaQuery.of(context).size.width / 2.8,
          height: isTwoSpeakers ? 350 : 250,
          child: Column(
            children: [
              SizedBox(height: 80),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    imageUrl != ""
                        ? Container(
                            width: 80,
                            height: 80,
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: GestureDetector(
                                onTap: () {
                                  showDialog(
                                    context: context,
                                    builder: (dialogContext) => AlertDialog(
                                      backgroundColor: Colors.white,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16)),
                                      content: speakerDetail(imageUrl, speaker,
                                          aboutFirst, linkedinFirst),
                                    ),
                                  );
                                },
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/$imageUrl',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(),
                    SizedBox(width: 20),
                    Column(
                      children: [
                        MouseRegion(
                          cursor: SystemMouseCursors.click,
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (dialogContext) => Container(
                                  width: 500,
                                  child: AlertDialog(
                                    backgroundColor: Colors.white,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(16)),
                                    content: speakerDetail(imageUrl, speaker,
                                        aboutFirst, linkedinFirst),
                                  ),
                                ),
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width / 3.5,
                              child: Text(
                                speaker,
                                style: GoogleFonts.montserrat(
                                  color: Colors.orange,
                                  fontWeight: FontWeight.w400,
                                  fontSize: isSpeakerTitleSmall == false
                                      ? MediaQuery.of(context).size.width / 88
                                      : MediaQuery.of(context).size.width / 92,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 3.5,
                          child: Text(
                            speakerTitle,
                            style: GoogleFonts.montserrat(
                              color: Colors.white,
                              fontWeight: FontWeight.w200,
                              fontSize: isSpeakerTitleSmall == false
                                  ? MediaQuery.of(context).size.width / 88
                                  : MediaQuery.of(context).size.width / 92,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              isTwoSpeakers
                  ? SizedBox(
                      height: 50,
                    )
                  : SizedBox(height: 0),
              isTwoSpeakers
                  ? Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          secondSpeakerImageUrl != ""
                              ? Container(
                                  width: 80,
                                  height: 80,
                                  child: MouseRegion(
                                    cursor: SystemMouseCursors.click,
                                    child: GestureDetector(
                                      onTap: () {
                                        showDialog(
                                          context: context,
                                          builder: (dialogContext) => Container(
                                            width: 500,
                                            child: AlertDialog(
                                              backgroundColor: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16)),
                                              content: speakerDetail(
                                                  secondSpeakerImageUrl,
                                                  secondSpeaker,
                                                  aboutSecond,
                                                  linkedinSecond),
                                            ),
                                          ),
                                        );
                                      },
                                      child: ClipOval(
                                        child: Image.asset(
                                          'assets/$secondSpeakerImageUrl',
                                          fit: BoxFit.fitHeight,
                                        ),
                                      ),
                                    ),
                                  ),
                                )
                              : Container(),
                          SizedBox(width: 20),
                          Column(
                            children: [
                              MouseRegion(
                                cursor: SystemMouseCursors.click,
                                child: GestureDetector(
                                  onTap: () {
                                    showDialog(
                                      context: context,
                                      builder: (dialogContext) => Container(
                                        width: 500,
                                        child: AlertDialog(
                                          backgroundColor: Colors.white,
                                          shape: RoundedRectangleBorder(
                                              borderRadius:
                                                  BorderRadius.circular(16)),
                                          content: speakerDetail(
                                              secondSpeakerImageUrl,
                                              secondSpeaker,
                                              aboutSecond,
                                              linkedinSecond),
                                        ),
                                      ),
                                    );
                                  },
                                  child: Container(
                                    width:
                                        MediaQuery.of(context).size.width / 3.5,
                                    child: Text(
                                      secondSpeaker,
                                      style: GoogleFonts.montserrat(
                                        color: Colors.orange,
                                        fontWeight: FontWeight.w400,
                                        fontSize: isSpeakerTitleSmall == false
                                            ? MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                88
                                            : MediaQuery.of(context)
                                                    .size
                                                    .width /
                                                92,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                              Container(
                                width: MediaQuery.of(context).size.width / 3.5,
                                child: Text(
                                  secondSpeakerTitle,
                                  style: GoogleFonts.montserrat(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w200,
                                    fontSize: isSpeakerTitleSmall == false
                                        ? MediaQuery.of(context).size.width / 88
                                        : MediaQuery.of(context).size.width /
                                            92,
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ],
    );
  }

  Container eventListContainer() {
    if (selectedButton == 0) {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            eventCard(
              AppLocalizations.of(context).translate('opening_speech'),
              "Hakan K??z??ltoprak",
              "Director of TOBB ETU Technology Transfer Office",
              "12:30-12.45",
              "hakan_kiziltoprak.jpg",
              false,
              true,
              "Do??. Dr. G??knur B??ke",
              "Ar-Ge ve ??novasyondan Sorumlu Rekt??r Dan????man??",
              "goknur_buke.jpg",
              "https://www.linkedin.com/in/hakankiziltoprak/?originalSubdomain=tr",
              "Special Advisor to President - TOBB Director,Technology Transfer Office - TOBB ETU Member of the Board of Directors, Turkish Accelerator Radiation Laboratory - TARLA Finance Committee Delegate & Chair of ILO Forum - CERN",
              "https://www.linkedin.com/in/g%C3%B6knur-b%C3%BCke-490a1749/?originalSubdomain=tr",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('fintech_ecosystem'),
              "Deniz G??ven",
              "CEO and Executive Board of Director at Mox Bank",
              "12:50-13:40",
              "deniz_guven.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/denizguven/",
              """Deniz G??ven is an internationally recognized leader in driving digital transformations and bringing new digital banking experiences to audiences globally.

At Standard Chartered, he oversees a great number of initiatives, ranging from global digital insights & strategies, client journeys, and optimizations, digital wealth initiatives to collaborations with leading tech firms and emerging start-ups. His aim is to transform the Bank into a digital business and to create fresh and exciting digital experiences. Deniz believes that by integrating banking to client???s lives seamlessly, the Bank adds the human touch that compliments people???s active and fast-paced lifestyles.

Prior to joining Standard Chartered, Deniz served as the Senior Vice President at BBVA Group???s Garanti Bank, Turkey???s most valuable company by market capitalization. His role included the management and oversight of mobile and online banking channels, ATM and voice technologies including call center, along with user experience and service design, digital marketing and communications, partnering, corporately owned websites, and social media channels.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('world_wants'),
              "Mustafa Can",
              "Yarat??c?? Marka Dan????man??",
              "13:45-14:25",
              "mustafa_can.jpeg",
              false,
              false,
              "",
              "",
              "",
              "",
              """70???li y??llar??n ba????nda T??rkiye???nin tam da nedenini anlamadan birbirine sa??c?? solcu diyerek ??tekile??tirdikleri zamanlarda do??du.

??ocuklu??unu eski bir ba??kent olma havas??n?? hen??z kaybetmemi?? Trabzon???da ?????o??unlukla hayal kurarak ve hayat ansiklopedisi okuyarak ??? ge??irdi.

80???li y??llar??n ortalar??nda ???Hayalle peynir gemisi y??r??m??yor??? laf??n?? ????rendi??i Samsuna ta????nd??. Kaos teorisine uygun ??ekilde, lisedeki ????retmeninin itinas??yla, Resim B??l??m??n?? kazand?? ve okudu.

De??i??ik ve ilgisini ??eken hemen her ??eyi ????renmek hobisiydi. ??niversiteyi bitirene kadar, ??ocuk yuvas??nda resim ????retmenli??inden, otopark bek??ili??ine kadar yirmiye yak??n i??te ??al????t??. T??rkiye???nin b??y??k bir b??l??m??n?? dola??t??.

Bir ka?? y??l ????retmenlik yapt??ktan sonra Milenyumla birlikte ??stanbul???a yerle??ti.

Bir??ok projede ba????ms??z art direkt??r ve y??netmen olarak ??al????t??.

Farkl?? konulara ilgisini -ya da maymun i??tahl??l??????n??- en iyi giderece??i mesle??e y??neldi. 2007 y??l??nda kendi reklam ajans??n?? kurdu. On y??l kadar bu ajans??n ajans ba??kanl??????n?? yapt??. Kozmetikten sa??l????a, hukuktan kuru yemi??e bir??ok sekt??rde yerli ve uluslararas?? markalarla b??t??nle??ik pazarlama, markala??ma, ileti??im fikirleri ??zerine ??e??itli projeler ??al????t??.

www.gecmisgazete.com???u hayata ge??irdi.

Marka yay??nc??l??????, ki??isel markala??ma, yak??n gelecekteki ileti??im modelleri, yerel markala??ma, profesyonel fikir ??reticisi olmak gibi konulara ??zel ilgi g??sterdi.

T??rkiye???de ???fikir ajans????? olur mu diye sordu ve denedi.

Halen ???Yarat??c?? Marka Dan????man????? olarak bir??ok marka ve ki??iye dan????manl??k vermektedir.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('coffee_break'),
              "",
              "",
              "14:30-15:00",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('build_future'),
              "Mustafa Sava??",
              "Founder of Kimola",
              "15:00-15:40",
              "mustafa_savas.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/mustafasavas/",
              "He studied Mechanical Engineering at university and worked as a software developer and trainer for many years. Today, he leads the core technology development of Kimola and he is also responsible for company???s future plans and strategies.",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              "Giri??imcilikte Global Ba??ar?? Nas??l Yakalan??r?",
              "Sezer De??irmenba????",
              "Industry Manager; Start-Ups, Apps & Gaming at Google",
              "15:45-16:25",
              "sezer_degirmenbasi.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/sezer/",
              "Sezer De??irmenba???? ??T?? ????letme M??hendisli??i b??l??m??nden 2006 y??l??nda mezun oldu. 2009 y??l??nda Bo??azi??i ??niversitesi'nde ????letme Bili??im Sistemleri b??l??m??nde y??ksek lisans??n?? tamamlad??. 2006 - 2007 y??llar?? aras??nda GittiGidiyor.com'da Category & Marketing Specialist olarak ??al????t??. Ard??ndan 2007 - 2010 y??llar?? aras??nda Sony'de Analytics & Communications Consultant olarak g??rev ald??. 2010 y??l??ndan beri ??al????makta oldu??u ??irket olan Google'da ise Account Strategist, Account Manager, Principal Account Manager olmak ??zere bir??ok pozisyonda g??rev yapt??. ??u anda Industry Manager olarak Google'da ??al????maya devam etmekte.",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('coffee_break'),
              "",
              "",
              "16:30-17:00",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('evolving'),
              "??i??dem Kayal??",
              "Microsoft MEA Teknoloji Direkt??r??, Teknolojide Kad??n Derne??i Y??netim Kurulu ??yesi",
              "17:00-17:55",
              "cigdem_kayali.jpg",
              true,
              true,
              "Zehra ??ney",
              "Founding President of Teknolojide Kad??n Derne??i (Wtech)",
              "zehra_oney.jpg",
              "https://www.linkedin.com/in/cigdem-kayali-0b8555/",
              """??i??dem Kayal??, kurumlar??n dijital d??n??????m yolculuklar??na ??????k tutan, h??zla geli??en teknoloji trendlerinin yayg??nla??t??r??lmas??nda rol oynayan liderlerdendir. Son 5 y??l??n?? farkl?? sekt??rlerin bulut servislerinden yararlanmalar?? i??in ??aba harcad?? ve Microsoft???un T??rkiye???de genel bulutta lider olarak yer almas??nda rol oynad??.

Kontoll?? riskler almay?? seven, derin end??stri bilgisine sahip olan Kayal??, kurumlar??n ve t??keticilerin bulut servisleri ile tan????mas?? i??in ??nc??l??k etmi??tir. Kayal??, ba??ta Office 365 olmak ??zere Microsoft bulut servislerinin pazar stratejisini tasarlad??, geli??tirdi ve y??netti. Microsoft???taki 20 y??ll??k g??rev s??resi boyunca, Kayal?? i?? stratejileri geli??tirerek ve yeni i?? modellerini hayata ge??irerek ??n kazand??. Microsoft MEA, CEE ve EMEA b??lge ofislerinde farkl?? y??neticilik pozisyonlar??nda g??rev ald??. B??lge ??lkelerindeki dijital d??n??????m faliyetlerinde liderlik g??sterdi??i gibi, farkl?? sekt??rlerde bu ??r??n gruplar??n??n uyarlamalar??nda rol alm????t??r.

Kayal??, ????letme alan??nda Y??ksek Lisans derecesine sahip bir Bilgisayar M??hendisidir.""",
              "https://www.linkedin.com/in/zehraoney/",
              """Futurist, mobil d??n??????m uzman??, yat??r??mc??, uygulamac??, konu??mac??, teknoloji markala??ma ve pazarlama uzman?? olan Zehra ??ney 1964 y??l??nda ??stanbul???da do??du, ??stanbul ??niversitesi???nde Ekonomi e??itimi ald??ktan sonra 10 y??l boyunca Turizm sekt??r??nde T??rkiye???nin say??l?? acentelerinde ??st d??zey pozisyonlarda g??rev ald??. Son 16 y??lda ise Telekom??nikasyon, Mobil ve Dijital alanlarda profesyonel y??netici olarak kariyerine devam etti. 2002 ??? 2007 y??llar?? aras??nda Turkcell???de Uluslararas?? ???? Geli??tirme, Avrupa Birli??i ve Amerika ??li??kilerinde Y??netici olarak g??rev yapan Zehra ??ney, 2007 ??? 2011 y??llar?? aras??nda Mobilera A.??. Genel M??d??rl?????? ile Mobilera BV Genel M??d??r Yard??mc??l?????? g??revlerini e??zamanl?? olarak y??r??tt??. 

 

2011 y??l??nda kendi ajans?? 360+ Media Interactive???i kuran Zehra ??ney, Ajans Ba??kan?? olarak g??revini s??rd??rmektedir. 2013 y??l??nda T??rkiye???yi art??r??lm???? ger??eklik ile tan????t??rm????t??r. 2011 y??l??nda Londra ??ngiltere???de kurulan ve g??n??m??zde d??nya ??ap??nda 65 milyondan fazla ??yeye sahip olan art??r??lm???? ger??eklik uygulamas?? Blippar?????n 2014-2017 y??llar?? aras??nda T??rkiye CEO???su ve ayn?? zamanda Blippar Global SMT (Senior Management Team) ve Blippar T??rkiye M??nhas??r Temsilcisi olarak da g??rev yapm????t??r.

 

Zehra ??ney, Teknolojide Kad??n Derne??i Kurucu Ba??kan??, Dor??e Prefabrik Ba????ms??z Y??netim Kurulu ve ??dare Meclisi ??yesi, Bah??e??ehir ??niversitesi Graduate School of Business Y??netim Kurulu ??yesi, MMA (Mobile Marketing Association) T??rkiye Y??netim Kurulu ve ??cra Kurulu ??yesi, T??rkiye Kad??n Giri??imciler Derne??i (KAG??DER) ??yesi, TA??K (T??rkiye-ABD ???? Konseyi) Dijital ??leti??im Dan????man?? ve Startupbootcamp merkezli T??rk Mentor Hareketi, Mentor Effect platformu Lead Mentor????? olarak da ??al????malar??na devam etmektedir. ??ney ayn?? zamanda pazarlama ve reklam alanlar??nda art??r??lm???? ger??eklik, yapay zeka, nesnelerin interneti ve sanal ger??eklik uygulamalar?? uzman?? ve uygulay??c??s??d??r. """,
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('enterprise'),
              "Ceri Cukran",
              "Managing the startup investment process at StartersHub - Co-Founder at Insumo",
              "18:00-19:00",
              "ceri_cukran.jpg",
              false,
              true,
              "Haluk Ni??li",
              "Director of Strategy and Finance at Thread In Motion",
              "haluk_nisli.jpg",
              "https://www.linkedin.com/in/ceri-cukran-67204960/",
              "Ceri Cukran, 2017 y??l??nda istanbul Bilgi ??niversitesi ????letme B??l??m??'nden mezun oldu. Insumo'nun kurucu orta???? ve San Francisco, California merkezli StartersHub'??n orta????d??r. Daha ??nce Gamer's Qube'da Business Development Manager ve Big Chefs'te Assistant Manager olarak g??rev yapt??.",
              "https://www.linkedin.com/in/haluk-ni%C5%9Fli-bb6aa692/",
              "Ko?? ??niversitesi End??stri M??hendisli??i b??l??m??nden mezun olduktan sonra yine Ko?? ??niversitesi Uluslararas?? Y??netim Y??ksek Lisans?????n?? tamamlayan Haluk Ni??li, erken a??ama teknoloji yat??r??m fonu olan StartersHub???da Yat??r??m ve Hukuki ??li??kiler M??d??r?? olarak g??rev alm????t??r. Risk sermayesi yat??r??m fonlar??ndan sonra giri??imcilik konusunda da kendini geli??tirmeyi ama??layan Haluk Ni??li, an itibariyle giyilebilir teknoloji platformu ??reten Thread in Motion ??irketinde Strateji ve Finans Direkt??r?? olarak g??rev yapmaktad??r.",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
          ],
        ),
      );
    }
    if (selectedButton == 1) {
      return Container(
        child: Column(
          children: [
            eventCard(
              "Yar??n??n D??nyas??nda Giri??imcilik",
              "Yasin Oral",
              "Founder, CEO / Paribu",
              "12:30-13:10",
              "yasin_oral.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/yasinoral/",
              """1985 y??l??nda Ankara???da do??an Yasin Oral, yaz??l??m ??al????malar??na lise d??neminde ba??lad??. 2001???de, hen??z lise ????rencisiyken T??B??TAK?????n bir yar????mas??na kat??ld?? ve T??B??TAK web sitesi geli??tirmelerine d????ar??dan destek sa??lad??.

??niversite y??llar??nda ta????mac??l??k sekt??r??nde faaliyet g??steren bir internet sitesi kurdu ve site k??sa s??re i??inde nakliyeciler aras??ndaki koordinasyonu sa??layan tek platform haline geldi.

2009???da Gazi ??niversitesi ??ktisadi ve ??dari Bilimler Fak??ltesi???nden mezun olan Oral, 2010???da T??rkiye???nin ilk online matbaas?? matbuu.com???u hayata ge??irdi.

Bu giri??imlerinin yan?? s??ra t??m d??nyada hizmet veren bir??ok mesafe hesaplama ve rota g??r??nt??leme projesi yaratarak g??nl??k 250 binin ??zerinde kullan??c??ya hizmet vermeye ba??lad??. 2015???te online bilet sat??n al??m platformu Biletgo???yu kurdu.

2015???te Paribu???nun ??n haz??rl??k ??al????malar??na ba??lad??. Paribu, 2016???da kuruldu, 14 ??ubat 2017???de kullan??ma a????ld??.

Halen Paribu CEO???su olan Oral, Blockchain T??rkiye Platformu Y??r??tme Kurulu ??yesi ve T??rkiye Gen?? ???? Adamlar?? Derne??i ??yesidir.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('measuring'),
              "Beril Kocadereli",
              "MSc Innovation at KTH I Norrsken Impact Accelerator | Startup Grind Stockholm",
              "13:10-13:55",
              "beril_kocadereli.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/berilkocadereli/",
              "Beril Kocadereli Bilkent ??niversitesi End??stri M??hendisli??inden 2019 y??l??nda mezun oldu. 2021 y??l??nda KTH Royal Institute of Technology'de Entrepreneurship and Innovation Management b??l??m??nde master'??n?? tamamlad??. \"Social impact measurement from an investor perspective: Impact investments\" konusunda master tezi haz??rlad??. ??u anda Startup Grind Stockholm'de Parnerships Lead ve Norrsken Foundation'da Impact Accelerator Intern olarak g??rev almakta.",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('osman_baytaroglu'),
              "Osman Baytaro??lu",
              "Co Founder and CEO at Agcurate, Accurate Rural Intelligence for Agribusiness.",
              "14:00-14:55",
              "osman_baytaroglu.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/osmanbaytaroglu/",
              """He has gathered teams for high impact projects and built a couple of great products:

>He has fundraised an amount of \$15.000 for L??SEV (the Foundation for Children with Leukemia) as Vice President of Fine Arts Society at METU (2009)

>Between 2010 and 2013 he has led a student team of engineers, architects, designers, and marketers that succeeded to be selected to compete in Solar Decathlon China 2013, a student competition about designing and building solar powered houses.

>In 2014, he founded Innomotive, and they released global-first single sensor solution for intelligent intersection management. They exited the company later.

>In 2017, he founded Agrovisio and they delivered first "soil yield potential map of Turkey" which constitutes the baseline of drought insurance products of TARSIM, Agriculture Insurance Pool of Turkey.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('mustafa_namoglu'),
              "Mustafa Namo??lu",
              "CEO at ikas.com",
              "15:00-15:45",
              "mustafa_namoglu.jpeg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/namoglu/",
              """1989 y??l??nda Girne / KKTC???de d??nyaya geldi.

2010 y??l??nda Bilkent ??niversitesi CTIS b??l??m??nden mezun olmu??tur.

2011 y??l??nda kurdu??u MUGO, d??nyaca ??nl?? markalar??n distrib??t??rl??klerini
yapmakta ayn?? zamanda perakende sekt??r??nde
faaliyet g??stermektedir.

2017 y??l??nda kurdu??u ikas, KOB?????lerin ma??aza, pazar yerleri ve e-ticaret
sitelerini tek bir y??netebilmelerini sa??layan bir SaaS ??irketidir.

2020 y??l??nda ba??latt?????? Kolay De??il YouTube kanal?? ile tecr??belerini tekrar
tekrar kendisine hat??rlatmay?? ve ba??kalar??na na??izane faydal?? olmay??
hedefliyor.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('coffee_break'),
              "",
              "",
              "15:45-16:15",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              "Ak??ll?? ??ehirlerde Dijital Reklamc??l??k",
              "Onur Karde??ler",
              "Co-founder of Firefly",
              "16:15-17:00",
              "onur_kardesler.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/onurkardesler/",
              "Ko?? ??niversitesi,Elektrik Elektronik M??hendisli??i B??l??m?????nden mezun oldu. INSEAD???dan MBA diplomas?? ald??. Giri??imcilik hayat??na Londra???da kurdu??u teknoloji ??irketi ile ba??lad??. Silikon Vadisi???nde ??e??itli teknoloji ??irketlerinde ??r??n Y??neticisi pozisyonunda ??al????t??. Firefly????? Kaan G??nay ile 2017 senesinde kurdu.",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('sahin_boydas'),
              "??ahin Boyda??",
              "Founder & CEO at RemoteTeam.com",
              "17:00-17:55",
              "sahin_boydas.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/sahinboydas/",
              """Sahin Boydas is a serial entrepreneur living in Silicon Valley.
Sahin has built and managed 100% remote teams for over a decade. As CEO and founder of RemoteTeam.com, he is working to solve HR and operational problems related to remote work.

Past,
He co-founded movie marketing platform MovieLaLa downloaded millions and reached 360M people with network partnerships. Movielala sold it to Gfycat.

Later he co-founded one of the most successful consumer-facing Augmented Reality apps: Leo AR.
Leo AR featured more than 100+ and selected as Apple's favorite app and App of the day many times.
MojiLaLa and Leo were part of 500 Startups Batch 19, Stanford StartX Batch S19, Betaworks Vision Camp, Quark Accerator.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('aytul_ercil'),
              "Ayt??l Er??il",
              "Partner and co-CEO/chair of the board at Vispera A.S.",
              "18:00-19:00",
              "aytul_ercil.jpg",
              false,
              false,
              "Ayt??l Er??il",
              "Partner and co-CEO/chair of the board at Vispera A.S.",
              "aytulercil.jpg",
              "https://www.linkedin.com/in/aytul-ercil-b833b43/",
              """Profesor Dr. Ayt??l Er??il Bo??azi??i Universitesi Elektrik M??hendisli??i ve Matematik B??l??mlerinden 1979 y??l??nda lisans, Brown Universitesi, uygulamal?? matematik b??l??m??nden 1980 y??l??nda y??ksek lisans, 1983 y??l??nda ise Doktora derecesini alm????t??r. 5 y??l General Motors Ara??t??rma Laboratuvar??nda ??al????t??ktan sonra 1988 - 2001 y??llar?? aras??nda Bo??azi??i Universitesinde ????retim ??yeli??i ve kurucusu oldu??u BUPAM Yapay G??rme Laboratuvar??n??n direkt??rl??????n?? yapm????t??r. 2001 -2013 y??llar??nda ise Sabanc?? ??niversitesinde ????retim ??yeli??i ve kurucusu oldu??u VPALAB yapay g??rme laboratuvar??n??n direkt??rl??????n?? yapm????t??r. ??e??itli uluslararas?? projelerde (Nato, FP4, Eureka, NSF, FP6, Nedo, FP7) ara??t??rmac??/proje y??r??t??c??s?? olarak g??rev yapm???? olan Prof. Er??il, T??T??AD ??? T??rk ??r??nt?? Tan??ma ve ??mge Analizi Derne??inin kurucu ba??kan?? olup, IAPR ???International Association of Pattern Recognition?????n y??netim kurulu ??yesidir. 2006 y??l??nda Prof. Er??il???in kurdu??u Vistek ISRA Vision A.??. Aral??k 2013???de yapay g??rme konusunda Avrupa???da 1 numara, d??nyada 3. konumda olan Alman ISRA Vision firmas??na sat??lm????t??r. Prof. Er??il???in ??al????malar?? ???Uluslararas?? Ba??ar?? ??d??l?????, Eureka Ba??ar?? ??yk??s??, Endeavor giri??imcisi, 2010 teknoloji ??d??l?? finalisti, Veuve Clicquot ???y??l??n en etkin kad??n giri??imcisi??? ??d??l??, Makina ve Aksesuarlar?? ??retim Teknolojileri yar????mas??nda birincilik ??d??l??, ???2013 T??rkiye???nin kad??n giri??imcisi???, ???Kristal A??a?? y??l??n kad??n giri??imcisi???, 2014 Ansiad ???y??l??n kad??n giri??imcisi???, ???Microsoft Bili??imde Fark Yaratan Kad??n Lider??? ??d??l?? gibi bir??ok ulusal ve uluslararas?? ??d??le lay??k g??r??lm????t??r.

Prof. Er??il Arcelik Uluslararas?? Dan????ma Kurulu ??yesi, Allianz Uluslararas?? Dan????ma Kurulu ??yesi, Swiss Innovation valley dan????ma kurulu ??yesi ve European Machine Vision Association Bilimsel ve End??stiyel Dan????ma kurulu ??yesi olarak g??rev yapmaktad??r. Seri giri??imci olarak ??al????malar??na devam eden Prof. Er??il Vispera Bilgi Teknolojileri A.??.???nin orta???? ve CEO???sudur. Prof. Er??il sertifikal?? melek yat??r??mc?? ve Keiretsu Melek Yat??r??m a???? ??yesidir.""",
              "https://www.linkedin.com/in/aytul-ercil-b833b43/",
              """Profesor Dr. Ayt??l Er??il Bo??azi??i Universitesi Elektrik M??hendisli??i ve Matematik B??l??mlerinden 1979 y??l??nda lisans, Brown Universitesi, uygulamal?? matematik b??l??m??nden 1980 y??l??nda y??ksek lisans, 1983 y??l??nda ise Doktora derecesini alm????t??r. 5 y??l General Motors Ara??t??rma Laboratuvar??nda ??al????t??ktan sonra 1988 - 2001 y??llar?? aras??nda Bo??azi??i Universitesinde ????retim ??yeli??i ve kurucusu oldu??u BUPAM Yapay G??rme Laboratuvar??n??n direkt??rl??????n?? yapm????t??r. 2001 -2013 y??llar??nda ise Sabanc?? ??niversitesinde ????retim ??yeli??i ve kurucusu oldu??u VPALAB yapay g??rme laboratuvar??n??n direkt??rl??????n?? yapm????t??r. ??e??itli uluslararas?? projelerde (Nato, FP4, Eureka, NSF, FP6, Nedo, FP7) ara??t??rmac??/proje y??r??t??c??s?? olarak g??rev yapm???? olan Prof. Er??il, T??T??AD ??? T??rk ??r??nt?? Tan??ma ve ??mge Analizi Derne??inin kurucu ba??kan?? olup, IAPR ???International Association of Pattern Recognition?????n y??netim kurulu ??yesidir. 2006 y??l??nda Prof. Er??il???in kurdu??u Vistek ISRA Vision A.??. Aral??k 2013???de yapay g??rme konusunda Avrupa???da 1 numara, d??nyada 3. konumda olan Alman ISRA Vision firmas??na sat??lm????t??r. Prof. Er??il???in ??al????malar?? ???Uluslararas?? Ba??ar?? ??d??l?????, Eureka Ba??ar?? ??yk??s??, Endeavor giri??imcisi, 2010 teknoloji ??d??l?? finalisti, Veuve Clicquot ???y??l??n en etkin kad??n giri??imcisi??? ??d??l??, Makina ve Aksesuarlar?? ??retim Teknolojileri yar????mas??nda birincilik ??d??l??, ???2013 T??rkiye???nin kad??n giri??imcisi???, ???Kristal A??a?? y??l??n kad??n giri??imcisi???, 2014 Ansiad ???y??l??n kad??n giri??imcisi???, ???Microsoft Bili??imde Fark Yaratan Kad??n Lider??? ??d??l?? gibi bir??ok ulusal ve uluslararas?? ??d??le lay??k g??r??lm????t??r.

Prof. Er??il Arcelik Uluslararas?? Dan????ma Kurulu ??yesi, Allianz Uluslararas?? Dan????ma Kurulu ??yesi, Swiss Innovation valley dan????ma kurulu ??yesi ve European Machine Vision Association Bilimsel ve End??stiyel Dan????ma kurulu ??yesi olarak g??rev yapmaktad??r. Seri giri??imci olarak ??al????malar??na devam eden Prof. Er??il Vispera Bilgi Teknolojileri A.??.???nin orta???? ve CEO???sudur. Prof. Er??il sertifikal?? melek yat??r??mc?? ve Keiretsu Melek Yat??r??m a???? ??yesidir.""",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              "Kapan???? Partisi (??ekili??)",
              "",
              "",
              "19:00-19:30",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
          ],
        ),
      );
    } else {
      return Container(
        child: Column(
          children: [
            eventCard(
              AppLocalizations.of(context).translate('opening'),
              "",
              "",
              "13:45-14:00",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('presentations'),
              "",
              "",
              "14:00-15:00",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('break'),
              "",
              "",
              "15:00-15:15",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCard(
              AppLocalizations.of(context).translate('ceremony'),
              "",
              "",
              "15:20",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
          ],
        ),
      );
    }
  }

  speakerDetail(
      String imageUrl, String speaker, String about, String linkedin) {
    return Container(
      height: 680,
      width: 1000,
      color: kBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Column(
                  children: [
                    Container(
                      height: 200,
                      child: ClipOval(
                        child: Image.asset(
                          "assets/$imageUrl",
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    linkedin != ""
                        ? MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Container(
                              height: 50,
                              child: GestureDetector(
                                onTap: () async {
                                  if (await canLaunch(linkedin)) {
                                    await launch(linkedin);
                                  }
                                },
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/linkedin.png',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  speaker,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: MediaQuery.of(context).size.width / 32,
                  ),
                ),
                SizedBox(
                  width: 50,
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  about,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: MediaQuery.of(context).size.width / 108,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget eventCardSmaller(
      String title,
      String speaker,
      String speakerTitle,
      String time,
      String imageUrl,
      bool isSpeakerTitleSmall,
      bool isTwoSpeakers,
      String secondSpeaker,
      String secondSpeakerTitle,
      String secondSpeakerImageUrl,
      String linkedinFirst,
      String aboutFirst,
      String linkedinSecond,
      String aboutSecond) {
    return Align(
      alignment: Alignment.centerLeft,
      child: Column(
        children: [
          SizedBox(
            height: 30,
          ),
          Text(
            time,
            style: GoogleFonts.montserrat(
              color: Colors.white,
              fontSize: MediaQuery.of(context).size.width / 32,
            ),
          ),
          SizedBox(height: 40),
          speaker == ""
              ? Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: 100,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.25,
                        child: Text(
                          title,
                          maxLines: 3,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 24,
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              : Container(
                  width: MediaQuery.of(context).size.width / 1.2,
                  height: isTwoSpeakers ? 400 : 300,
                  child: Column(
                    children: [
                      Container(
                        width: MediaQuery.of(context).size.width / 1.25,
                        child: Text(
                          title,
                          maxLines: 8,
                          textAlign: TextAlign.left,
                          style: GoogleFonts.montserrat(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 24,
                          ),
                        ),
                      ),
                      SizedBox(height: 40),
                      Container(
                        child: Row(
                          children: [
                            imageUrl != ""
                                ? Container(
                                    width: 80,
                                    height: 80,
                                    child: MouseRegion(
                                      cursor: SystemMouseCursors.click,
                                      child: GestureDetector(
                                        onTap: () {
                                          showDialog(
                                            context: context,
                                            builder: (dialogContext) =>
                                                AlertDialog(
                                              backgroundColor: Colors.white,
                                              shape: RoundedRectangleBorder(
                                                  borderRadius:
                                                      BorderRadius.circular(
                                                          16)),
                                              content: speakerDetailSmaller(
                                                  imageUrl,
                                                  speaker,
                                                  aboutFirst,
                                                  linkedinFirst),
                                            ),
                                          );
                                        },
                                        child: ClipOval(
                                          child: Image.asset(
                                            'assets/$imageUrl',
                                            fit: BoxFit.fitHeight,
                                          ),
                                        ),
                                      ),
                                    ),
                                  )
                                : Container(),
                            SizedBox(width: 20),
                            Column(
                              children: [
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.8,
                                  child: Text(
                                    speaker,
                                    textAlign: TextAlign.left,
                                    maxLines: 2,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.orange,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 24,
                                    ),
                                  ),
                                ),
                                Container(
                                  width:
                                      MediaQuery.of(context).size.width / 1.8,
                                  child: Text(
                                    speakerTitle,
                                    textAlign: TextAlign.left,
                                    maxLines: 5,
                                    style: GoogleFonts.montserrat(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      isTwoSpeakers
                          ? SizedBox(
                              height: 50,
                            )
                          : SizedBox(height: 0),
                      isTwoSpeakers
                          ? Container(
                              child: Row(
                                children: [
                                  secondSpeakerImageUrl != ""
                                      ? Container(
                                          width: 80,
                                          height: 80,
                                          child: MouseRegion(
                                            cursor: SystemMouseCursors.click,
                                            child: GestureDetector(
                                              onTap: () {
                                                showDialog(
                                                  context: context,
                                                  builder: (dialogContext) =>
                                                      AlertDialog(
                                                    backgroundColor:
                                                        Colors.white,
                                                    shape:
                                                        RoundedRectangleBorder(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        16)),
                                                    content: speakerDetailSmaller(
                                                        secondSpeakerImageUrl,
                                                        secondSpeaker,
                                                        aboutSecond,
                                                        linkedinSecond),
                                                  ),
                                                );
                                              },
                                              child: ClipOval(
                                                child: Image.asset(
                                                  'assets/$secondSpeakerImageUrl',
                                                  fit: BoxFit.fitHeight,
                                                ),
                                              ),
                                            ),
                                          ),
                                        )
                                      : Container(),
                                  SizedBox(width: 20),
                                  Column(
                                    children: [
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.8,
                                        child: Text(
                                          secondSpeaker,
                                          maxLines: 2,
                                          style: GoogleFonts.montserrat(
                                            color: Colors.orange,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 24,
                                          ),
                                        ),
                                      ),
                                      Container(
                                        width:
                                            MediaQuery.of(context).size.width /
                                                1.8,
                                        child: Text(
                                          secondSpeakerTitle,
                                          textAlign: TextAlign.left,
                                          maxLines: 4,
                                          style: GoogleFonts.montserrat(
                                            color: Colors.white,
                                            fontWeight: FontWeight.w400,
                                            fontSize: 20,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            )
                          : Container(),
                    ],
                  ),
                ),
        ],
      ),
    );
  }

  Container eventListSmallerContainer() {
    if (selectedButton == 0) {
      return Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            eventCardSmaller(
              AppLocalizations.of(context).translate('opening_speech'),
              "Hakan K??z??ltoprak",
              "Director of TOBB ETU Technology Transfer Office",
              "12:30-12.45",
              "hakan_kiziltoprak.jpg",
              false,
              true,
             "Do??. Dr. G??knur B??ke",
              "Ar-Ge ve ??novasyondan Sorumlu Rekt??r Dan????man??",
              "goknur_buke.jpg",
              "https://www.linkedin.com/in/hakankiziltoprak/?originalSubdomain=tr",
              "Special Advisor to President - TOBB Director,Technology Transfer Office - TOBB ETU Member of the Board of Directors, Turkish Accelerator Radiation Laboratory - TARLA Finance Committee Delegate & Chair of ILO Forum - CERN",
              "https://www.linkedin.com/in/g%C3%B6knur-b%C3%BCke-490a1749/?originalSubdomain=tr",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('fintech_ecosystem'),
              "Deniz G??ven",
              "CEO and Executive Board of Director at Mox Bank",
              "12:50-13:40",
              "deniz_guven.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/denizguven/",
              """Deniz G??ven is an internationally recognized leader in driving digital transformations and bringing new digital banking experiences to audiences globally.

At Standard Chartered, he oversees a great number of initiatives, ranging from global digital insights & strategies, client journeys, and optimizations, digital wealth initiatives to collaborations with leading tech firms and emerging start-ups. His aim is to transform the Bank into a digital business and to create fresh and exciting digital experiences. Deniz believes that by integrating banking to client???s lives seamlessly, the Bank adds the human touch that compliments people???s active and fast-paced lifestyles.

Prior to joining Standard Chartered, Deniz served as the Senior Vice President at BBVA Group???s Garanti Bank, Turkey???s most valuable company by market capitalization. His role included the management and oversight of mobile and online banking channels, ATM and voice technologies including call center, along with user experience and service design, digital marketing and communications, partnering, corporately owned websites, and social media channels.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('world_wants'),
              "Mustafa Can",
              "Yarat??c?? Marka Dan????man??",
              "13:45-14:25",
              "mustafa_can.jpeg",
              false,
              false,
              "",
              "",
              "",
              "",
              """70???li y??llar??n ba????nda T??rkiye???nin tam da nedenini anlamadan birbirine sa??c?? solcu diyerek ??tekile??tirdikleri zamanlarda do??du.

??ocuklu??unu eski bir ba??kent olma havas??n?? hen??z kaybetmemi?? Trabzon???da ?????o??unlukla hayal kurarak ve hayat ansiklopedisi okuyarak ??? ge??irdi.

80???li y??llar??n ortalar??nda ???Hayalle peynir gemisi y??r??m??yor??? laf??n?? ????rendi??i Samsuna ta????nd??. Kaos teorisine uygun ??ekilde, lisedeki ????retmeninin itinas??yla, Resim B??l??m??n?? kazand?? ve okudu.

De??i??ik ve ilgisini ??eken hemen her ??eyi ????renmek hobisiydi. ??niversiteyi bitirene kadar, ??ocuk yuvas??nda resim ????retmenli??inden, otopark bek??ili??ine kadar yirmiye yak??n i??te ??al????t??. T??rkiye???nin b??y??k bir b??l??m??n?? dola??t??.

Bir ka?? y??l ????retmenlik yapt??ktan sonra Milenyumla birlikte ??stanbul???a yerle??ti.

Bir??ok projede ba????ms??z art direkt??r ve y??netmen olarak ??al????t??.

Farkl?? konulara ilgisini -ya da maymun i??tahl??l??????n??- en iyi giderece??i mesle??e y??neldi. 2007 y??l??nda kendi reklam ajans??n?? kurdu. On y??l kadar bu ajans??n ajans ba??kanl??????n?? yapt??. Kozmetikten sa??l????a, hukuktan kuru yemi??e bir??ok sekt??rde yerli ve uluslararas?? markalarla b??t??nle??ik pazarlama, markala??ma, ileti??im fikirleri ??zerine ??e??itli projeler ??al????t??.

www.gecmisgazete.com???u hayata ge??irdi.

Marka yay??nc??l??????, ki??isel markala??ma, yak??n gelecekteki ileti??im modelleri, yerel markala??ma, profesyonel fikir ??reticisi olmak gibi konulara ??zel ilgi g??sterdi.

T??rkiye???de ???fikir ajans????? olur mu diye sordu ve denedi.

Halen ???Yarat??c?? Marka Dan????man????? olarak bir??ok marka ve ki??iye dan????manl??k vermektedir.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('coffee_break'),
              "",
              "",
              "14:30-15:00",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('build_future'),
              "Mustafa Sava??",
              "Founder of Kimola",
              "15:00-15:40",
              "mustafa_savas.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/mustafasavas/",
              "He studied Mechanical Engineering at university and worked as a software developer and trainer for many years. Today, he leads the core technology development of Kimola and he is also responsible for company???s future plans and strategies.",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              "Giri??imcilikte Global Ba??ar?? Nas??l Yakalan??r?",
              "Sezer De??irmenba????",
              "Industry Manager; Start-Ups, Apps & Gaming at Google",
              "15:45-16:25",
              "sezer_degirmenbasi.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/sezer/",
              "Sezer De??irmenba???? ??T?? ????letme M??hendisli??i b??l??m??nden 2006 y??l??nda mezun oldu. 2009 y??l??nda Bo??azi??i ??niversitesi'nde ????letme Bili??im Sistemleri b??l??m??nde y??ksek lisans??n?? tamamlad??. 2006 - 2007 y??llar?? aras??nda GittiGidiyor.com'da Category & Marketing Specialist olarak ??al????t??. Ard??ndan 2007 - 2010 y??llar?? aras??nda Sony'de Analytics & Communications Consultant olarak g??rev ald??. 2010 y??l??ndan beri ??al????makta oldu??u ??irket olan Google'da ise Account Strategist, Account Manager, Principal Account Manager olmak ??zere bir??ok pozisyonda g??rev yapt??. ??u anda Industry Manager olarak Google'da ??al????maya devam etmekte.",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('coffee_break'),
              "",
              "",
              "16:30-17:00",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('evolving'),
              "??i??dem Kayal??",
              "Microsoft MEA Teknoloji Direkt??r??, Teknolojide Kad??n Derne??i Y??netim Kurulu ??yesi",
              "17:00-17:55",
              "cigdem_kayali.jpg",
              true,
              true,
              "Zehra ??ney",
              "Founding President of Teknolojide Kad??n Derne??i (Wtech)",
              "zehra_oney.jpg",
              "https://www.linkedin.com/in/cigdem-kayali-0b8555/",
              """??i??dem Kayal??, kurumlar??n dijital d??n??????m yolculuklar??na ??????k tutan, h??zla geli??en teknoloji trendlerinin yayg??nla??t??r??lmas??nda rol oynayan liderlerdendir. Son 5 y??l??n?? farkl?? sekt??rlerin bulut servislerinden yararlanmalar?? i??in ??aba harcad?? ve Microsoft???un T??rkiye???de genel bulutta lider olarak yer almas??nda rol oynad??.

Kontoll?? riskler almay?? seven, derin end??stri bilgisine sahip olan Kayal??, kurumlar??n ve t??keticilerin bulut servisleri ile tan????mas?? i??in ??nc??l??k etmi??tir. Kayal??, ba??ta Office 365 olmak ??zere Microsoft bulut servislerinin pazar stratejisini tasarlad??, geli??tirdi ve y??netti. Microsoft???taki 20 y??ll??k g??rev s??resi boyunca, Kayal?? i?? stratejileri geli??tirerek ve yeni i?? modellerini hayata ge??irerek ??n kazand??. Microsoft MEA, CEE ve EMEA b??lge ofislerinde farkl?? y??neticilik pozisyonlar??nda g??rev ald??. B??lge ??lkelerindeki dijital d??n??????m faliyetlerinde liderlik g??sterdi??i gibi, farkl?? sekt??rlerde bu ??r??n gruplar??n??n uyarlamalar??nda rol alm????t??r.

Kayal??, ????letme alan??nda Y??ksek Lisans derecesine sahip bir Bilgisayar M??hendisidir.""",
              "https://www.linkedin.com/in/zehraoney/",
              """Futurist, mobil d??n??????m uzman??, yat??r??mc??, uygulamac??, konu??mac??, teknoloji markala??ma ve pazarlama uzman?? olan Zehra ??ney 1964 y??l??nda ??stanbul???da do??du, ??stanbul ??niversitesi???nde Ekonomi e??itimi ald??ktan sonra 10 y??l boyunca Turizm sekt??r??nde T??rkiye???nin say??l?? acentelerinde ??st d??zey pozisyonlarda g??rev ald??. Son 16 y??lda ise Telekom??nikasyon, Mobil ve Dijital alanlarda profesyonel y??netici olarak kariyerine devam etti. 2002 ??? 2007 y??llar?? aras??nda Turkcell???de Uluslararas?? ???? Geli??tirme, Avrupa Birli??i ve Amerika ??li??kilerinde Y??netici olarak g??rev yapan Zehra ??ney, 2007 ??? 2011 y??llar?? aras??nda Mobilera A.??. Genel M??d??rl?????? ile Mobilera BV Genel M??d??r Yard??mc??l?????? g??revlerini e??zamanl?? olarak y??r??tt??. 

 

2011 y??l??nda kendi ajans?? 360+ Media Interactive???i kuran Zehra ??ney, Ajans Ba??kan?? olarak g??revini s??rd??rmektedir. 2013 y??l??nda T??rkiye???yi art??r??lm???? ger??eklik ile tan????t??rm????t??r. 2011 y??l??nda Londra ??ngiltere???de kurulan ve g??n??m??zde d??nya ??ap??nda 65 milyondan fazla ??yeye sahip olan art??r??lm???? ger??eklik uygulamas?? Blippar?????n 2014-2017 y??llar?? aras??nda T??rkiye CEO???su ve ayn?? zamanda Blippar Global SMT (Senior Management Team) ve Blippar T??rkiye M??nhas??r Temsilcisi olarak da g??rev yapm????t??r.

 

Zehra ??ney, Teknolojide Kad??n Derne??i Kurucu Ba??kan??, Dor??e Prefabrik Ba????ms??z Y??netim Kurulu ve ??dare Meclisi ??yesi, Bah??e??ehir ??niversitesi Graduate School of Business Y??netim Kurulu ??yesi, MMA (Mobile Marketing Association) T??rkiye Y??netim Kurulu ve ??cra Kurulu ??yesi, T??rkiye Kad??n Giri??imciler Derne??i (KAG??DER) ??yesi, TA??K (T??rkiye-ABD ???? Konseyi) Dijital ??leti??im Dan????man?? ve Startupbootcamp merkezli T??rk Mentor Hareketi, Mentor Effect platformu Lead Mentor????? olarak da ??al????malar??na devam etmektedir. ??ney ayn?? zamanda pazarlama ve reklam alanlar??nda art??r??lm???? ger??eklik, yapay zeka, nesnelerin interneti ve sanal ger??eklik uygulamalar?? uzman?? ve uygulay??c??s??d??r. """,
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('enterprise'),
              "Ceri Cukran",
              "Managing the startup investment process at StartersHub - Co-Founder at Insumo",
              "18:00-19:00",
              "ceri_cukran.jpg",
              false,
              true,
              "Haluk Ni??li",
              "Director of Strategy and Finance at Thread In Motion",
              "haluk_nisli.jpg",
              "https://www.linkedin.com/in/ceri-cukran-67204960/",
              "Ceri Cukran, 2017 y??l??nda istanbul Bilgi ??niversitesi ????letme B??l??m??'nden mezun oldu. Insumo'nun kurucu orta???? ve San Francisco, California merkezli StartersHub'??n orta????d??r. Daha ??nce Gamer's Qube'da Business Development Manager ve Big Chefs'te Assistant Manager olarak g??rev yapt??.",
              "https://www.linkedin.com/in/haluk-ni%C5%9Fli-bb6aa692/",
              "Ko?? ??niversitesi End??stri M??hendisli??i b??l??m??nden mezun olduktan sonra yine Ko?? ??niversitesi Uluslararas?? Y??netim Y??ksek Lisans?????n?? tamamlayan Haluk Ni??li, erken a??ama teknoloji yat??r??m fonu olan StartersHub???da Yat??r??m ve Hukuki ??li??kiler M??d??r?? olarak g??rev alm????t??r. Risk sermayesi yat??r??m fonlar??ndan sonra giri??imcilik konusunda da kendini geli??tirmeyi ama??layan Haluk Ni??li, an itibariyle giyilebilir teknoloji platformu ??reten Thread in Motion ??irketinde Strateji ve Finans Direkt??r?? olarak g??rev yapmaktad??r.",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
          ],
        ),
      );
    }
    if (selectedButton == 1) {
      return Container(
        child: Column(
          children: [
            eventCardSmaller(
              "Yar??n??n D??nyas??nda Giri??imcilik",
              "Yasin Oral",
              "Founder, CEO / Paribu",
              "12:30-13:10",
              "yasin_oral.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/yasinoral/",
              """1985 y??l??nda Ankara???da do??an Yasin Oral, yaz??l??m ??al????malar??na lise d??neminde ba??lad??. 2001???de, hen??z lise ????rencisiyken T??B??TAK?????n bir yar????mas??na kat??ld?? ve T??B??TAK web sitesi geli??tirmelerine d????ar??dan destek sa??lad??.

??niversite y??llar??nda ta????mac??l??k sekt??r??nde faaliyet g??steren bir internet sitesi kurdu ve site k??sa s??re i??inde nakliyeciler aras??ndaki koordinasyonu sa??layan tek platform haline geldi.

2009???da Gazi ??niversitesi ??ktisadi ve ??dari Bilimler Fak??ltesi???nden mezun olan Oral, 2010???da T??rkiye???nin ilk online matbaas?? matbuu.com???u hayata ge??irdi.

Bu giri??imlerinin yan?? s??ra t??m d??nyada hizmet veren bir??ok mesafe hesaplama ve rota g??r??nt??leme projesi yaratarak g??nl??k 250 binin ??zerinde kullan??c??ya hizmet vermeye ba??lad??. 2015???te online bilet sat??n al??m platformu Biletgo???yu kurdu.

2015???te Paribu???nun ??n haz??rl??k ??al????malar??na ba??lad??. Paribu, 2016???da kuruldu, 14 ??ubat 2017???de kullan??ma a????ld??.

Halen Paribu CEO???su olan Oral, Blockchain T??rkiye Platformu Y??r??tme Kurulu ??yesi ve T??rkiye Gen?? ???? Adamlar?? Derne??i ??yesidir.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('measuring'),
              "Beril Kocadereli",
              "MSc Innovation at KTH I Norrsken Impact Accelerator | Startup Grind Stockholm",
              "13:10-13:55",
              "beril_kocadereli.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/berilkocadereli/",
              "Beril Kocadereli Bilkent ??niversitesi End??stri M??hendisli??inden 2019 y??l??nda mezun oldu. 2021 y??l??nda KTH Royal Institute of Technology'de Entrepreneurship and Innovation Management b??l??m??nde master'??n?? tamamlad??. \"Social impact measurement from an investor perspective: Impact investments\" konusunda master tezi haz??rlad??. ??u anda Startup Grind Stockholm'de Parnerships Lead ve Norrsken Foundation'da Impact Accelerator Intern olarak g??rev almakta.",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('osman_baytaroglu'),
              "Osman Baytaro??lu",
              "Co Founder and CEO at Agcurate, Accurate Rural Intelligence for Agribusiness.",
              "14:00-14:55",
              "osman_baytaroglu.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/osmanbaytaroglu/",
              """He has gathered teams for high impact projects and built a couple of great products:

>He has fundraised an amount of \$15.000 for L??SEV (the Foundation for Children with Leukemia) as Vice President of Fine Arts Society at METU (2009)

>Between 2010 and 2013 he has led a student team of engineers, architects, designers, and marketers that succeeded to be selected to compete in Solar Decathlon China 2013, a student competition about designing and building solar powered houses.

>In 2014, he founded Innomotive, and they released global-first single sensor solution for intelligent intersection management. They exited the company later.

>In 2017, he founded Agrovisio and they delivered first "soil yield potential map of Turkey" which constitutes the baseline of drought insurance products of TARSIM, Agriculture Insurance Pool of Turkey.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('mustafa_namoglu'),
              "Mustafa Namo??lu",
              "CEO at ikas.com",
              "15:00-15:45",
              "mustafa_namoglu.jpeg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/namoglu/",
              """1989 y??l??nda Girne / KKTC???de d??nyaya geldi.

2010 y??l??nda Bilkent ??niversitesi CTIS b??l??m??nden mezun olmu??tur.

2011 y??l??nda kurdu??u MUGO, d??nyaca ??nl?? markalar??n distrib??t??rl??klerini
yapmakta ayn?? zamanda perakende sekt??r??nde
faaliyet g??stermektedir.

2017 y??l??nda kurdu??u ikas, KOB?????lerin ma??aza, pazar yerleri ve e-ticaret
sitelerini tek bir y??netebilmelerini sa??layan bir SaaS ??irketidir.

2020 y??l??nda ba??latt?????? Kolay De??il YouTube kanal?? ile tecr??belerini tekrar
tekrar kendisine hat??rlatmay?? ve ba??kalar??na na??izane faydal?? olmay??
hedefliyor.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('coffee_break'),
              "",
              "",
              "15:45-16:15",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              "Ak??ll?? ??ehirlerde Dijital Reklamc??l??k",
              "Onur Karde??ler",
              "Co-founder of Firefly",
              "16:15-17:00",
              "onur_kardesler.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/onurkardesler/",
              "Ko?? ??niversitesi,Elektrik Elektronik M??hendisli??i B??l??m?????nden mezun oldu. INSEAD???dan MBA diplomas?? ald??. Giri??imcilik hayat??na Londra???da kurdu??u teknoloji ??irketi ile ba??lad??. Silikon Vadisi???nde ??e??itli teknoloji ??irketlerinde ??r??n Y??neticisi pozisyonunda ??al????t??. Firefly????? Kaan G??nay ile 2017 senesinde kurdu.",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('sahin_boydas'),
              "??ahin Boyda??",
              "Founder & CEO at RemoteTeam.com",
              "17:00-17:55",
              "sahin_boydas.jpg",
              false,
              false,
              "",
              "",
              "",
              "https://www.linkedin.com/in/sahinboydas/",
              """Sahin Boydas is a serial entrepreneur living in Silicon Valley.
Sahin has built and managed 100% remote teams for over a decade. As CEO and founder of RemoteTeam.com, he is working to solve HR and operational problems related to remote work.

Past,
He co-founded movie marketing platform MovieLaLa downloaded millions and reached 360M people with network partnerships. Movielala sold it to Gfycat.

Later he co-founded one of the most successful consumer-facing Augmented Reality apps: Leo AR.
Leo AR featured more than 100+ and selected as Apple's favorite app and App of the day many times.
MojiLaLa and Leo were part of 500 Startups Batch 19, Stanford StartX Batch S19, Betaworks Vision Camp, Quark Accerator.""",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('aytul_ercil'),
              "Ayt??l Er??il",
              "Partner and co-CEO/chair of the board at Vispera A.S.",
              "18:00-19:00",
              "aytul_ercil.jpg",
              false,
              false,
              "Ayt??l Er??il",
              "Partner and co-CEO/chair of the board at Vispera A.S.",
              "aytulercil.jpg",
              "https://www.linkedin.com/in/aytul-ercil-b833b43/",
              """Profesor Dr. Ayt??l Er??il Bo??azi??i Universitesi Elektrik M??hendisli??i ve Matematik B??l??mlerinden 1979 y??l??nda lisans, Brown Universitesi, uygulamal?? matematik b??l??m??nden 1980 y??l??nda y??ksek lisans, 1983 y??l??nda ise Doktora derecesini alm????t??r. 5 y??l General Motors Ara??t??rma Laboratuvar??nda ??al????t??ktan sonra 1988 - 2001 y??llar?? aras??nda Bo??azi??i Universitesinde ????retim ??yeli??i ve kurucusu oldu??u BUPAM Yapay G??rme Laboratuvar??n??n direkt??rl??????n?? yapm????t??r. 2001 -2013 y??llar??nda ise Sabanc?? ??niversitesinde ????retim ??yeli??i ve kurucusu oldu??u VPALAB yapay g??rme laboratuvar??n??n direkt??rl??????n?? yapm????t??r. ??e??itli uluslararas?? projelerde (Nato, FP4, Eureka, NSF, FP6, Nedo, FP7) ara??t??rmac??/proje y??r??t??c??s?? olarak g??rev yapm???? olan Prof. Er??il, T??T??AD ??? T??rk ??r??nt?? Tan??ma ve ??mge Analizi Derne??inin kurucu ba??kan?? olup, IAPR ???International Association of Pattern Recognition?????n y??netim kurulu ??yesidir. 2006 y??l??nda Prof. Er??il???in kurdu??u Vistek ISRA Vision A.??. Aral??k 2013???de yapay g??rme konusunda Avrupa???da 1 numara, d??nyada 3. konumda olan Alman ISRA Vision firmas??na sat??lm????t??r. Prof. Er??il???in ??al????malar?? ???Uluslararas?? Ba??ar?? ??d??l?????, Eureka Ba??ar?? ??yk??s??, Endeavor giri??imcisi, 2010 teknoloji ??d??l?? finalisti, Veuve Clicquot ???y??l??n en etkin kad??n giri??imcisi??? ??d??l??, Makina ve Aksesuarlar?? ??retim Teknolojileri yar????mas??nda birincilik ??d??l??, ???2013 T??rkiye???nin kad??n giri??imcisi???, ???Kristal A??a?? y??l??n kad??n giri??imcisi???, 2014 Ansiad ???y??l??n kad??n giri??imcisi???, ???Microsoft Bili??imde Fark Yaratan Kad??n Lider??? ??d??l?? gibi bir??ok ulusal ve uluslararas?? ??d??le lay??k g??r??lm????t??r.

Prof. Er??il Arcelik Uluslararas?? Dan????ma Kurulu ??yesi, Allianz Uluslararas?? Dan????ma Kurulu ??yesi, Swiss Innovation valley dan????ma kurulu ??yesi ve European Machine Vision Association Bilimsel ve End??stiyel Dan????ma kurulu ??yesi olarak g??rev yapmaktad??r. Seri giri??imci olarak ??al????malar??na devam eden Prof. Er??il Vispera Bilgi Teknolojileri A.??.???nin orta???? ve CEO???sudur. Prof. Er??il sertifikal?? melek yat??r??mc?? ve Keiretsu Melek Yat??r??m a???? ??yesidir.""",
              "https://www.linkedin.com/in/aytul-ercil-b833b43/",
              """Profesor Dr. Ayt??l Er??il Bo??azi??i Universitesi Elektrik M??hendisli??i ve Matematik B??l??mlerinden 1979 y??l??nda lisans, Brown Universitesi, uygulamal?? matematik b??l??m??nden 1980 y??l??nda y??ksek lisans, 1983 y??l??nda ise Doktora derecesini alm????t??r. 5 y??l General Motors Ara??t??rma Laboratuvar??nda ??al????t??ktan sonra 1988 - 2001 y??llar?? aras??nda Bo??azi??i Universitesinde ????retim ??yeli??i ve kurucusu oldu??u BUPAM Yapay G??rme Laboratuvar??n??n direkt??rl??????n?? yapm????t??r. 2001 -2013 y??llar??nda ise Sabanc?? ??niversitesinde ????retim ??yeli??i ve kurucusu oldu??u VPALAB yapay g??rme laboratuvar??n??n direkt??rl??????n?? yapm????t??r. ??e??itli uluslararas?? projelerde (Nato, FP4, Eureka, NSF, FP6, Nedo, FP7) ara??t??rmac??/proje y??r??t??c??s?? olarak g??rev yapm???? olan Prof. Er??il, T??T??AD ??? T??rk ??r??nt?? Tan??ma ve ??mge Analizi Derne??inin kurucu ba??kan?? olup, IAPR ???International Association of Pattern Recognition?????n y??netim kurulu ??yesidir. 2006 y??l??nda Prof. Er??il???in kurdu??u Vistek ISRA Vision A.??. Aral??k 2013???de yapay g??rme konusunda Avrupa???da 1 numara, d??nyada 3. konumda olan Alman ISRA Vision firmas??na sat??lm????t??r. Prof. Er??il???in ??al????malar?? ???Uluslararas?? Ba??ar?? ??d??l?????, Eureka Ba??ar?? ??yk??s??, Endeavor giri??imcisi, 2010 teknoloji ??d??l?? finalisti, Veuve Clicquot ???y??l??n en etkin kad??n giri??imcisi??? ??d??l??, Makina ve Aksesuarlar?? ??retim Teknolojileri yar????mas??nda birincilik ??d??l??, ???2013 T??rkiye???nin kad??n giri??imcisi???, ???Kristal A??a?? y??l??n kad??n giri??imcisi???, 2014 Ansiad ???y??l??n kad??n giri??imcisi???, ???Microsoft Bili??imde Fark Yaratan Kad??n Lider??? ??d??l?? gibi bir??ok ulusal ve uluslararas?? ??d??le lay??k g??r??lm????t??r.

Prof. Er??il Arcelik Uluslararas?? Dan????ma Kurulu ??yesi, Allianz Uluslararas?? Dan????ma Kurulu ??yesi, Swiss Innovation valley dan????ma kurulu ??yesi ve European Machine Vision Association Bilimsel ve End??stiyel Dan????ma kurulu ??yesi olarak g??rev yapmaktad??r. Seri giri??imci olarak ??al????malar??na devam eden Prof. Er??il Vispera Bilgi Teknolojileri A.??.???nin orta???? ve CEO???sudur. Prof. Er??il sertifikal?? melek yat??r??mc?? ve Keiretsu Melek Yat??r??m a???? ??yesidir.""",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              "Kapan???? Partisi (??ekili??)",
              "",
              "",
              "19:00-19:30",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
          ],
        ),
      );
    } else {
      return Container(
        child: Column(
          children: [
            eventCardSmaller(
              AppLocalizations.of(context).translate('opening'),
              "",
              "",
              "13:45-14:00",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('presentations'),
              "",
              "",
              "14:00-15:00",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('break'),
              "",
              "",
              "15:00-15:15",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
            eventCardSmaller(
              AppLocalizations.of(context).translate('ceremony'),
              "",
              "",
              "15:20",
              "",
              false,
              false,
              "",
              "",
              "",
              "",
              "",
              "",
              "",
            ),
            Divider(
              thickness: 5,
              color: dividerColor,
              height: 1,
            ),
          ],
        ),
      );
    }
  }

  speakerDetailSmaller(
      String imageUrl, String speaker, String about, String linkedin) {
    return Container(
      height: 580,
      width: 1000,
      color: kBackgroundColor,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  height: 100,
                  child: ClipOval(
                    child: Image.asset(
                      "assets/$imageUrl",
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                ),
                SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Container(
                      width: 200,
                      child: Text(
                        speaker,
                        style: GoogleFonts.montserrat(
                          color: Colors.white,
                          fontWeight: FontWeight.w200,
                          fontSize: MediaQuery.of(context).size.width / 24,
                        ),
                      ),
                    ),
                    SizedBox(height: 30),
                    linkedin != ""
                        ? MouseRegion(
                            cursor: SystemMouseCursors.click,
                            child: Container(
                              height: 50,
                              child: GestureDetector(
                                onTap: () async {
                                  if (await canLaunch(linkedin)) {
                                    await launch(linkedin);
                                  }
                                },
                                child: ClipOval(
                                  child: Image.asset(
                                    'assets/linkedin.png',
                                    fit: BoxFit.fitHeight,
                                  ),
                                ),
                              ),
                            ),
                          )
                        : Container(),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 50,
            ),
            Expanded(
              child: SingleChildScrollView(
                child: Text(
                  about,
                  style: GoogleFonts.montserrat(
                    color: Colors.white,
                    fontWeight: FontWeight.w200,
                    fontSize: MediaQuery.of(context).size.width / 32,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
