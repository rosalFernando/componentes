import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Avatar'),
        actions: <Widget>[

          Container(
            padding: EdgeInsets.all(5.0),
            child: CircleAvatar(

              backgroundImage: NetworkImage('https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/deadpool-1563953405.jpeg'),
              radius: 23.0,

            ),
          ),

          Container(
            margin: EdgeInsets.only(right: 10.0),
            child: CircleAvatar(
              child: Text('SL'),
              backgroundColor: Colors.brown,
              
            ),
          )
        ],
      ),
      body: Center(
        child: FadeInImage(
          placeholder: AssetImage('assets/original.gif'),
           image: NetworkImage('https://i.pinimg.com/originals/7e/55/84/7e558432c10a4c64fac6b09deda5a981.jpg'),
           fadeInDuration: Duration(milliseconds: 200),
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
}