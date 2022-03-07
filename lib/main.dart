import 'package:assignment_03/backend.dart';
import 'package:flutter/material.dart';
import 'backend.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor:Colors.black26,
        title: Center(
          child: Text(
            "   Front_Page",
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontStyle: FontStyle.italic,
              fontSize: 24,
            ),
          ),

        ),
      ),
      body: Center(
        child: Column(
          children: [
            Image.asset('images/send.png'),
            SizedBox(height: 65),
            Center(child: Text('            Hello User !\n Welcome to Front Page ',style: TextStyle(fontSize: 21,fontWeight: FontWeight.bold),
            ),
            ),
            SizedBox(height: 20,),
            FlatButton(
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => BackEndScreen()),);
                },
                splashColor: Colors.yellow,
                highlightColor: Colors.red,
                child: Text('Click to navigate',style: TextStyle(color: Colors.white,fontSize: 19),),
                color: Colors.black,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),

            ),

          ],
        ),
      ),
    );
  }
}
