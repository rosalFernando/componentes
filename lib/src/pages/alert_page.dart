import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Alert'),
      ),
      body: Center(
        child: RaisedButton(
          
          child:Text('Mostrar Alerta'),
          color: Colors.blue,
          textColor: Colors.white,
          shape: StadiumBorder(),
          onPressed: ()=>_mostrarAlerta(context),

          ),
      ),
      floatingActionButton: FloatingActionButton(
        child:Icon(Icons.arrow_back),
        onPressed: (){
          Navigator.pop(context);
        },
      ),
      );
  }

  void _mostrarAlerta(BuildContext context){
    showDialog(
      context: context,
      barrierDismissible: false,
      builder: (context){
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
            ),
          title: Text('Titulo'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text('Este es el contenido de la caja de la alerta'),
              FlutterLogo(size:100)
            ],
          ),
          actions: <Widget>[
            FlatButton(
              onPressed: ()=>Navigator.of(context).pop(),
              child: Text('Cancelar')
              ),
              FlatButton(
              onPressed: (){}, 
              child: Text('Ok')
              )
          ],
        );
      },
      );
  }
}