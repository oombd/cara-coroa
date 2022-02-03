import 'dart:math';

import 'package:cara_coroa/Resultado.dart';
import 'package:flutter/material.dart';

class Jogar extends StatefulWidget {
  const Jogar({Key? key}) : super(key: key);

  @override
  _JogarState createState() => _JogarState();
}

class _JogarState extends State<Jogar> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(17),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(2),
                child: Text(
                  "⚇",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 150,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(2),
                child: Text(
                  "Cara",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(2),
                child: Text(
                  "ou",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(2),
                child: Text(
                  "Coroa",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 70,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(2),
                child: Text(
                  "♛",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 150,
                  ),
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    int n = Random().nextInt(2);
                    List caraCoroa = ["♛", "⚇"];

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => Resultado(caraCoroa[n])
                      ),
                    );
                  },
                  child: const Text(
                      "JOGAR",
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 40,
                      ),
                    ),
                style: ButtonStyle(
                  padding: MaterialStateProperty.all(EdgeInsets.all(10)),
                  backgroundColor: MaterialStateProperty.all(Colors.white54)
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
