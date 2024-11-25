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
          body: Card(
            elevation: 20,
            shadowColor: Colors.blue,
            shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.vertical(top: Radius.circular(5)),
                side: BorderSide(
                    color: Colors.white70,
                    width: 5
                ) ),//Border.all(color: Colors.black12, width: 5, style: BorderStyle.solid, strokeAlign: BorderSide.strokeAlignOutside),
            color: Colors.redAccent,
            child: Container(margin: EdgeInsets.all(10), child: const Text("Working by willing of god, build the success",textAlign: TextAlign.center, style: TextStyle(fontSize: 50, ))),
          ),
        )
    );
  }
}