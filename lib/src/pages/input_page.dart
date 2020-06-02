import 'package:flutter/material.dart';

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

String _nombre="";
String _email="";
String _pass="";
String _fecha="";
String _opcionSelect="volar";
List _poderes=['volar','rayosX','super aliento', 'super fuerza'];

TextEditingController _inputFieldDateController= new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:Text('Input de texto')
      ),
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 10.0,vertical: 20.0),
        children: <Widget>[
          _crearInput(),
          Divider(),
          _crearEmail(),
          Divider(),
          _crearPass(),
          Divider(),
          _crearFecha(context),
          Divider(),
          _crearDropdown(),
          Divider(),
          _crearPersona(),
        ],
      ),
      
    );
  }

  Widget _crearInput() {
    return TextField(
      //autofocus: true,
      textCapitalization: TextCapitalization.sentences,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        counter: Text('Letras: ${_nombre.length}'),
        hintText: 'Nombre de la persona hint',
        labelText: 'Nombre label',
        helperText: 'Solo es el nombre helper',
        suffixIcon: Icon(Icons.accessibility),
        icon:Icon(Icons.account_circle),
      ),
      onChanged: (valor){
        
        setState(() {
          _nombre=valor;
        });

      },

    );
  }

 Widget _crearPersona() {
   return ListTile(
     title: Text('Nombre es: '+ _nombre),
     subtitle: Text('Email: ${_email}'),
     leading: Text(_opcionSelect),
     
   );
 }

 Widget _crearEmail() {
   return TextField(
      keyboardType: TextInputType.emailAddress,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        
        hintText: 'Email hint',
        labelText: 'Email label',
        suffixIcon: Icon(Icons.alternate_email),
        icon:Icon(Icons.email),
      ),
      onChanged: (valor){
        
        setState(() {
          _email=valor;
        });

      },

    );
 }

Widget  _crearPass() {
return TextField(
      obscureText: true,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        
        hintText: 'Password hint',
        labelText: 'Password label',
        suffixIcon: Icon(Icons.lock_open),
        icon:Icon(Icons.lock),
      ),
      onChanged: (valor){
        
        setState(() {
          _pass=valor;
        });

      },

    );
}

Widget _crearFecha(BuildContext context){
  return TextField(
    enableInteractiveSelection: false,
    controller: _inputFieldDateController,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20.0)
        ),
        
        hintText: 'Fecha Nacimiento hint',
        labelText: 'Fecha Nacimiento label',
        suffixIcon: Icon(Icons.calendar_today),
        icon:Icon(Icons.perm_contact_calendar),
      ),
     onTap: (){
       FocusScope.of(context).requestFocus(new FocusNode());
       _selectDate(context);
     },

    );
}

_selectDate(BuildContext context) async {

  DateTime picked = await showDatePicker(
    context: context, 
    initialDate: new DateTime.now(), 
    firstDate: new DateTime(2020), 
    lastDate: new DateTime(2024),
    locale: Locale('es','ES'),
    );

    if(picked != null){
      setState(() {
        _fecha=picked.toString();
        _inputFieldDateController.text=_fecha;
      });
    }

}

List<DropdownMenuItem<String>> getOpcionesDropdown(){
  List<DropdownMenuItem<String>> lista = new List();
  _poderes.forEach((poder){
    lista.add(DropdownMenuItem(
      child: Text(poder),
      value: poder,
      ));
  });

  return lista;

}

Widget _crearDropdown(){
  return Row(
    children: <Widget>[
      Icon(Icons.select_all),
      SizedBox(width:30.0),
       Expanded(
                child: DropdownButton(
    value: _opcionSelect,
    items: getOpcionesDropdown(), 
    onChanged: (opt){
      setState(() {
          _opcionSelect=opt;
      });

    },
    ),
       )
    ],
  );

 
}

}