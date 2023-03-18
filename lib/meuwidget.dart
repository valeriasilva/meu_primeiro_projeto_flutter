import 'package:flutter/material.dart';

class MeuWidget extends StatefulWidget {
  const MeuWidget({super.key});

  @override
  State<MeuWidget> createState() => _MeuWidgetState();
}

class _MeuWidgetState extends State<MeuWidget> {
  int i = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Meu primeiro aplicativo"),
        leading: Icon(Icons.menu),
        ),
        floatingActionButton: FloatingActionButton(onPressed: (){
          setState((){
            i++;
          });
        }, child: Icon(Icons.add),),
      body: Center(
        child: Container(
          child: Text(
            i.toString(),
            style: TextStyle(
              fontSize: 30,
              color: Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}