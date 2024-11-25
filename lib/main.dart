import 'package:flutter/material.dart';
void main() {
  runApp(const MyApp());
}


class MyApp extends StatelessWidget{
  const MyApp({super.key});

  @override
  Widget build(BuildContext context){
    return const MaterialApp(
      home: CardAsContainer(),
    );
  }
}

class CardAsContainer extends StatelessWidget{

  const CardAsContainer({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
          appBar : AppBar(),
          drawer: const Drawer(),
          body: const Card(
            elevation: 100,
            shadowColor: Colors.blue,
            shape:   RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
                side: BorderSide(
                    color: Colors.white70,
                    width: 5
                ) ),//Border.all(color: Colors.black12, width: 5, style: BorderStyle.solid, strokeAlign: BorderSide.strokeAlignOutside),
            color: Colors.redAccent,
            child: Text("Please, enter your data", style: TextStyle(fontSize: 50)),
          ),
        )
    );
  }
}