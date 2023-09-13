import 'dart:math';

import 'package:flutter/material.dart';
import 'package:untitled/Result.dart';

class BmiScreen extends StatefulWidget {
  const BmiScreen({super.key});

  @override
  State<BmiScreen> createState() => _BmiScreenState();
}

class _BmiScreenState extends State<BmiScreen>
{
  bool isMale= true;
 double height=120.0;
 int weight=40;
 int age=20;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigo[200],
        title:
        Text(
          'BMI Calculator'
        ),

      ),
      body:
      Column(
    children: [
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child:
          Expanded(
            child: Row(
              children: [
                Expanded(

                    child: GestureDetector(
                      onTap: ()
                      {
                       setState(() {
                        isMale=true;
                       });
                      }
                      ,
                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
               children: [
                       Image(
                           image:AssetImage('assets/image/male.png'),
                         height: 90.0,
                         width: 90.0,
                       ),

                         SizedBox(
                        height: 20.0,
                         ),
                         Text(
                           'Male',
                           style: TextStyle(
                             fontSize: 25.0,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
               ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: isMale?Colors.blue[500]: Colors.blue[100],
                        ),
                      ),
                    ),
                ),
                SizedBox(
                  width: 20.0,
                ),
                Expanded(

                    child: GestureDetector(
                   onTap:()
                      {
                       setState(() {
                         isMale=false;
                       });
                      },

                      child: Container(

                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Image(
                   image:AssetImage('assets/image/female.png'),
                   height: 90.0,
                   width: 90.0,
                 ),
                         SizedBox(
                        height: 20.0,
                         ),
                         Text(
                           'Female',
                           style: TextStyle(
                             fontSize: 25.0,
                             fontWeight: FontWeight.bold,
                           ),
                         ),
               ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color:isMale? Colors.pink[100]: Colors.pink[300]
                        ),
                      ),
                    ),
                  ),

              ],
    ),
          ),
        ),
      ),
      Expanded(
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Height',
                  style: TextStyle(
                    fontSize: 25.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 10.0,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '${height.round()}',
                      style: TextStyle(
                        fontSize: 40.0,
                        fontWeight: FontWeight.w900,
                      ),
                    ),
                    Text(
                      'CM',
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
                Slider(
                    value:height,
                    max: 220,
                    min: 80,
                    onChanged:(value)
                    {
                      setState(() {
                        height=value;
                      });
                        print(value.round());
                    }

                ),
              ],
            ),
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.yellow[50],
            ) ,
          ),
        ),
      ), 
      Expanded(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Row(
            children:
            [
              Expanded(
                child: Container(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                  Text(
                    'Weight',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    '${weight}',
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                              onPressed: ()
                          {
                            setState(() {
                              weight--;
                            });
                          },
                            mini: true,
                            child: Icon(
                              Icons.remove
                            ),
                          ),
                          FloatingActionButton(
                              onPressed: ()
                          {
                             setState(() {
                               weight++;
                             });
                          },
                            mini: true,
                            child: Icon(
                              Icons.add
                            ),
                          )
                        ],
                      ),
          ],
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.orange[100],
                  ),
                ),
              ),
              SizedBox(
                width: 20.0,
              ),
              Expanded(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.orange[100],
                  ),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children:[
                      Text(
                        'Age',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        '${age}',
                        style: TextStyle(
                          fontSize: 25.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          FloatingActionButton(
                            onPressed: ()
                            {
                             setState(() {
                               age--;
                             });
                            },
                            mini: true,
                            child: Icon(
                                Icons.remove
                            ),
                          ),
                          FloatingActionButton(
                            onPressed: ()
                            {
                              setState(() {
                               age++;
                              });
                            },
                            mini: true,
                            child: Icon(
                                Icons.add
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      Container(
        width: double.infinity,
        color: Colors.indigo[200],
        child: MaterialButton(
      onPressed:(){
        var result = weight/pow(height/ 100,2);
        print(result.round());
        Navigator.push(
          context,
          MaterialPageRoute(
              builder:(context)=>Result(
                age: age,
                isMale: isMale,
                result: result.round(),
              ),
          )
        );
      },
          height: 50.0,
          child:
             Text(
              'Calculate',
              style: TextStyle(
                color: Colors.white
              ),

            ),
          ),
      ),



    ],

    )
    );
  }
}
