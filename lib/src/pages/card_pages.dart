import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10),
        children: <Widget>[
          _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
           _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
           _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
           _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
           _cardTipo1(),
          SizedBox(height: 30.0,),
          _cardTipo2(),
          SizedBox(height: 30.0,),
          
          
        ],
      ),
    );
  }

//creacion de card
  Widget _cardTipo1() {
    return Card(
      elevation: 10.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
      child: Column(
        children: <Widget>[
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Titulo de la tarjeta'),
            subtitle: Text(
                'descripcion de la tarjeta que estamos haciendo en esta practica porque de eso se poco'),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              FlatButton(onPressed: () {}, child: Text('Cancelar')),
              FlatButton(onPressed: () {}, child: Text('OK')),
            ],
          ),
        ],
      ),
    );
  }

//creacion de contenedor como card. mayor control sobre elementos como imagenes
  Widget _cardTipo2() {
    final card=Container(

      

      child: Column(
        children: <Widget>[

          FadeInImage(
            
            placeholder: AssetImage('assets/original.gif'), 
            image: NetworkImage('https://pro2-bar-s3-cdn-cf2.myportfolio.com/f7b51595-7701-42b3-a966-bb0e4baf04df/d0a01d8f-0d02-4847-b081-52e0032d1362_rw_1920.jpg?h=c0b64791dd9578e3cc981888f49a0e19'),
            fadeInDuration: Duration(milliseconds: 200),
            height: 300.0,
            fit: BoxFit.cover,
            ),
/*
          Image(
             NetworkImage('https://pro2-bar-s3-cdn-cf2.myportfolio.com/f7b51595-7701-42b3-a966-bb0e4baf04df/d0a01d8f-0d02-4847-b081-52e0032d1362_rw_1920.jpg?h=c0b64791dd9578e3cc981888f49a0e19'),
          ),
          */
          Container(
            padding: EdgeInsets.all(10.0),
            child: Text('Nose que pasa')
            )
        ],
      ),

    );
    return Container(
      
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color:Colors.white,
        boxShadow: <BoxShadow>[
          BoxShadow(
            color:Colors.black26,
            blurRadius: 10.0,
            spreadRadius: 2.0,
            offset: Offset(2.0,10.0),
           ),
        ]
        
      ),
      child:ClipRRect(
        child:card,
        borderRadius: BorderRadius.circular(30.0),
      ),
    );
  }
}
