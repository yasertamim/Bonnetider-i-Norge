import 'package:flutter/material.dart';
import 'package:dropdown_search/dropdown_search.dart';
import 'package:ninja_card/city_shared_preferance.dart';

import 'home.dart';







class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Center(

          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Cities2(),
          ),
        ),
      );

  }
}

class Cities2 extends StatefulWidget {
  @override
  _Cities2State createState() => _Cities2State();
}

class _Cities2State extends State<Cities2> {
  String _selectedValue = "Arendal";

  final List<String> _options = [
    'Alta', 'Andenes', 'Arendal', 'Asker', 'Askim', 'Bardufoss', 'Bergen',
    'Birkeland', 'Bodø', 'Brandbu', 'Brekstad', 'Brevik', 'Bryne', 'Brønnøysund','Dalen',
    'Drammen', 'Drøbak', 'Egersund', 'Eidsvoll', 'Elverum',     'Fagernes', 'Farsund', 'Fauske', 'Finnsnes', 'Flekkefjord', 'Flisa', 'Flora',
    'Florø', 'Fosnavåg', 'Fredrikstad', 'Førde', 'Geilo', 'Gjøvik', 'Grimstad','Halden',
    'Hamar', 'Hammerfest', 'Harstad', 'Haugesund', 'Hokksund',    'Holmestrand', 'Honningsvåg', 'Horten', 'Husnes', 'Hønefoss', 'Jessheim', 'Jørpeland',
    'Kautokeino', 'Kirkenes', 'Kongsberg', 'Kongsvinger', 'Kopervik', 'Kragerø', 'Kristiansand','Kristiansund',
    'Krokstadøra', 'Kvinesdal', 'Lakselv', 'Langesund', 'Larvik',    'Leikanger', 'Leirvik', 'Leknes', 'Leksvik', 'Levanger', 'Lierne', 'Lillehammer',
    'Lillesand', 'Lillestrøm', 'Lom	', 'Lyngdal', 'Mandal', 'Mo i Rana	', 'Molde','Mosjøen',
    'Moss', 'Mysen', 'Måløy', 'Namsos', 'Narvik',    'Notodden', 'Nærøy', 'Odda', 'Oslo', 'Otta', 'Porsgrunn', 'Rasvag',
    'Raufoss', 'Risør', 'Rjukan', 'Røldal', 'Røros', 'Røyrvik', 'Sand','Sandefjord',
    'Sandnes	', 'Sandnessjøen', 'Sandvika', 'Sarpsborg', 'Sauda',    'Setermoen', 'Ski', 'Skien', 'Skudeneshavn', 'Sogndal', 'Sogne', 'Sortland',
    'Stathelle', 'Stavanger', 'Stavern', 'Steinkjer', 'Stjørdal', 'Stokmarknes', 'Stord','Stryn',
    'Strömstad', 'Sunndalsøra', 'Svelvik', 'Svolvær', 'Tromsø','Trondheim', 'Tvedestrand', 'Tynset', 'Tønsberg', 'Ulsteinvik',    'Vadsø', 'Vang i Valdres', 'Vanningssundet', 'Vardø', 'Vennesla', 'Verdalsøra', 'Vossevangen',
    'Åkrehamn', 'Ålesund', 'Åndalsnes'
  ];

  @override
  Widget build(BuildContext context) {
    return Material( // Wrap with Material widget
      color: Colors.grey[900],
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children:<Widget> [
            SizedBox(
              height: 30,
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [

                Container(
                  padding: EdgeInsets.fromLTRB(15, 5, 0, 0),
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
                      if(value == "Tasbih"){
                        Navigator.pushNamed(context, '/selectAzkar');
                      }
                    },
                  ),

                ),


              ],

            ),
            Text("Velg by",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 18,
              ),
            ),
            SizedBox(
              height: 50,
            ),

            Container(
              width: 300,
              height: 100,
              child: DropdownSearch<String>(

                mode: Mode.MENU,
                showSearchBox: true,
                items: _options,

                onChanged: (value) {

                  setState(() {
                    _selectedValue = value!;
                    CitySharedPreferance.setCity(_selectedValue);
                  });
                  Navigator.popAndPushNamed(context, '/home');
                  // Navigator.pushReplacementNamed(context, "/home", arguments: {
                  //   "value": _selectedValue,
                  //
                  // });
                },
                selectedItem: _selectedValue,
                dropdownSearchDecoration: InputDecoration(
                  // Customize the decoration

                  filled: true,
                  fillColor: Colors.white, // Set the background color
                  contentPadding: EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),

                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),


                ),


              ),
            ),
          ],
        ),

      ),
    );
  }
}




