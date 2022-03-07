import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BackEndScreen extends StatefulWidget {
  const BackEndScreen({Key? key}) : super(key: key);

  @override
  _BackEndScreenState createState() => _BackEndScreenState();
}

class _BackEndScreenState extends State<BackEndScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("         Second_page",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,fontStyle: FontStyle.italic),),
        ),

      body:
      SafeArea(
        child: ListView(
          children: <Widget>[
            Image.asset('images/receive.jpg'),
            SizedBox(height: 35,),
            Center(
              child: Text("Welcome to Second page", style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
              ),
            ),
            SizedBox(height: 35),
            Center(
              child: Text(
                'Created by 2020BTEIT00015',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),


      ),


    );
  }
}
