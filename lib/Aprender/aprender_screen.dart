import 'package:flutter/material.dart';

class AprenderScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('Aprender'),
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
                    imagePath: 'assets/images_Aprender/BackEnd.png',
                    caption: 'Back-End',
                  ),
                  _createImageItem(
                    imagePath: 'assets/images_Aprender/FrontEnd.png',
                    caption: 'Front-End',
                  ),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  _createImageItem(
                    imagePath: 'assets/images_Aprender/DevOps.jpg',
                    caption: 'DevOps',
                  ),
                  _createImageItem(
                    imagePath: 'assets/images_Aprender/Design.jpg',
                    caption: 'Diseño',
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