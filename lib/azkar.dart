import 'package:flutter/material.dart';
import 'package:ninja_card/Ziker.dart';

class Azkar extends StatelessWidget {
  final List<Ziker> AzkarMorgen = [
    Ziker(title: "سورة الإخلاص", content: " أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ، بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم : قُلْ هُوَ اللَّهُ أَحَدٌ، اللَّهُ الصَّمَدُ، لَمْ يَلِدْ وَلَمْ يُولَدْ، وَلَمْ يَكُن لَّهُ كُفُوًا أَحَدٌ."),
    Ziker(title: "سورة الْفَلَقِ", content: " أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ، بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم : قُلْ أَعُوذُ بِرَبِّ الْفَلَقِ، مِن شَرِّ مَا خَلَقَ، وَمِن شَرِّ غَاسِقٍ إِذَا وَقَبَ، وَمِن شَرِّالنَّفَّاثَاتِ فِي الْعُقَدِ، وَمِن شَرِّ حَاسِدٍ إِذَا حَسَد.َ"),
    Ziker(title: "سورة النَّاسِ", content: " أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ، بِسْمِ اللهِ الرَّحْمنِ الرَّحِيم : قُلْ أَعُوذُ بِرَبِّ النَّاسِ، مَلِكِ النَّاسِ، إِلَهِ النَّاسِ، مِن شَرِّ الْوَسْوَاسِ الْخَنَّاسِ، الَّذِي يُوَسْوِسُ فِي صُدُورِ النَّاسِ، مِنَ الْجِنَّةِ وَ النَّاسِ.َ"),
    Ziker(title: "الصلاة على النبي", content: "اللَّهُمَّ صَلِّ وَسَلِّمْ وَبَارِكْ على نَبِيِّنَا مُحمَّد.َ"),
    Ziker(title: "ذِكِر", content: "اللهم إنّي أصبحت أثني عليك حَمداً وأشهد أن لا إله إلا الله.َ"),
    Ziker(title: "ذِكِر", content: " اللَّهُمَّ أَنْتَ رَبِّي لا إِلَهَ إِلا أَنْتَ، عَلَيْكَ تَوَكَّلْتُ، وَأَنْتَ رَبُّ الْعَرْشِ الْعَظِيمِ، مَا شَاءَ اللَّهُ كَانَ، وَمَا لَمْ يَشَأْ لَمْ يَكُنْ، وَلا حَوْلَ وَلا قُوَّةَ إِلا بِاللَّهِ الْعَلِيِّ الْعَظِيمِ، أَعْلَمُ أَنَّ اللَّهَ عَلَى كُلِّ شَيْءٍ قَدِيرٌ، وَأَنَّ اللَّهَ قَدْ أَحَاطَ بِكُلِّ شَيْءٍ عِلْمًا، اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ شَرِّ نَفْسِي، وَمِنْ شَرِّ كُلِّ دَابَّةٍ أَنْتَ آخِذٌ بِنَاصِيَتِهَا، إِنَّ رَبِّي عَلَى صِرَاطٍ مُسْتَقِيمٍ.َ"),
    Ziker(title: "ذِكِر", content: " اللّهم عافني في بدني، اللّهم عافني في سمعي، اللّهم عافني في بصري، لا إله إلا أنتَ"),
    Ziker(title: "من قالها موقناً بها حين يمسي ومات من ليلته دخل الجنة وكذلك حين يصبح", content: " اللّهمَّ أَنْتَ رَبِّي لا إلهَ إلاّ أَنْتَ، خَلَقْتَني وَأَنا عَبْدُك، وَأَنا عَلى عَهْدِكَ وَوَعْدِكَ ما اسْتَطَعْت، أَعوذُبِكَ مِنْ شَرِّ ما صَنَعْت، أَبوءُ لَكَ بِنِعْمَتِكَ عَلَيَّ وَأَبوءُ بِذَنْبي فَإغْفِرْ لي فَإِنَّهُ لا يَغْفِرُ الذُّنوبَ إِلاّ أَنْتَ."),
    Ziker(title: "من قالها ثلاثاً حين يصبح وثلاثاً حين يمسي كان حقاً على الله أن يرضيه يوم القيامه", content: "رَضيتُ بِاللهِ رَبَّاً وَبِالإسْلامِ ديناً وَبِمُحَمَّدٍ صلى الله عليه وسلم نَبِيّاً"),
    Ziker(title: "من قالها أعتقه الله من النار", content: "اللّهُمَّ إِنِّي أَصْبَحْتُ أُشْهِدُك، وَأُشْهِدُ حَمَلَةَ عَرْشِك، وَمَلائِكَتِك، وَجَميعَ خَلْقِك، إنّكَ أَنْتَ اللهُ لا إلهَ إلاّ أَنْتَ وَحْدَكَ لا شَريكَ لَك، وَأَنَّ ُ مُحَمّداً عَبْدُكَ وَرَسولُك"),
    Ziker(title: "ذِكِر", content: " اللّهُمَّ عالِمَ الغَيْبِ وَالشّهادَةِ فاطِرَ السّماواتِ وَالأرْضِ رَبَّ كلِّ شَيءٍ وَمَليكَه، أَشْهَدُ أَنْ لا إِلهَ إِلاّ أَنْت، أَعوذُ بِكَ مِن شَرِّ نَفْسي وَمِن شَرِّ الشَّيْطانِ وَشِرْكِه، وَأَنْ أَقْتَرِفَ عَلى نَفْسي سوءاً أَوْ أَجُرَّهُ إِلى مُسْلِم."),
    Ziker(title: "من قالها حين يصبح أدى شكر يومه", content: "اللّهُمَّ ما أَصْبََحَ بي مِنْ نِعْمَةٍ أَو بِأَحَدٍ مِنْ خَلْقِك، فَمِنْكَ وَحْدَكَ لا شريكَ لَك، فَلَكَ الْحَمْدُ وَلَكَ الشُّكْر."),
    Ziker(title: "ذِكِر", content: " أَصْبَحْنا وَأَصْبَحَ المُلْكُ لله وَالحَمدُ لله، لا إلهَ إلاّ اللّهُ وَحدَهُ لا شَريكَ لهُ، لهُ المُلكُ ولهُ الحَمْد، وهُوَ على كلّ شَيءٍ قدير، رَبِّ أسْأَلُكَ خَيرَ ما في هذا اليوم وَخَيرَ ما بَعْدَه، وَأَعوذُ بِكَ مِنْ شَرِّ ما في هذا اليوم وَشَرِّ ما بَعْدَه، رَبِّ أَعوذُبِكَ مِنَ الْكَسَلِ وَسوءِ الْكِبَر، رَبِّ أَعوذُبِكَ مِنْ عَذابٍ في النّارِ وَعَذابٍ في القَبْر."),
    Ziker(title: "ذِكِر", content: " أَصْبَحْنا عَلَى فِطْرَةِ الإسْلاَمِ، وَعَلَى كَلِمَةِ الإِخْلاَصِ، وَعَلَى دِينِ نَبِيِّنَا مُحَمَّدٍ صَلَّى اللهُ عَلَيْهِ وَسَلَّمَ، وَعَلَى مِلَّةِ أَبِينَا إبْرَاهِيمَ حَنِيفاً مُسْلِماً وَمَا كَانَ مِنَ المُشْرِكِينَ."),
    Ziker(title: "ذِكِر", content: " سُبْحانَ اللهِ وَبِحَمْدِهِ عَدَدَ خَلْقِه، وَرِضا نَفْسِه، وَزِنَةَ عَرْشِه، وَمِدادَ كَلِماتِه."),
    Ziker(title: "ذِكِر", content: " اللّهُمَّ عافِني في بَدَني، اللّهُمَّ عافِني في سَمْعي، اللّهُمَّ عافِني في بَصَري، لا إلهَ إلاّ أَنْتَ."),
    Ziker(title: "ذِكِر", content: "  اللّهُمَّ إِنّي أَعوذُبِكَ مِنَ الْكُفر، وَالفَقْر، وَأَعوذُبِكَ مِنْ عَذابِ القَبْر، لا إلهَ إلاّ أَنْتَ."),
    Ziker(title: "ذِكِر", content: "  اللّهُمَّ إِنِّي أسْأَلُكَ العَفْوَ وَالعافِيةَ في الدُّنْيا وَالآخِرَة، اللّهُمَّ إِنِّي أسْأَلُكَ العَفْوَ وَالعافِيةَ في ديني وَدُنْيايَ وَأهْلي وَمالي، اللّهُمَّ اسْتُرْ عوْراتي وَآمِنْ رَوْعاتي، اللّهُمَّ احْفَظْني مِن بَينِ يَدَيَّ وَمِن خَلْفي وَعَن يَميني وَعَن شِمالي، وَمِن فَوْقي، وَأَعوذُ بِعَظَمَتِكَ أَن أُغْتالَ مِن تَحْتي."),
    Ziker(title: "آية الكرسي", content: "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ : اللّهُ لاَ إِلَهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ."),
    Ziker(title: "ذِكِر", content: " اللَّهُمَّ إِنِّي أَعُوذُ بِكَ مِنْ الْهَمِّ وَالْحَزَنِ، وَأَعُوذُ بِكَ مِنْ الْعَجْزِ وَالْكَسَلِ، وَأَعُوذُ بِكَ مِنْ الْجُبْنِ وَالْبُخْلِ، وَأَعُوذُ بِكَ مِنْ غَلَبَةِ الدَّيْنِ، وَقَهْرِ الرِّجَالِ."),
    Ziker(title: "ذِكِر", content: " يَا حَيُّ يَا قيُّومُ بِرَحْمَتِكَ أسْتَغِيثُ أصْلِحْ لِي شَأنِي كُلَّهُ وَلاَ تَكِلُنِي إلَى نَفْسِي طَرْفَةَ عَيْنٍ."),
    Ziker(title: "ذِكِر", content: " يَا رَبِّ، لَكَ الْحَمْدُ كَمَا يَنْبَغِي لِجَلَالِ وَجْهِكَ، وَلِعَظِيمِ سُلْطَانِكَ."),
    Ziker(title: "ذِكِر", content: " أَصْبَحْنا وَأَصْبَحْ المُلكُ للهِ رَبِّ العالَمين، اللّهُمَّ إِنِّي أسْأَلُكَ خَيْرَ هذا اليَوْم، فَتْحَهُ، وَنَصْرَهُ، وَنورَهُ وَبَرَكَتَهُ، وَهُداهُ، وَأَعوذُ بِكَ مِنْ شَرِّ ما فيهِ وَشَرِّ ما بَعْدَه."),
    Ziker(title: "ذِكِر", content: "أَعوذُ بِكَلِماتِ اللّهِ التّامّاتِ مِنْ شَرِّ ما خَلَق."),
    Ziker(title: "ذِكِر", content: "اللَّهُمَّ إِنَّا نَعُوذُ بِكَ مِنْ أَنْ نُشْرِكَ بِكَ شَيْئًا نَعْلَمُهُ، وَنَسْتَغْفِرُكَ لِمَا لَا نَعْلَمُهُ."),
    Ziker(title: "من قالها ثلاثاً لم تصبه فجأة بلاء", content: "بِسمِ اللهِ الذي لا يَضُرُّ مَعَ إسمِهِ شَيءٌ في الأرْضِ وَلا في السّماءِ وَهوَ السّميعُ العَليم"),
    Ziker(title: "ذِكِر", content: "لا إلَه إلاّ اللهُ وَحْدَهُ لا شَرِيكَ لَهُ، لَهُ الْمُلْكُ وَلَهُ الْحَمْدُ وَهُوَ عَلَى كُلُّ شَيْءِ قَدِيرِ."),
    Ziker(title: "ذِكِر", content: "أسْتَغْفِرُ اللهَ العَظِيمَ الَّذِي لاَ إلَهَ إلاَّ هُوَ، الحَيُّ القَيُّومُ، وَأتوبُ إلَيهِ."),
    Ziker(title: "ذِكِر", content: "حَسْبِيَ اللّهُ لا إلهَ إلاّ هُوَ عَلَيهِ تَوَكَّلتُ وَهُوَ رَبُّ العَرْشِ العَظيمِ."),
    Ziker(title: "ذِكِر", content: " اللّهُمَّ بِكَ أَصْبَحْنا وَبِكَ أَمْسَينا، وَبِكَ نَحْيا وَبِكَ نَمُوتُ وَإِلَيْكَ النُّشُور."),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.grey[900],
      body: Padding(
        padding: EdgeInsets.fromLTRB(20, 30, 20, 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Container(
                  width: 60,
                  child:  PopupMenuButton<String>(
                    color: Colors.grey[900],
                    child: Image.asset(
                      'assets/menu3.png',
                      fit: BoxFit.contain,
                      color: Colors.amber,
                      height: 50,
                      width: 50,
                    ),
                    itemBuilder: (BuildContext context) {
                      return [

                        PopupMenuItem<String>(
                            value: 'Hjem',
                            child: Row(
                              children:<Widget> [
                                Image.asset(
                                  'assets/home2.png',
                                  fit: BoxFit.contain,
                                  color: Colors.amber,
                                  height: 20,
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Hjem',
                                  style: TextStyle(color: Colors.amber,
                                      fontSize: 14),),
                              ],
                            )
                        ),
                        PopupMenuItem<String>(
                            value: 'Velg by',
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  'assets/geo.png',
                                  fit: BoxFit.contain,
                                  color: Colors.amber,
                                  height: 20,
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text('Velg by',
                                  style: TextStyle(color: Colors.amber,
                                      fontSize: 14
                                  ),
                                ),
                              ],
                            )
                        ),
                        PopupMenuItem<String>(
                            value: 'Tasbih',
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  'assets/arabic.png',
                                  fit: BoxFit.contain,
                                  color: Colors.amber,
                                  height: 20,
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text('Tasbih',
                                  style: TextStyle(color: Colors.amber,
                                      fontSize: 14),
                                ),
                              ],
                            )
                        ),


                        PopupMenuItem<String>(
                            value: 'Azkar',
                            child: Row(
                              children: <Widget>[
                                Image.asset(
                                  'assets/quran.png',
                                  fit: BoxFit.contain,
                                  color: Colors.amber,
                                  height: 20,
                                  width: 20,
                                ),
                                SizedBox(
                                  width: 3,
                                ),
                                Text('Azkar',
                                  style: TextStyle(color: Colors.amber,
                                      fontSize: 14),
                                ),
                              ],
                            )
                        ),

                      ];
                    },
                    onSelected: (String value) {
                      if(value == "Velg by"){
                        Navigator.pushNamed(context, '/cities2');
                      }
                      if(value == "Hjem"){
                        Navigator.pushNamed(context, '/home');
                      }
                      if(value == "Tasbih"){
                        Navigator.pushNamed(context, '/tasbih');
                      }
                      if(value == "Azkar"){
                        Navigator.pushNamed(context, '/selectAzkar');
                      }
                    },
                  ),

                ),

                Container(
                  width: 60,
                ),

                Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text("Morgenbønner",
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 22,
                    ),),
                    Text("أذكار الصباح",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 22,
                      ),),
                  ],
                ),
              ],
            ),

          // SizedBox(
          //   height: 60,
          // ),

        Expanded(
          child: ListView.builder(
            shrinkWrap: true,
            scrollDirection: Axis.vertical,
            itemCount: AzkarMorgen.length,
            itemBuilder: (context, index) {
              return Card(
                child: ListTile(
                  leading:  Image.asset(
                    'assets/quran.png',
                    fit: BoxFit.contain,
                    height: 30,
                    width: 30,
                  ),
                  title: Text("${AzkarMorgen[index].title}"),
                  subtitle: Text(AzkarMorgen[index].content),
                  onTap: () {
                    // Handle card tap
                  },
                ),
              );
            },
          ),
        ),


          ],
        ),
      ),
    );
  }
}
