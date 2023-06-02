import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:audioplayers/audioplayers.dart';


class TasbihScreen extends StatefulWidget {
  @override
  _TasbihScreenState createState() => _TasbihScreenState();
}

class _TasbihScreenState extends State<TasbihScreen> {
  AudioPlayer? _player;
  int counter = 0;
  int tasbihCount = 0;
  int small = 33;
  int big = 100;
  int valueOfMasbaha = 0;
  String tasbih = "";
  double tasbihFont = 30;

  List<String> tasbihat = ["الله أكبر",'لا إله إلا الله','الحمد لله','سبحان الله', ' رب اغفر لي', ' سبحان الله وبحمده سبحان الله العظيم',
    'أستغفر الله','لا حول ولا قوة إلا بالله',
  ];

  void incrementCounter() {

    if(tasbihCount == 0){
      showDialog(
        context: context,
        builder: (context) => AlertDialog(
          title: Text('Obs!!',
            style: TextStyle(
                color: Colors.black
            ),),
          content: Text("Oppi antall ganger hver tasbih"
            ,
            style: TextStyle(
                color: Colors.black
            ),
          ),

          actions: [
            Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),

                            ),
                          )
                      ),
                      onPressed: () {
                        setState(() {
                          tasbihCount += small;

                        });
                        Navigator.pop(context);
                      },
                      child: Text('33',
                        style: TextStyle(
                            color: Colors.amber
                        ),
                      )),

                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),

                            ),
                          )
                      ),
                      onPressed: () {
                        setState(() {
                          tasbihCount += big;

                        });
                        Navigator.pop(context);
                      },
                      child: Text('100',
                        style: TextStyle(
                            color: Colors.amber
                        ),
                      )),
                  ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18.0),

                            ),
                          )
                      ),
                      onPressed: () {
                        setState(() {
                          tasbihCount += 1000;

                        });
                        Navigator.pop(context);
                      },
                      child: Text('åpent',
                        style: TextStyle(
                            color: Colors.amber
                        ),
                      )),










                ]
            ),




          ],

        ),
      );

    }
    if(counter < tasbihCount){
      setState(() {
        counter++;
        valueOfMasbaha += counter;
      });

    }else{
      counter = 0;
    }

  }


  @override
  void dispose() {
    _player?.dispose();
    super.dispose();
  }

  void _play() {
    _player?.dispose();
    final player = _player = AudioPlayer();
    print("alarm: is up");

    player.play(AssetSource('assets/myalarm.wav'));

  }



  @override
  Widget build(BuildContext context) {

    return
      Scaffold(
        backgroundColor: Colors.grey[900],

        body: Padding(
          padding: EdgeInsets.fromLTRB(20, 30, 20, 10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    padding: EdgeInsets.fromLTRB(5, 5, 0, 0),
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

                  SizedBox(
                    width: 5,
                  ),

                  Container(

                    child: Text("Tasbih",
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 24,
                      ),),
                  ),

                  SizedBox(
                    width: 115,
                  ),





                ],
              ),

              SizedBox(
                height: 40,
              ),






              Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[

                  // Container(
                  //   width: 300,
                  //   height: 80,
                  //   padding: EdgeInsets.all(10),
                  //   decoration: BoxDecoration(
                  //       border: Border.all(color: Colors.amber),
                  //       borderRadius: BorderRadius.circular(20)
                  //
                  //   ),
                  //
                  //
                  //
                  //   child: ListView.builder(
                  //     shrinkWrap: true,
                  //     scrollDirection: Axis.horizontal,
                  //     physics: const AlwaysScrollableScrollPhysics(),
                  //     itemCount: 8,
                  //     itemBuilder: (context, index) {
                  //       return Padding(
                  //         padding: EdgeInsets.all(10),
                  //         child: SizedBox(
                  //           width: 300,
                  //           height: 100,
                  //
                  //           child: GestureDetector(
                  //             onTap: (){
                  //               setState(() {
                  //                 tasbih = ("");
                  //                 counter = 0;
                  //                 tasbih += tasbihat[index];
                  //               });
                  //             },
                  //             child: Container(
                  //
                  //                 decoration: BoxDecoration(
                  //                     color: Colors.black,
                  //                     border: Border.all(
                  //
                  //
                  //                     ),
                  //                     borderRadius: BorderRadius.all(Radius.circular(20))
                  //                 ),
                  //                 child:  Center(
                  //                   child: Text(tasbihat[index],
                  //                     style: TextStyle(color: Colors.amber,
                  //                         fontSize: 18),),
                  //                 )
                  //             ),
                  //           ),
                  //
                  //         ),
                  //       );
                  //     },
                  //   ),
                  //
                  //
                  // ),
                  //


                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[

                      ElevatedButton(

                        onPressed: (){
                          setState(() {
                            tasbih = ("");
                            counter = 0;
                            tasbihFont = tasbihFont * 0;
                            tasbihFont += 25.0;
                            tasbih += "الله أكبر";
                          });
                                   }

                        ,
                        style: ButtonStyle(
                          //    backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                            backgroundColor:   MaterialStateProperty.resolveWith<Color>(
                                  (Set<MaterialState> states) {
                                if (states.contains(MaterialState.pressed)) return Colors.white;
                                return Colors.black;
                              },
                            ),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),

                              ),
                            )
                        ),
                        child: Text('الله أكبر',
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 16,
                          ),),

                      ),
                      ElevatedButton(

                        onPressed: (){
                          setState(() {
                            tasbih = ("");
                            counter = counter  * 0;
                            tasbihFont = tasbihFont * 0;
                            tasbihFont += 25.0;
                            print("counter: $counter");
                            tasbih += "لا إله إلا الله";
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),

                              ),
                            )
                        ),
                        child: Text('لا إله إلا الله',
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 16,
                          ),),

                      ),

                      ElevatedButton(

                        onPressed: (){
                          setState(() {
                            tasbih = ("");
                            counter = counter  * 0;
                            tasbihFont = tasbihFont * 0;
                            tasbihFont += 25.0;
                            tasbih += "الحمد لله";
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),

                              ),
                            )
                        ),
                        child: Text('الحمد لله',
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 16,
                          ),),

                      ),


                      ElevatedButton(

                        onPressed: (){
                          setState(() {
                            tasbih = ("");
                            counter = counter  * 0;
                            tasbihFont = tasbihFont * 0;
                            tasbihFont += 25.0;
                            tasbih += "سبحان الله";
                          });
                        }
                        ,
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),

                              ),
                            )
                        ),
                        child: Text('سبحان الله',
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 16,
                          ),),

                      ),




                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[


                      ElevatedButton(

                        onPressed: (){
                          setState(() {
                            tasbih = ("");
                            counter = counter  * 0;
                            tasbihFont = tasbihFont * 0;
                            tasbihFont += 25.0;
                            tasbih += "رب اغفر لي";
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),

                              ),
                            )
                        ),
                        child: Text(' رب اغفر لي',
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 16,
                          ),),

                      ),



                      ElevatedButton(

                        onPressed: (){
                          setState(() {
                            tasbih = ("");
                            counter = counter  * 0;
                            tasbihFont = tasbihFont * 0;
                            tasbihFont += 16.0;
                            tasbih += " سبحان الله وبحمده سبحان الله العظيم";
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),

                              ),
                            )
                        ),
                        child: Text(' سبحان الله وبحمده سبحان الله العظيم',
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 16,
                          ),),

                      ),





                    ],
                  ),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      ElevatedButton(

                        onPressed: (){
                          setState(() {
                            tasbih = ("");
                            counter = counter  * 0;
                            tasbihFont = tasbihFont * 0;
                            tasbihFont += 25.0;
                            tasbih += "أستغفر الله";
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),

                              ),
                            )
                        ),
                        child: Text(' أستغفر الله',
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 16,
                          ),),

                      ),

                      ElevatedButton(

                        onPressed: (){
                          setState(() {
                            tasbih = ("");
                            counter = counter  * 0;
                            tasbihFont = tasbihFont * 0;
                            tasbihFont += 20.0;
                            print("tasnihfont: $tasbihFont");
                            tasbih += "لا حول ولا قوة إلا بالله";
                          });
                        },
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                            shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(18.0),

                              ),
                            )
                        ),
                        child: Text(' لا حول ولا قوة إلا بالله',
                          style: TextStyle(
                            color: Colors.amber,
                            fontSize: 16,
                          ),),

                      ),

                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),

                  // Text("$tasbih",
                  //   style: TextStyle(
                  //       color: Colors.amber,
                  //       fontSize: 28
                  //   ),
                  // ),


                  SizedBox(
                    height: 20,
                  ),

                  GestureDetector(
                    onTap: (){
                      incrementCounter();
                    },
                    child: Container(

                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(140),
                          child: CircularPercentIndicator(
                            //circular progress indicator
                            fillColor: Colors.amber.withOpacity(0.2),
                            radius: 140.0, //radius for circle
                            lineWidth: 15.0, //width of circle line
                            animation: false, //animate when it shows progress indicator first
                            percent: counter/tasbihCount, //vercentage value: 0.6 for 60% (60/100 = 0.6)
                            center: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("$tasbih",
                                  style: TextStyle(
                                    color: Colors.amber,
                                    fontSize: tasbihFont,
                                  ),),
                                SizedBox(
                                  height: 20,
                                ),
                                Text("$counter",style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.amber,
                                    fontSize: 60.0),
                                ),
                                SizedBox(
                                  height: 20,
                                ),
                              ]
                            ), //center text, you can set Icon as well
                            // footer: Text("$tasbihCount ganger", style:TextStyle(
                            //     fontWeight: FontWeight.bold,
                            //     color: Colors.grey[400],
                            //     fontSize: 17.0),
                            // ), //footer text
                            backgroundColor: Colors.black, //backround of progress bar
                            circularStrokeCap: CircularStrokeCap.round, //corner shape of progress bar at start/end
                            progressColor: Colors.amber, //progress bar color
                          ),
                        )
                    ),
                  ),

                  SizedBox(
                    height: 5,
                  ),

                  Text("Din valg er $tasbihCount ganger",
                  style: TextStyle(
                    color: Colors.amber,
                    fontSize: 18,
                  ),),


                  SizedBox(
                    height: 10,
                  ),


                  ElevatedButton(

                    onPressed: (){
                      _play();
                      setState(() {
                        tasbih = ("");
                        counter = 0;

                      });
                    },

                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Colors.black54!),
                        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20.0),

                          ),
                        )
                    ),
                    child: Text('Nullstill',
                      style: TextStyle(
                        color: Colors.amber,
                        fontSize: 16,
                      ),),

                  ),





                ],
              ),



            ],
          ),
        ),
      );

  }
}