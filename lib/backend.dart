import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class BackEndScreen extends StatefulWidget {


   BackEndScreen({required this.name, required this.email, required this.city,required this.prn});

  final String name,email,city,prn;
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
            // Center(
            //   child: Text("Welcome to Second page", style: TextStyle(
            //     fontSize: 24,
            //     fontWeight: FontWeight.bold,
            //   ),
            //   ),
            // ),
            // SizedBox(height: 35),
              Center(
                child: Text("Data Entered by User:-\n", style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                  // color: Colors.purple,
                ),
                ),
              ),
              Text("        Name: "+widget.name, style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
              ),

            SizedBox(height: 10),
            Text("        PRN NO.: "+widget.prn, style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              color: Colors.deepPurple,
            ),
            ),

            SizedBox(height: 10),

              Text("        City: "+widget.city, style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
              ),

            SizedBox(height: 10),

               Text("        Email: "+widget.email, style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Colors.deepPurple,
              ),
              ),



          ],
        ),


      ),


    );
  }
}
