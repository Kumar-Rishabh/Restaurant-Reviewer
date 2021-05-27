import 'package:flutter/material.dart';
import 'reviewPage.dart';
class homePage extends StatefulWidget {
  @override
  _homePageState createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFC61F2D),
      appBar: AppBar(
        title: Text('Restaurant Reviewer'),
        backgroundColor: Color(0xFFC61F2D),
      ),
      body: Column(
        children: [
          Container(
            height: 350.0,
            child: ClipRRect(
              borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(25),
                  bottomLeft: Radius.circular(25)),
              child: Image.asset(
                'images/food.jpg',
                fit: BoxFit.cover,
              ),
            ),
          ),
          SizedBox(
            height: 100.0,
          ),

          Container(
              child: ElevatedButton(
                child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Text('Give Review')),
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal,
                  onPrimary: Colors.white,
                  textStyle: TextStyle(
                      color: Colors.black,
                      fontSize: 40,
                      fontStyle: FontStyle.italic
                  ),
                  shape: StadiumBorder(),

                ),
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Review()));
                },
              )
          ),
        ],
      ),
    );
  }
}