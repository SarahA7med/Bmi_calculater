import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class login extends StatelessWidget {
  var emailController = TextEditingController();
  var passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor:Colors.indigo ,
      ),

      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
              Text(
                'login',
                style: TextStyle(
                   fontSize:30.0,
                  fontWeight:FontWeight.bold,

                )   ,
              ),
            SizedBox(
              height: 50.0,
            ),
            TextFormField(
              controller: emailController,
              keyboardType: TextInputType.emailAddress,
           decoration:const InputDecoration(
             labelText: 'Email Address',
             border: OutlineInputBorder(),
             prefixIcon:Icon(
               Icons.email,
             ),

           ) ,
            ),
            SizedBox(
              height: 20.0,
            ),
            TextFormField(
              controller: passwordController,
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
              decoration:const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
                prefixIcon:Icon(
                  Icons.lock,
                ),
                suffixIcon: Icon(
                  Icons.remove_red_eye,
                ),

              ) ,
            ),
            SizedBox(
              height: 20.0,
            ),
            Container(
              width: double.infinity,
              color: Colors.indigoAccent,
              child: MaterialButton(
                  onPressed:() {

                    print(emailController.text);
                    print(passwordController.text);
                  },
                child:Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.white
                  ),
                ),

              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Don\'t have an account?',
                style: TextStyle(
                  color: Colors.indigo
                ),
                ),

                TextButton(
                  onPressed:(){

                  },
                    child: Text(
                  'Register now',
                      style: TextStyle(
                        color: Colors.indigoAccent
                      ),
                ),
                )
              ],
            ),
          ],
        ),
      ),

    );
  }
}
