import 'package:assignment_03/backend.dart';
import 'package:assignment_03/contsants.dart';
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
  String name = '', email = '',city ='',prn='';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        backgroundColor: Colors.black26,
        title: Center(
          child: Text(
            "  Get Login",
            style: TextStyle(
              color: Colors.lightBlueAccent,
              fontStyle: FontStyle.italic,
              fontSize: 24,
            ),
          ),
        ),
      ),
      body: Center(
        child: SingleChildScrollView(
          physics: BouncingScrollPhysics(),
          child: Column(
            children: [
              Image.asset(
                'images/send.png',
                height: MediaQuery.of(context).size.height * 0.3,
                fit: BoxFit.fitHeight,
              ),
              SizedBox(height: 15),
              Center(
                child: Text(
                  '            Hello User !\n Welcome to Login Page ',
                  style: TextStyle(fontSize: 21, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38),
                child: TextFormField(
                  onChanged: (value){
                    setState(() {
                      name=value;
                    });
                  },
                  decoration: kInputDec,
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38),
                child: TextFormField(
                  onChanged: (value){
                    setState(() {
                      prn=value;
                    });
                  },
                  decoration: kInputDec.copyWith(labelText: 'PRN NO.'),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: TextFormField(
                  onChanged: (value) {
                    setState(() {
                      city=value;
                    });
                  },
                  decoration: kInputDec.copyWith(labelText: 'City'),
                ),
              ),
              SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 38.0),
                child: TextFormField(
                  onChanged: (value){
                    setState(() {
                      email=value;
                    });
                  },
                  decoration: kInputDec.copyWith(labelText: 'Email'),
                ),
              ),
              SizedBox(height: 20),
              FlatButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => BackEndScreen(
                        name: name,
                        email: email,
                        city: city,
                        prn: prn,
                      ),
                    ),
                  );
                },
                splashColor: Colors.yellow,
                highlightColor: Colors.red,
                child: Text(
                  'SUBMIT',
                  style: TextStyle(color: Colors.white, fontSize: 19),
                ),
                color: Colors.black,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20)),
              ),
              SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
