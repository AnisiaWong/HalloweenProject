import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
        primarySwatch: Colors.orange,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _points = 0;
  int _wins =0;
  String _result = '';
  List<bool> seen = [];
  List<String> images = ['bag.png', 'bat.png', 'bats.png', 'bucket.png', 'candy.png', 'cat.png', 'cauldron.png', 'date.png', 'face.png', 'lollipop.png', 'muffin.png', 'pentagram.png', 'person.png', 'sack.png', 'witch.png', 'wolf.png'];

  void initVisibility(){
    for (int i =0; i<16; i++){
      seen.add(false);
    }
  }

  void randVisibility(){
    for(int i=0; i<16; i++){
      int rand=Random().nextInt(100);
      if (rand%2==0){
        seen[i]=false;
      }
      else{
        seen[i]=true;
      }
    }
  }

  void gameState(){
    if (_points == 10){
      _result='Happy Halloween!';
      _points=0;
      _wins++;
    }
    if (_points<10){
      _result='';
    }
  }

  void initState() {
    super.initState();
    initVisibility();
    randVisibility();
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Halloween Whack-a-Mole Game'),
        ),
        
        
        
        body: Center(
          child: Column(children: <Widget>[
            Container(
              margin: EdgeInsets.all(20),
              child: Table(
                defaultColumnWidth: FixedColumnWidth(120.0),
                border: TableBorder.all(
                    color: Colors.orange,
                    style: BorderStyle.solid,
                    width: 3),
                children: [
                  TableRow( children: [
                    Column(children:[
                      Container(
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.all(5),
                        child: Text('points: \n  $_points'),
                      ),
                    ]),
                    Column(children:[
                      Container(
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.all(5),
                        child: Text(_result),
                      ),
                    ]),
                    Column(children:[
                      Container(
                        padding: EdgeInsets.all(20),
                        margin: EdgeInsets.all(5),
                        child: Text('wins: \n  $_wins'),
                      ),
                    ]),
                    Column(children:[Text('')]),
                  ]),
                  TableRow( children: [
                    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (seen[0]){
                                _points++;
                                gameState();
                              }
                              randVisibility();
                              });
                            },
                            child: Visibility(
                              visible: seen[0],
                              child: Image(image: AssetImage(images[Random().nextInt(16)]),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                    //wah
                    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (seen[1]){
                                _points++;
                                gameState();
                                
                              }
                              randVisibility();
                              });
                            },
                            child: Visibility(
                              visible: seen[1],
                              child: Image(image: AssetImage(images[Random().nextInt(16)]),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (seen[2]){
                                _points++;
                                gameState();
                              }
                              randVisibility();
                              });
                            },
                            child: Visibility(
                              visible: seen[2],
                              child: Image(image: AssetImage(images[Random().nextInt(16)]),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (seen[3]){
                                _points++;
                                gameState();
                              }
                              randVisibility();
                              });
                            },
                            child: Visibility(
                              visible: seen[3],
                              child: Image(image: AssetImage(images[Random().nextInt(16)]),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),

                  TableRow( children: [
                    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (seen[4]){
                                _points++;
                                gameState();
                              }
                              randVisibility();
                              });
                            },
                            child: Visibility(
                              visible: seen[4],
                              child: Image(image: AssetImage(images[Random().nextInt(16)]),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (seen[5]){
                                _points++;
                                gameState();
                              }
                              randVisibility();
                              });
                            },
                            child: Visibility(
                              visible: seen[5],
                              child: Image(image: AssetImage(images[Random().nextInt(16)]),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (seen[6]){
                                _points++;
                                gameState();
                              }
                              randVisibility();
                              });
                            },
                            child: Visibility(
                              visible: seen[6],
                              child: Image(image: AssetImage(images[Random().nextInt(16)]),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (seen[7]){
                                _points++;
                                gameState();
                              }
                              randVisibility();
                              });
                            },
                            child: Visibility(
                              visible: seen[7],
                              child: Image(image: AssetImage(images[Random().nextInt(16)]),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                  TableRow( children: [
                    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (seen[8]){
                                _points++;
                                gameState();
                              }
                              randVisibility();
                              });
                            },
                            child: Visibility(
                              visible: seen[8],
                              child: Image(image: AssetImage(images[Random().nextInt(16)]),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (seen[9]){
                                _points++;
                                gameState();
                              }
                              randVisibility();
                              });
                            },
                            child: Visibility(
                              visible: seen[9],
                              child: Image(image: AssetImage(images[Random().nextInt(16)]),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (seen[10]){
                                _points++;
                                gameState();
                              }
                              randVisibility();
                              });
                            },
                            child: Visibility(
                              visible: seen[10],
                              child: Image(image: AssetImage(images[Random().nextInt(16)]),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (seen[11]){
                                _points++;
                                gameState();
                              }
                              randVisibility();
                              });
                            },
                            child: Visibility(
                              visible: seen[11],
                              child: Image(image: AssetImage(images[Random().nextInt(16)]),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                  TableRow( children: [
                    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (seen[12]){
                                _points++;
                                gameState();
                              }
                              randVisibility();
                              });
                            },
                            child: Visibility(
                              visible: seen[12],
                              child: Image(image: AssetImage(images[Random().nextInt(16)]),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (seen[13]){
                                _points++;
                                gameState();
                              }
                              randVisibility();
                              });
                            },
                            child: Visibility(
                              visible: seen[13],
                              child: Image(image: AssetImage(images[Random().nextInt(16)]),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (seen[14]){
                                _points++;
                                gameState();
                              }
                              randVisibility();
                              });
                            },
                            child: Visibility(
                              visible: seen[14],
                              child: Image(image: AssetImage(images[Random().nextInt(16)]),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: GestureDetector(
                            onTap: () {
                              setState(() {
                                if (seen[15]){
                                _points++;
                                gameState();
                              }
                              randVisibility();
                              });
                            },
                            child: Visibility(
                              visible: seen[15],
                              child: Image(image: AssetImage(images[Random().nextInt(16)]),
                                fit: BoxFit.cover,
                              )
                            ),
                          ),
                        ),
                      ],
                    ),
                  ]),
                ],
              ),
            ),
          ])
        )
      ),
    );
  }
}
