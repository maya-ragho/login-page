

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loginppage/HomePage.dart';
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {

  var emailText = TextEditingController();
  var passText = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body: Container(
      height: double.infinity,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage('assets/images/img_5.png'),
          fit: BoxFit.cover,
        )
      ),
      child: Center(
        child: Container(
          width: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("images/img_4.png"),
              const SizedBox(height: 20,),

              TextField(
                //keyboardType: TextInputType.phone,
                controller: emailText,
                decoration: InputDecoration(
                  hintText: 'abc@gmail.com',
                  suffixIcon: const Icon(Icons.email_outlined,color: Colors.white,),
                  labelText: 'Email',
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(11),
                    borderSide: const BorderSide(
                      color: Colors.white,
                      width: 1,
                    )
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
              ),
              Container(height: 11,),

              TextField(
                controller: passText,
                obscureText: true,
                decoration: InputDecoration(
                  hintText: '..........',
                  suffixIcon: const Icon(Icons.password, color: Colors.white,),
                  labelText: 'Password',
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(11),
                        borderSide: const BorderSide(
                          color: Colors.white,
                          width: 1,
                        )
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10)
                    )
                ),
              ),

              const SizedBox(height: 10,),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                   crossAxisAlignment: CrossAxisAlignment.end,

                    children: [
                      ElevatedButton(onPressed: (){
                        String email = emailText.text;
                        String password = passText.text;

                        print("Email: $email, Pass:$password");

                        Navigator.push(context, MaterialPageRoute(builder:(BuildContext context)
                        {
                          return MyHomePage();
                        },),);


                      }, child: const Text('Login', style: TextStyle(fontSize: 12, color: Colors.white),)),

                      const SizedBox(width: 20,),

                      ElevatedButton(onPressed: (){}, child: const Text('Sign up', style: TextStyle(fontSize: 12, color: Colors.white),)),
                      const SizedBox(height: 20, width: 20,),

                    ],
                  ),

                  //const SizedBox(height: 20,),


                  /*const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,

                    //children: [
                      //ElevatedButton(onPressed: (){}, child: const Text('Forgot Password', style: TextStyle(fontSize: 12, color: Colors.white),)),

                     // SizedBox(width: 20,),

                     // ElevatedButton(onPressed: (){}, child: const Text('Create a new account', style: TextStyle(fontSize: 12, color: Colors.white),)),
                      //const SizedBox(height: 20, width: 20,),

                   // ],
                  ),*/

                ],
              )
            ],
          ),

        ),
      ),
    ),
    );
  }
}





