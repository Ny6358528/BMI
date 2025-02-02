import 'package:flutter/material.dart';
import 'package:test22/views/home_view.dart';
import 'package:test22/views/result_view.dart';

class customButton extends StatelessWidget {
  const customButton({
    super.key, required this.height, required this.text,
  });
 final double height;
 final String text;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: double.infinity,
      child: ElevatedButton(
          style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFFEE1C59),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              )),
          onPressed: () {
            double heightIntMater=height/100;
            double result=weight/(heightIntMater*heightIntMater);
            Navigator.of(context).push(MaterialPageRoute(builder: (context) {
              return ResultView(result:result ,);
            }));
          },
          child: Text(
            text,
           
            style: TextStyle(color: Colors.white, fontSize: 20),
          )),
    );
  }
}
