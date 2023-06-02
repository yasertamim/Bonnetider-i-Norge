import 'package:flutter/material.dart';

import 'Ziker.dart';

class AzkarMasa extends StatelessWidget {
  final List<Ziker> AzkarKveld = [
  
    Ziker(title: "عشر مرات", content: "سبحان الله وبحمده: عدد خلقه، ورضا نفسه، وزنة عرشه، ومداد كلماته،َ"),
    Ziker(title: "ثلاث مرات", content: "اللهم صلّ وسلّم على سيدنا محمد"),
    Ziker(title: "ثلاث مرات", content: "اللهم عافني في بدني، اللهم عافني في سمعي، اللهم عافني في بصري، لا إله إلا أنت، اللهم إني أعوذ بك من الكفر والفقر، اللهم إني أعوذ بك من عذاب القبر، لا إله إلا أنتَ"),
    Ziker(title: "عشر مرات", content: "لا إله إلا الله وحده لا شريك له، له الملك وله الحمد، وهو على كل شيء قدير"),
    Ziker(title: "ثلاث مرات", content: "اللَّهُمَّ إِنَّا نَعُوذُ بِكَ مِنْ أن نُشْرِكَ بِكَ شَيْئًا نَعْلَمُهُ، وسنتغفرك لِمَا لا نَعْلَمُهُ"),
    Ziker(title: "ذِكِر", content: "اللهم بكَ أمسينا، وبكَ أصبحنا، وبكَ نحيا، وبكَ نموت، وإليك المصير"),
    Ziker(title: "آية الكرسي", content: "أَعُوذُ بِاللهِ مِنْ الشَّيْطَانِ الرَّجِيمِ : اللّهُ لاَ إِلَهَ إِلاَّ هُوَ الْحَيُّ الْقَيُّومُ لاَ تَأْخُذُهُ سِنَةٌ وَلاَ نَوْمٌ لَّهُ مَا فِي السَّمَاوَاتِ وَمَا فِي الأَرْضِ مَن ذَا الَّذِي يَشْفَعُ عِنْدَهُ إِلاَّ بِإِذْنِهِ يَعْلَمُ مَا بَيْنَ أَيْدِيهِمْ وَمَا خَلْفَهُمْ وَلاَ يُحِيطُونَ بِشَيْءٍ مِّنْ عِلْمِهِ إِلاَّ بِمَا شَاء وَسِعَ كُرْسِيُّهُ السَّمَاوَاتِ وَالأَرْضَ وَلاَ يَؤُودُهُ حِفْظُهُمَا وَهُوَ الْعَلِيُّ الْعَظِيمُ."),
    Ziker(title: "ذِكِر", content: "سبحان الله وبحمده"),
    Ziker(title: "ذِكِر", content: "اللهم ما أمسى بي من نعمة أو بأحد من خلقك فمنك وحدك لا شريك لك، فلك الحمد ولك الشكر"),
    Ziker(title: "ذِكِر", content: "اللهم إني أسألك العفو والعافية في الدنيا والآخرة، اللهم إني أسألك العفو والعافية، في ديني ودنياي وأهلي، ومالي، اللهم استر عوراتي، وآمن روعاتي، اللهم احفظني من بين يدي، ومن خلفي، وعن يميني، وعن شمالي، ومن فوقي، وأعوذ بعظمتك أن أُغتال من تحتي"),
    Ziker(title: "ذِكِر", content: "اللهم عالم الغيب والشهادة فاطر السماوات والأرض، رب كل شيء ومليكه، أشهد أن لا إله إلا أنت، أعوذ بك من شر نفسي، ومن شر الشيطان وشركه"),
    Ziker(title: "ثلاث مرات", content: "بسم الله الذي لا يضر مع اسمه شيء في الأرض ولا في السَماء وهو السميع العليم"),
    Ziker(title: "ذِكِر", content: "يا حي يا قيوم برحمتك أستغيث أصلح لي شأني كله ولا تكلني إلى نفسي طرفة عين"),
    Ziker(title: "ذِكِر", content: "أمسينا وأمسى الملك لله والحمد لله، لا إله إلا الله وحده لا شريك له، له الملك وله الحمد وهو على كل شيء قدير، رب أسألك خير ما في هذا اليوم وخير ما بعده، وأعوذ بك من شر ما في هذا اليوم وشر ما بعده، رب أعوذ بك من الكسل، وسوء الكبر، رب أعوذ بك من عذاب في النار وعذاب في القبر"),
    Ziker(title: "ذِكِر", content: "أمسينا على فطرة الإسلام وعلى كلمة الإخلاص، وعلى دين نبينا محمد صل الله عليه وسلم، وعلى ملة أبينا إبراهيم، حنيفاً مسلماً وما كان من المشركين"),
    Ziker(title: "ثلاث مرات", content: "أعوذ بكلمات الله التامات من شر ما خلق"),


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
                    Text("Kveldsbønner",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 22,
                      ),),
                    Text("أذكار المساء",
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
                itemCount: AzkarKveld.length,
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading:  Image.asset(
                        'assets/quran.png',
                        fit: BoxFit.contain,
                        height: 30,
                        width: 30,
                      ),
                      title: Text("${AzkarKveld[index].title}"),
                      subtitle: Text(AzkarKveld[index].content),
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
