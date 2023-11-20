import 'package:flutter/material.dart';
import 'Lugares/lugares_screen.dart';
import 'Aprender/aprender_screen.dart';
import 'Avisos/avisos.screen.dart';
import 'Evaluar/evaluar_screen.dart';
//import 'package:flutter_application_1/modules/operaciones/PruebaPage.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Por un mundo Saludable',
      debugShowCheckedModeBanner: false,
      home: BeginPage(),
    );
  }
}

class BeginPage extends StatefulWidget {
  const BeginPage({Key? key}) : super(key: key);
  @override
  State<BeginPage> createState() => BeginPageState();
}

class BeginPageState extends State<BeginPage> {
  @override
  Widget build(BuildContext context) {
    return Container(
        alignment: Alignment.center,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("assets/images_Main/Background.jpg"),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _createButtonItem(
                      imagen: 'assets/images_Main/Lugares.jpg',
                      text: 'Lugares',
                      splashColor: const Color.fromARGB(255, 244, 238, 54), 
                      onTap: () {
                          Navigator.push(
                          context,MaterialPageRoute(builder: (context) => LugaresScreen()),
                          );
                      }),
                  _createButtonItem(
                      imagen: 'assets/images_Main/Aprender.jpg',
                      text: 'Aprender',
                      splashColor: const Color.fromARGB(255, 49, 90, 212), 
                      onTap: () {
                        Navigator.push(
                          context,MaterialPageRoute(builder: (context) => AprenderScreen()),
                          );
                      }),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _createButtonItem(
                      imagen: 'assets/images_Main/Evaluar.jpg',
                      text: 'Evaluacion',
                      splashColor: const Color.fromARGB(255, 54, 244, 177), 
                      onTap: () {
                        Navigator.push(
                          context,MaterialPageRoute(builder: (context) => EvaluarScreen()),
                          );
                      }),
                  _createButtonItem(
                      imagen: 'assets/images_Main/Avisos.jpg',
                      text: 'Avisos',
                      splashColor: Colors.red, 
                      onTap: () {
                        Navigator.push(
                          context,MaterialPageRoute(builder: (context) => AvisosScreen()),
                          );
                      }),
                ],
              ),
            ],
          ),
        ));
  }

Widget _createButtonItem({
  String? imagen,
  String? text,
  GestureTapCallback? onTap,
  Color? splashColor, // Add splashColor parameter
}) {
  text ??= '';
  imagen ??= '';
  return Material(
    color: Colors.black,
    elevation: 8,
    borderRadius: BorderRadius.circular(6),
    clipBehavior: Clip.antiAliasWithSaveLayer,
    child: InkWell(
      splashColor: splashColor, // Use the provided splashColor
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Ink.image(
            image: AssetImage(imagen),
            height: 120,
            width: 120,
            // fit: BoxFit.cover,
          ),
          const Divider(
            height: 6,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ],
      ),
    ),
  );
}
}