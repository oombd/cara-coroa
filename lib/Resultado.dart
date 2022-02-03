import 'package:cara_coroa/jogar.dart';
import 'package:flutter/material.dart';

class Resultado extends StatefulWidget {

  String? sorteio;
  Resultado(this.sorteio, {Key? key}) : super(key: key);

  @override
  _ResultadoState createState() => _ResultadoState();
}

class _ResultadoState extends State<Resultado> {

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
                Padding(
                padding: EdgeInsets.all(2),
                child: Text(
                  widget.sorteio!,
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 150,
                  ),
                ),
              ),
              ElevatedButton(
                onPressed: (){
                  Navigator.pop(context);
                },
                child: Text(
                  "VOLTAR",
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
