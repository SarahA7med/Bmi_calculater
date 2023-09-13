import 'package:flutter/material.dart';
class Result extends StatelessWidget {
  final int result;
  final bool isMale;
  final int age;
  Result({
    required this.result,
    required this.isMale,
    required this.age,

});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[200],
        title: Text(
          'BMI Result',
        ),
      ),
      body: Center(
        child: Container(
          width: double.infinity,
          color: Colors.indigo[50],
          child: Column(

            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Gender: ${isMale?'Male':'Female'}',
                style: TextStyle(
                  color: Colors.indigo,
                  fontWeight:FontWeight.bold,
                  fontSize: 25.0
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Result: ${result}',
                style: TextStyle(
                  color: Colors.indigo,
                  fontWeight:FontWeight.bold,
                  fontSize: 25.0
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Age: ${age}',
                style: TextStyle(
                  color: Colors.indigo,
                  fontWeight:FontWeight.bold,
                  fontSize: 25.0
                ),
              ),

            ],

          ),

        ),
      ),
    );
  }
}
