

import 'dart:async';
import 'package:scrollable/exports.dart';
import 'package:scrollable/types/enums.dart';
import 'package:flutter/material.dart';
import 'package:ninja_card/city_shared_preferance.dart';
import './Web.dart';
import './Pray.dart';
import 'package:intl/intl.dart';



String prayNowToDisplay = "";
String NextPrayForTimer = "";



class Prayer extends StatefulWidget {



  @override
  State<Prayer> createState() => _PrayerState();
}
final eventTime = DateTime.parse('2023-05-26 23:41:00');
class _PrayerState extends State<Prayer> {

  Map data = {};
  String? city = CitySharedPreferance.getCity() ;
  int nextSalahForTimer = 0;
  WebScraper1 webService = WebScraper1();
  int count = 1;
  List<Color> colorToChangeNextPray = [Colors.grey[900]!, Colors.amber.withOpacity(0.2)];
  int colorIndex = 0;
  List<int> indexesPrayersBgColor = [0,0,0,0,0,0];
  var formated = DateFormat.Hm();
  DateTime now = DateTime.now();
 String timeNow =  DateFormat.jm().format(DateTime.now());
  bool _isVisible = false;
  List<String> Salawat = ["Fajer","Sol opp","Duhr","Aser","Sol ned","Ishaa"];



  // this function is to put icon besides the current pray time
  String Azan(Pray pray){
    // get Datetime string and convert it to Datetime object in format HH:mm using parse() method
     var format = DateFormat.Hm();
     //  get the current time and convert it to string.
     // the whole idea behind converting current time to string and then format it to Datetime again
     // is because i had a problem with geting the right time in 24 hours format
     String currentTime = DateTime.now().toString().split(' ')[1].substring(0, 5);
    print("24 hour ${currentTime}");



    // this list contains the prayer times in strings in order to convert them then to
     // Datetime object and then compare them with the current time
    List<String> prayers = [pray.fajer,pray.douha,pray.doher,pray.asser,pray.moughreb,pray.ishaa];

    // looping over the list and compare each time with the current time in order to
     // find the current pray and the next pray
    for(var p in prayers){
      var currentPray = format.parse(p);
      // get the index of the pray in the list in order to know which pray is at the moment
      int indexOfPray = prayers.indexOf(p);

      print("currentPray: ${currentPray}");
      print("currentTime: ${currentTime}");
      // check if the time of pray (p) in the list  is after the current time
      if(currentPray.isAfter(format.parse(currentTime))){
        // the logic here is to mark the pray time that is before the next pray

        if(indexOfPray -1 < 0){
          nextSalahForTimer += indexOfPray;
          print("nextsalah: $nextSalahForTimer");

              if(NextPrayForTimer == ""){
                NextPrayForTimer += prayers[indexOfPray];
              }else{
                NextPrayForTimer = ("");
                NextPrayForTimer += prayers[indexOfPray];

              }
              ///////////////
              print("NextPrayForTimer: $NextPrayForTimer");
          for(var i in indexesPrayersBgColor){
                   i = i * 0;
                 }

            break;
        }

        if(indexOfPray-1 >= 0){

          nextSalahForTimer += indexOfPray;
          print("nextsalah: $nextSalahForTimer");
              if(NextPrayForTimer == ""){
                NextPrayForTimer += prayers[indexOfPray];
              }else{
                NextPrayForTimer = ("");
                NextPrayForTimer += prayers[indexOfPray];
              }
          print("NextPrayForTimer: $NextPrayForTimer");
          for(var i in indexesPrayersBgColor){
                   i = i * 0;
                 }
                 indexesPrayersBgColor[indexOfPray-1] += 1;

          break;
        }

      //
      //        if(indexOfPray > 0) {
      //
      //   if(indexOfPray == 0){
      //
      //     for(var i in indexesPrayersBgColor){
      //       i = i * 0;
      //     }
      //     indexesPrayersBgColor[indexOfPray] += 1;
      //   }else{
      //     nextSalahForTimer += indexOfPray-1;
      //     for(var i in indexesPrayersBgColor){
      //       i = i * 0;
      //     }
      //     indexesPrayersBgColor[indexOfPray-1] += 1;
      //
      //   }
      //
      //
      //   if ((indexOfPray - 1) > 0) {
      //     nextSalahForTimer  = indexOfPray;
      //     print("nextSalahForTimer: $nextSalahForTimer");
      //     if(prayNowToDisplay == ""){
      //
      //       prayNowToDisplay += prayers[indexOfPray - 1];
      //       print("pray now empty: $prayNowToDisplay");
      //     }else{
      //       prayNowToDisplay =("");
      //       prayNowToDisplay += prayers[indexOfPray - 1];
      //       print("pray now: $prayNowToDisplay");
      //     }
      //
      //     if(NextPrayForTimer != ""){
      //       NextPrayForTimer += prayers[indexOfPray];
      //     }else{
      //       NextPrayForTimer = ("");
      //       NextPrayForTimer += prayers[indexOfPray];
      //     }
      //     print("prayselected: ${prayers[indexOfPray]}");
      //     break;
      //   }
      //   else{
      //     if(NextPrayForTimer ==""){
      //       NextPrayForTimer = prayers[indexOfPray];
      //       print("pray: ${prayNowToDisplay}");
      //       print("selected not empty: ${NextPrayForTimer}");
      //     }else{
      //       NextPrayForTimer = ("");
      //       NextPrayForTimer = prayers[indexOfPray];
      //       print("pray: ${prayNowToDisplay}");
      //       print("selected: ${NextPrayForTimer}");
      //     }
      //
      //     break;
      //
      //   }
      //
      // }


    }


     if(format.parse(pray.ishaa).isBefore(format.parse(currentTime))){
       print("isha before");
       if(NextPrayForTimer == ""){
         NextPrayForTimer += currentTime;

       }else{
         NextPrayForTimer = ("");
         NextPrayForTimer += currentTime;
       }

       nextSalahForTimer = nextSalahForTimer * 0;


     }


      }






    return prayNowToDisplay;
  }



/////////////////////////////////////////////////////////////////////////


  @override
  Widget build(BuildContext context) {



    print("city pref: ${city}");
    webService.city = city;
    Pray pray = new Pray(date: "", fajer: "", douha: "", doher: "", asser: "", moughreb: "", ishaa: "", dag: "", jumma: "");



    return Scaffold(
      backgroundColor: Colors.grey[900],


      body:
      FutureBuilder(


          future: webService.extractData(count),
          builder: (_, snapShot) {

            if (snapShot.hasData) {
              print("success");
              print("the city: ${webService.city}");
                          if(city == "Arendal"){
                pray.date = snapShot.data![0];
                pray.fajer = snapShot.data![2];
                pray.douha = snapShot.data![3];
                pray.doher = snapShot.data![4];
                pray.asser = snapShot.data![5];
                pray.moughreb = snapShot.data![6];
                pray.ishaa = snapShot.data![7];
                pray.dag = snapShot.data![1];
                pray.jumma = snapShot.data![8];


              }else{
                pray.date = snapShot.data![0];
                pray.fajer = snapShot.data![1];
                pray.douha = snapShot.data![2];
                pray.doher = snapShot.data![3];
                pray.asser = snapShot.data![4];
                pray.moughreb = snapShot.data![5];
                pray.ishaa = snapShot.data![6];
                pray.dag = snapShot.data![7];
                pray.jumma = snapShot.data![8];
              }

                if(city == "Arendal"){
                  _isVisible = true;
                }
              Azan(pray);



              return

               Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: <Widget>[

                        Row(

                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
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
                              width: 10,
                            ),
                            Image.asset(
                              'assets/kaba5.png',
                              fit: BoxFit.contain,
                              height: 100,
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,

                              children: <Widget>[
                                SizedBox(
                                  height: 7,
                                ),
                                Text("Tid til ${Salawat[nextSalahForTimer]}",
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: Colors.amber,
                                  ),),
                                SizedBox(
                                  height: 7,
                                ),
                                Container(
                                  height: 60,
                                  width: 60,
                                  child: Center(
                                    child: CountdownWidget(
                                      //         endTime: DateFormat.Hm().parse(prayNowToDisplay),

                                      endTime:NextPrayForTimer,

                                    ),


                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.black,
                                      border: Border.all(


                                      ),
                                      borderRadius: BorderRadius.all(Radius.circular(20))
                                  ),
                                ),
                              ],
                            )


                          ],

                        ),

                        Row(

                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Container(
                              child: Text("${city}",
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 24.0,

                                ),),
                            ),
                          ],
                        ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(pray.dag.toString()+" ",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0
                              ),),
                            Text(pray.date,
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 16.0
                              ),),

                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: colorToChangeNextPray[indexesPrayersBgColor[0]],
                              borderRadius: BorderRadius.circular(17)),
                          child: Row(

                            children: <Widget>[
                              Expanded(
                                flex: 4,
                                child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                    //  color: Colors.black,
                                      borderRadius: BorderRadius.circular(20),

                                    ),
                                    padding: EdgeInsets.all(20.0),

                                    child: Text("Fajer",
                                      style: TextStyle(

                                          color: Colors.amber,
                                          fontSize: 16.0
                                      ),)
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(


                                ),
                              ),

                              Expanded(
                                flex: 2,
                                child: Container(

                                  child: Text(pray.fajer,
                                    style: TextStyle(

                                        color: Colors.amber,
                                        fontSize: 16.0
                                    ),),
                                ),
                              ),



                            ],
                          ),
                        ),
                        Container(
                            decoration: BoxDecoration(
                                color: colorToChangeNextPray[indexesPrayersBgColor[1]],
                                borderRadius: BorderRadius.circular(17)),
                          child: Row(

                            children: <Widget>[
                              Expanded(
                                flex: 4,
                                child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(

                                      borderRadius: BorderRadius.circular(20),

                                    ),
                                    padding: EdgeInsets.all(20.0),

                                    child: Text("Sol opp",
                                      style: TextStyle(

                                          color: Colors.amber,
                                          fontSize: 16.0
                                      ),)
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(


                                ),
                              ),

                              Expanded(
                                flex: 2,
                                child: Container(

                                  child: Text(pray.douha,
                                    style: TextStyle(

                                        color: Colors.amber,
                                        fontSize: 16.0
                                    ),),
                                ),
                              ),


                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: colorToChangeNextPray[indexesPrayersBgColor[2]],
                              borderRadius: BorderRadius.circular(17)),
                          child: Row(

                            children: <Widget>[
                              Expanded(
                                flex: 4,


                                child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                    //  color: Colors.black,
                                      borderRadius: BorderRadius.circular(20),

                                    ),
                                    padding: EdgeInsets.all(20.0),
                                    child: Text("Duhr",
                                      style: TextStyle(

                                          color: Colors.amber,
                                          fontSize: 16.0
                                      ),)

                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(


                                ),
                              ),

                              Expanded(
                                flex: 2,
                                child: Container(

                                  child: Text(pray.doher,
                                    style: TextStyle(

                                        color: Colors.amber,
                                        fontSize: 16.0
                                    ),),
                                ),
                              ),


                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: colorToChangeNextPray[indexesPrayersBgColor[3]],
                              borderRadius: BorderRadius.circular(17)),
                          child: Row(

                            children: <Widget>[
                              Expanded(
                                flex: 4,
                                child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                  //    color: Colors.black,
                                      borderRadius: BorderRadius.circular(20),

                                    ),
                                    padding: EdgeInsets.all(20.0),

                                    child: Text("Aser",
                                      style: TextStyle(

                                          color: Colors.amber,
                                          fontSize: 16.0
                                      ),)
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(


                                ),
                              ),

                              Expanded(
                                flex: 2,
                                child: Container(

                                  child: Text(pray.asser,
                                    style: TextStyle(

                                        color: Colors.amber,
                                        fontSize: 16.0
                                    ),),
                                ),
                              ),


                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: colorToChangeNextPray[indexesPrayersBgColor[4]],
                              borderRadius: BorderRadius.circular(17)),
                          child: Row(

                            children: <Widget>[
                              Expanded(
                                flex: 4,
                                child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                  //    color: Colors.black,
                                      borderRadius: BorderRadius.circular(20),

                                    ),
                                    padding: EdgeInsets.all(20.0),

                                    child: Text("Sol ned",
                                      style: TextStyle(
                                          color: Colors.amber,
                                          fontSize: 16.0
                                      ),)
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(


                                ),
                              ),

                              Expanded(
                                flex: 2,
                                child: Container(

                                  child: Text(pray.moughreb,
                                    style: TextStyle(

                                        color: Colors.amber,
                                        fontSize: 16.0
                                    ),),
                                ),
                              ),


                            ],
                          ),
                        ),
                        Container(
                          decoration: BoxDecoration(
                              color: colorToChangeNextPray[indexesPrayersBgColor[5]],
                              borderRadius: BorderRadius.circular(17)),
                          child: Row(

                            children: <Widget>[
                              Expanded(
                                flex: 4,
                                child: Container(
                                    alignment: Alignment.center,
                                    decoration: BoxDecoration(
                                 //     color: Colors.black,
                                      borderRadius: BorderRadius.circular(20),

                                    ),
                                    padding: EdgeInsets.all(20.0),

                                    child: Text("Ishaa",
                                      style: TextStyle(

                                          color: Colors.amber,
                                          fontSize: 16.0
                                      ),)
                                ),
                              ),
                              Expanded(
                                flex: 4,
                                child: Container(


                                ),
                              ),

                              Expanded(
                                flex: 2,
                                child: Container(

                                  child: Text(pray.ishaa,
                                    style: TextStyle(

                                        color: Colors.amber,
                                        fontSize: 16.0
                                    ),),
                                ),
                              ),



                            ],
                          ),
                        ),

                        Visibility(
                          visible: _isVisible,
                          child: Container(
                              decoration: BoxDecoration(
                                color: Colors.black,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black26,
                                    blurRadius: 4,
                                    offset: Offset(4, 6), // Shadow position
                                  ),
                                ],
                              ),
                              padding: EdgeInsets.all(20.0),


                              child: Text("${pray.jumma}",
                                style: TextStyle(

                                    color: Colors.amber,
                                    fontSize: 16.0
                                ),)
                          ),
                        ),




                      ],
                    ),
                  );

            }
            else {
              return const Center(
                child: CircularProgressIndicator(),
              );
            }
          }

      ),


    );

  }

}
class LabelText extends StatelessWidget {
  LabelText({required this.label, required this.value});

  final String label;
  final String value;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        color: Colors.grey,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: <Widget>[
          Text(
            '$value',
            style: TextStyle(
                color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold),
          ),
          Text(
            '$label',
            style: TextStyle(
              color: Colors.white70,
            ),
          ),
        ],
      ),
    );
  }
}

class BlinkingImageWidget extends StatefulWidget {
  @override
  _BlinkingImageWidgetState createState() => _BlinkingImageWidgetState();
}

class _BlinkingImageWidgetState extends State<BlinkingImageWidget> {
  bool _isVisible = true;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    _startBlinking();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startBlinking() {
    const duration = const Duration(milliseconds: 500); // Change blinking speed here
    _timer = Timer.periodic(duration, (Timer timer) {
      setState(() {
        _isVisible = !_isVisible;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: _isVisible,
      child: Image.asset(
        'assets/mosque.png',
        fit: BoxFit.contain,
        color: Colors.amber,
        height: 20,
        width: 20,
      ),
    );
  }
}


class CountdownWidget extends StatefulWidget {

    String endTime;



  CountdownWidget({required this.endTime});

  @override
  _CountdownWidgetState createState() => _CountdownWidgetState();
}

class _CountdownWidgetState extends State<CountdownWidget> {
  late Timer _timer;
  Duration _remainingTime = Duration.zero;



  @override
  void initState() {
    super.initState();
    _startCountdown();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }

  void _startCountdown() {



    _timer = Timer.periodic(Duration(seconds: 1), (Timer timer) {
        DateTime now = DateFormat.Hms().parse(
            DateTime.now().toString().split(' ')[1].substring(0,8));

        print(" end time: ${widget.endTime}");
        print(" now: ${now}");
        print("length: ${widget.endTime.length}");
        if(widget.endTime.length >= 5){
          String temp = NextPrayForTimer.substring(0,5);
          NextPrayForTimer = ("");
          NextPrayForTimer += temp;
          widget.endTime = ("");
          print("endtime modifyed before: ${widget.endTime}");
          widget.endTime += NextPrayForTimer;
          print("endtime modifyed: ${widget.endTime}");
        }

        DateTime end = DateFormat.Hm().parse(widget.endTime);
        print(" end time again: ${widget.endTime}");
        print(" remaining not selected after: ${NextPrayForTimer}");


        if (now.isBefore(end)) {
          print(" widget.endtime: ${end}");

          setState(() {
            _remainingTime = end.difference(now);
          });
        } else {
          _remainingTime * 0;
          timer.cancel();
        }
      });
    }


  String _formatDuration(Duration duration) {
    final formatter = DateFormat.Hms();
      if(_remainingTime == 0){

      }

      return formatter.format(DateTime(0, 0, 0, duration.inHours, duration.inMinutes % 60, duration.inSeconds % 60));


  }

  @override
  Widget build(BuildContext context) {
    return Text(
      _formatDuration(_remainingTime),
      style: TextStyle(fontSize: 12,
        color: Colors.amber,
      ),
    );
  }
}