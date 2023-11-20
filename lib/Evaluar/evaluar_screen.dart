import 'package:flutter/material.dart';

class EvaluarScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Evaluar'),
      ),
      body: Container(
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
                  _createImageItem(
                    imagePath: 'assets/images_Evaluar/Auto.jpeg',
                    caption: 'Auto evaluacion',
                  ),
                  _createImageItem(
                    imagePath: 'assets/images_Evaluar/Docente.jpg',
                    caption: 'Evaluacion docente',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _createImageItem(
                    imagePath: 'assets/images_Evaluar/Institucional.png',
                    caption: 'Evaluacion institucional',
                  ),
                  _createImageItem(
                    imagePath: 'assets/images_Evaluar/Parciales.png',
                    caption: 'Parciales',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _createImageItem({
    required String imagePath,
    required String caption,
  }) {
    return Column(
      children: <Widget>[
        Image.asset(
          imagePath,
          height: 100.0,
          width: 100.0,
        ),
        SizedBox(height: 10.0),
        Text(
          caption,
          style: TextStyle(fontSize: 19.0, color: Colors.white),
        ),
      ],
    );
  }
}