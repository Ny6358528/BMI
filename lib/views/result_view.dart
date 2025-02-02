import 'package:flutter/material.dart';
import 'package:test22/widgets/customButton.dart';

class ResultView extends StatelessWidget {
  const ResultView({super.key, required this.result,  this.color=false});
  final double result;
  final bool color;
  String getstatus() {
    if (result < 18.5) {
   Color.fromARGB(255, 14, 184, 28);
      return 'Underweight';
    } else if (result >= 18.5 && result < 24.9) {
        Color.fromARGB(255, 193, 224, 14);
      return 'Normal';
    } else if (result >= 25 && result < 29.9) {
      Color.fromARGB(255, 22, 137, 190);
      return 'Overweight';
    } else {
     Color.fromARGB(255, 202, 12, 116);
      return 'Obese';
    }
}
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Color(0xFF0B0B20),
        appBar: AppBar(
          backgroundColor: Color(0xFF0B0B20),
          leading: IconButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: Icon(
                Icons.arrow_back_ios,
                color: Colors.white,
              )),
        ),
        body: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 40,
              ),
              Text(
                'Your Result',
                style: TextStyle(color: Colors.white, fontSize: 30),
              ),
              SizedBox(
                height: 20,
              ),
              //container
              Expanded(
                  child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFF1D1E33),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                       Text(getstatus(
                      
                       ), style: TextStyle(fontSize:30,color: (color)?Colors.white:getstatus()=='Underweight'?Color.fromARGB(255, 14, 184, 28):getstatus()=='Normal'?Color.fromARGB(255, 193, 224, 14):getstatus()=='Overweight'?Color.fromARGB(255, 22, 137, 190):Color.fromARGB(255, 202, 12, 116))),
                          
                      Text(result.toString(),
                          style: TextStyle(color: Colors.white)),
                    ],
                  ),
                ),
              )),
              SizedBox(
                height: 10,
              )
              //custombutton
              ,
              customButton(
                height: 100,
                text: 'Re-Calculate',
              ),
            ],
          ),
        ),
      );
    }
  }

