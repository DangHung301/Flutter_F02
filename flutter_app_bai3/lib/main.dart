import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      // This call to setState tells the Flutter framework that something has
      // changed in this State, which causes it to rerun the build method below
      // so that the display can reflect the updated values. If we changed
      // _counter without calling setState(), then the build method would not be
      // called again, and so nothing would appear to happen.
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    // This method is rerun every time setState is called, for instance as done
    // by the _incrementCounter method above.
    //
    // The Flutter framework has been optimized to make rerunning build methods
    // fast, so that you can just rebuild anything that needs updating rather
    // than having to individually change instances of widgets.
    return Scaffold(
      backgroundColor: Color(0xFFea4c89),
      body: Padding(
        padding: EdgeInsets.fromLTRB(50, 200, 0, 0),
        // Center is a layout widget. It takes a single child and positions it
        // in the middle of the parent.
        child: Column(

          children: <Widget>[
            Text(
              'Hi Lautaro Nicolás!',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                color: Colors.white,
              ),
            ),
            
            Padding(
                padding:EdgeInsets.fromLTRB(0, 0, 260, 0) ,
              child:
              Text(
                '______',
                style: TextStyle(
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
            ),

            Padding(
                padding: EdgeInsets.fromLTRB(5, 40, 0, 0),
              child:

                    Text(
                      'Mihajlo Tunev has invited you to be a player at Dribbble. As a player, you will be able to upload shots a post comments in addtions to following the work of others.',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                    )
                )
            ),

           Container(
             margin: EdgeInsets.only(top: 50, right: 30),

             child:
             FlatButton(
               height: 70,
               minWidth: 400,
               child:
               Text(
                 'Accept Invitatiton',
                 style: TextStyle(
                   fontWeight: FontWeight.bold,
                   color: Colors.white,
                   fontSize: 15,
                 ),
               ),
               onPressed: () {},
              shape: RoundedRectangleBorder(side: BorderSide(
                color: Colors.white,
                width: 1,
                style: BorderStyle.solid,
              )),
             ),
           )
          ],
        ),
      ),
    );
  }
}
