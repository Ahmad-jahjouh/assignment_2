import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'SECOND ASIGNMENT',
      home: drawer(title: 'SECOND ASIGNMENT'),
    );
  }
}

class drawer extends StatelessWidget{
  const drawer({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return OrientationBuilder(
      builder: (context, orientation) {

        return Scaffold(
            appBar: AppBar(
              title: Text(title),backgroundColor: Colors.deepPurpleAccent,),
            body: orientation==Orientation.portrait?buildContainer(): Row(
              children: [
                Expanded(child: buildListView()),
                Expanded(child: buildContainer()),
              ],
            ),

            drawer: orientation==Orientation.portrait?Drawer(
              child: Container(
                padding: const EdgeInsets.only(top: 120),
                child: buildListView(),
              ),):null
        );
      },
    );
  }

  Container buildContainer() {
    return Container(
      width: double.infinity,
      height: double.infinity,
      color: Colors.red,
    );
  }

  Container buildListView() {
    return Container(
      color:Colors.white,

      child: ListView(

        padding: const EdgeInsets.symmetric(horizontal: 15,vertical: 15),
        children: const [
          Text("FIRST ELEMENT"),
          SizedBox(height: 20,),
          Text("SECOND ELEMENT"),
          SizedBox(height: 20,),
          Text("THIRD ELEMENT"),
          SizedBox(height: 20,),
          Text("FORTH ELEMENT"),
          SizedBox(height: 20,),
          Text("FIFTHE ELEMENT"),
        ],
      ),
    );
  }
}
