import 'dart:math';

import 'package:flutter/material.dart';
import 'package:colorful_safe_area/colorful_safe_area.dart';

void main() {
  runApp( DiceApp());
}

class DiceApp extends StatelessWidget {
   DiceApp({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
   HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int num=1;

  void random_int(){
  num=(Random().nextInt(6)+1);


}

  @override
  Widget build(BuildContext context) {
    return ColorfulSafeArea(
      color: Colors.black,
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(centerTitle: true,
          backgroundColor: Colors.amber,
          title: Text("Dice App",textAlign: TextAlign.center,),
        ),
        body: Center(
          child: GestureDetector(
            onTap: (){
              setState(() {
                print(num);
                random_int();

              });

              //generate a random number
            },
            child: Image(
              image: AssetImage("images/dice${num}.png",),
              height: 250,
              width: 250,
            ),
          )
        ),
      ),
    );
  }
}


