import 'package:flutter/material.dart';

class SelectAzkar extends StatelessWidget {
  final List<String> cardTitles = ['Card 1', 'Card 2', 'Card 3', 'Card 4'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    backgroundColor: Colors.grey[900],
      body:Center(

        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(

              onPressed: (){
                Navigator.pushNamed(context, '/azkar');
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),

                    ),
                  )
              ),
              child:
                  Text('Morgenbønner أذكار الصباح',
                    style: TextStyle(
                      color: Colors.amber,
                      fontSize: 16,
                    ),),


            ),

            SizedBox(
              height: 20,
            ),
            ElevatedButton(

              onPressed: (){
                Navigator.pushNamed(context, '/azkarMasa');
              },
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all<Color>(Colors.black),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),

                    ),
                  )
              ),
              child: Text('kveldsbønner أذكار المساء',
                style: TextStyle(
                  color: Colors.amber,
                  fontSize: 16,
                ),),

            ),
          ],
        ),
      )
    );
  }
}
