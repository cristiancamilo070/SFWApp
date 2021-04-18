import 'package:flutter/material.dart';

class ContadorPage extends StatefulWidget{
@override
  createState() => _ContadorPageState();
  

}

class _ContadorPageState extends State<ContadorPage>{

  final _estilo=new TextStyle(fontSize: 24 );
  int _conteo=0;
  
@override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('STATFUL'),
        centerTitle: true,
        backgroundColor: Colors.pink.shade200,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Número de taps:',style: _estilo, ),
            Text('$_conteo', style: _estilo,),
          ],
        )
      ),
      floatingActionButton: _crearBotones(),
      
    );
    
  }

  Widget _crearBotones(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget> [ SizedBox(width: 30,),
                          FloatingActionButton(onPressed: _reset, child: Icon(Icons.exposure_zero),backgroundColor: Colors.brown.shade500),
                          Expanded(child: SizedBox()),
                          FloatingActionButton(onPressed: _sustraer, child: Icon(Icons.remove),backgroundColor: Colors.purple.shade400),
                          SizedBox(width: 5.0,),
                          FloatingActionButton(onPressed: _agregar, child: Icon(Icons.add),backgroundColor: Colors.lime.shade400,),
    ],
    );
    }

    void _agregar(){
      setState(() {
        _conteo++;
      });
    }

    void _sustraer(){
      setState(() {
        if (_conteo==0) {
          _conteo=0; }
        else{_conteo--;}
      });
    }

    void _reset(){
      setState(() {
        _conteo=0;
      });
    }
}

