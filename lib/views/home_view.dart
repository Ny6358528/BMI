import 'package:flutter/material.dart';
import 'package:test22/widgets/customButton.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

int weight = 50;
int age = 24;
int height = 160;
bool isMale=true;
class _HomeViewState extends State<HomeView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF0B0B20),
      appBar: AppBar(
        backgroundColor: Color(0xFF0B0B20),
        centerTitle: true,
        title: Text(
          'BMI Calculator',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            //male and female
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=true;
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color:(isMale)?Color(0xFFEB1B56):Color(0xFF1D1D31),
                              
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.male,
                                color: Colors.white,
                                size: 80,
                              ),
                              Text(
                                'Male',
                                style:
                                    TextStyle(fontSize: 20, color: Colors.white),
                              )
                            ],
                          )),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale=false;
                        });
                      },
                      child: Container(
                          decoration: BoxDecoration(
                              color:(isMale)? Color(0xFF1D1D31):  Color(0xFFEB1B56),
                              borderRadius: BorderRadius.circular(10)),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.female,
                                color: Colors.white,
                                size: 80,
                              ),
                              Text(
                                'Female',
                                style:
                                    TextStyle(fontSize: 20, color: Colors.white),
                              )
                            ],
                          )),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),

            //height
            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xFF1D1D31),
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Height',
                        style: TextStyle(color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.baseline,
                        textBaseline: TextBaseline.alphabetic,
                        children: [
                          Text(
                            height.toString(),
                            style: TextStyle(
                                fontSize: 38,
                                color: Colors.white,
                                fontWeight: FontWeight.w600),
                          ),
                          Text(
                            'cm',
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                      Slider(
                          value: height.toDouble(),
                          min: 120,
                          max: 220,
                          activeColor: Color(0xFFEB1B56),
                          inactiveColor: Color(0xFF424357),
                          onChanged: (value) {
                            setState(() {
                              height = value.toInt();
                            });
                          })
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),

            //weight and age
            Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF1D1D31),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            weight.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w500),
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton.filled(
                                  style: IconButton.styleFrom(
                                    backgroundColor: Color(0xFF424357),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      weight--;
                                    });
                                  },
                                  icon: Icon(Icons.remove),
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                IconButton.filled(
                                  style: IconButton.styleFrom(
                                    backgroundColor: Color(0xFF424357),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      weight++;
                                    });
                                  },
                                  icon: Icon(Icons.add),
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        color: Color(0xFF1D1D31),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Age',
                            style: TextStyle(color: Colors.white),
                          ),
                          Text(
                            age.toString(),
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 30,
                                fontWeight: FontWeight.w500),
                          ),
                          Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                IconButton.filled(
                                  style: IconButton.styleFrom(
                                    backgroundColor: Color(0xFF424357),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      age--;
                                    });
                                  },
                                  icon: Icon(Icons.remove),
                                  color: Colors.white,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                IconButton.filled(
                                  style: IconButton.styleFrom(
                                    backgroundColor: Color(0xFF424357),
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      age++;
                                    });
                                  },
                                  icon: Icon(Icons.add),
                                  color: Colors.white,
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(
              height: 10,
            ),
            //calculate
            customButton(
              height: 50,
              text: 'Calculate',
            )
          ],
        ),
      ),
    );
  }
}
