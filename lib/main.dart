import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.deepPurpleAccent,
          title: Text('SECOND ASIGNMENT'),
        ),
        drawer: OrientationBuilder(
          builder: (ctx, orientation) {
            print(orientation.index);
            debugPrint(orientation.name);
            if (orientation.name == "portrait") {
              return Drawer(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, top: 100),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('FIRST ELEMENT', style: TextStyle(fontSize: 22)),
                      SizedBox(
                        height: 5,
                      ),
                      Text('FIRST ELEMENT', style: TextStyle(fontSize: 22)),
                      Text('FIRST ELEMENT new', style: TextStyle(fontSize: 22)),
                      Text('FIRST ELEggMENT', style: TextStyle(fontSize: 22)),
                      Text('FIRST ELEMENT', style: TextStyle(fontSize: 22)),
                      Text('FIRST ELEMENT', style: TextStyle(fontSize: 22)),
                    ],
                  ),
                ),
              );
            } else {
              return  Scaffold(
                appBar: AppBar(
                  elevation: 0,
                  backgroundColor: Colors.deepPurpleAccent,
                  title: Text('SECOND ASIGNMENT'),
                ),

                backgroundColor: Colors.redAccent,
                body: Container(
                  color: Colors.white,
                  width: 400,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20, top: 100),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('FIRST ELEMENT', style: TextStyle(fontSize: 22)),
                          SizedBox(
                            height: 5,
                          ),
                          Text('FIRST ELEMENT', style: TextStyle(fontSize: 22)),
                          Text('FIRST ELEggMENT', style: TextStyle(fontSize: 22)),
                          Text('FIRST ELEMENT', style: TextStyle(fontSize: 22)),
                          Text('FIRST ELEMENT', style: TextStyle(fontSize: 22)),
                        ],
                      ),
                    ),
                  ),
              );



            }
          },
        ),
        backgroundColor: Colors.redAccent,
      ),
    );
  }
}
