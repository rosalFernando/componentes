import 'package:componentes/src/pages/alert_page.dart';
import 'package:componentes/src/routes/routes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
 
void main() => runApp(MyApp());
 
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //adaptacion idiomas.
      localizationsDelegates: [
        // ... app-specific localization delegate[s] here
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
      ],
      supportedLocales: [
        const Locale('en'), // English
        const Locale('es'), // Español
        
      ],
      title: 'Componentes APP',
      debugShowCheckedModeBanner: false,//eliminar banner
      //home: HomePage(),

      /*
      Rutas de la aplicacion.
      se configuran las rutas con el mismo nombre del json
      y se usan en las vistas llamando al json.
      */
      initialRoute: 'home',
      routes: getApplicationRoutes(),
      onGenerateRoute: (settings){
        print("ruta: "+settings.name);
        return MaterialPageRoute(
          builder: (BuildContext context)=>AlertPage(),
          );
      },

    );
  }
}