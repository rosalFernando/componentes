import 'package:flutter/material.dart';


class HomePageTemp extends StatelessWidget{

  final opciones=['uno','dos','tres','cuatro','cinco'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:AppBar(
        title: Text('Componentes Temp'),
      ),
      body: ListView(
        //children: _crearItem(),
        children:_crearItemCorta(),
      ),
      );
  }

  List<Widget> _crearItem(){
    List<Widget> lista=List<Widget>();

    for (String opt in opciones) {
      final tempWidget=ListTile(
        title: Text(opt),
      );

      lista..add(tempWidget)
            ..add(Divider());
      
    }

    return lista;
  }

  List<Widget> _crearItemCorta(){
    var widgets=opciones.map((item){
      return Column(
        children: <Widget>[
          ListTile(
            title:Text(item + '!'),
            subtitle: Text('subtitulo'),
            leading: Icon(Icons.account_balance_wallet),
            trailing: Icon(Icons.arrow_forward_ios),
            onTap: (){},
          ),
          Divider(),
        ],
      );

    }).toList();
    return widgets;
  }
}