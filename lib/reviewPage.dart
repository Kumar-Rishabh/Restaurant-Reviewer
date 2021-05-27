import 'package:flutter/material.dart';
import 'package:resturant_review_predictor/rev_value.dart';
import 'API.dart';

class Review extends StatefulWidget {
  @override
  _ReviewState createState() => _ReviewState();
}

class _ReviewState extends State<Review> {
  var url;
  var Data;
  String QueryText;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xFFC61F2D),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.keyboard_arrow_left_rounded,
          ),
        ),
      ),
      body: Column(
        children: [
          SizedBox(
            height: 20.0,
          ),
          TextField(
            decoration: InputDecoration(
              hintText: 'Give Your Review',
              border: UnderlineInputBorder(
                  borderSide: BorderSide(color: Colors.red)),
            ),
            onChanged: (value) {
              url = 'https://rest-rev.herokuapp.com/?query=' + value.toString();
            },
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            child: ElevatedButton(
              child: Padding(
                  padding: EdgeInsets.all(10.0), child: Text('ENTER')),
              style: ElevatedButton.styleFrom(
                textStyle: TextStyle(
                    color: Colors.blue,
                    fontSize: 40,
                    fontStyle: FontStyle.italic),
              ),
              onPressed: () async{
                NetworkHelper networkhelper=NetworkHelper(url);
                var weatherData=await networkhelper.getData();
                setState(() {
                  QueryText = weatherData[0]['value'];
                });

              },
            ),
          ),
          SizedBox(height: 50.0,),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Text(
              getReview(QueryText),
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.bold),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
