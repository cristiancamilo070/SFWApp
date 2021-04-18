import 'package:flutter/material.dart';

class HomePage extends StatelessWidget{

  final estilo=new TextStyle(fontSize: 24 );
  final conteo=10;

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      
      appBar: AppBar(
        title: Text('Título'),
        centerTitle: true,
        backgroundColor: Colors.brown.shade400,
      ),
      body: Center(
      
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de taps:',style: estilo, ),
            Text('$conteo', style: estilo,),
          ],
        )
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          print('oli oli');
        },
        child: Icon(Icons.pets),
        backgroundColor:  Colors.brown.shade400, 
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
    
  }
}