import 'package:flutter/material.dart';
import 'dart:math';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  var leftdice = 6;
  var rightdice = 4;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey[800],
      appBar: AppBar(
        title: Text("Dice Game App",
            style: TextStyle(fontWeight: FontWeight.bold)),
        centerTitle: true,
        backgroundColor: Colors.grey[900],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Row(
              children: <Widget>[
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    child: Image.asset('images/dice$leftdice.png'),
                    onTap: () {
                      print('left dice cicked');
                      setState(() {
                        leftdice = Random().nextInt(6) + 1;
                      });
                    },
                  ),
                )),
                Expanded(
                    child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: GestureDetector(
                    child: Image.asset('images/dice$rightdice.png'),
                    onTap: () {
                      print('right dice cicked');
                      setState(() {
                        rightdice = Random().nextInt(6) + 1;
                      });
                    },
                  ),
                )),
              ],
            ),
            SizedBox(
              height: 26,
            ),
            ButtonTheme(
              height: 50.0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: RaisedButton(
                  shape: RoundedRectangleBorder(
                    side: BorderSide(color: Colors.white54),
                    borderRadius: BorderRadius.circular(18.0),
                  ),
                  child: Text(
                    'Press On the Dices to toss the Dice',
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  onPressed: () {
                    setState(() {
                      leftdice = Random().nextInt(6) + 1;
                      rightdice = Random().nextInt(6) + 1;
                    });
                  },
                  color: Colors.blueGrey[900],
                ),
              ),
            ),
            SizedBox(
              height: 26,
            ),
            Text(
              'You Can Even click on the individual dices to Toss that particular Dice',
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            )
          ],
        ),
      ),
    );
  }
}
