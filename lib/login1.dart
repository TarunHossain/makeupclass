import 'package:flutter/material.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({ Key? key }) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage("images/loginimg.jpg"),
                  fit: BoxFit.fill) 
                ),
              ),
              Positioned(child: Padding(
                padding:const EdgeInsets.only(top: 220,left: 15,right: 5),
                child: Column(children: [
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.email_rounded),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: 'Email',
                      hintText: 'Enter your address'
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextField(
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      labelText: 'Password',
                      hintText: 'Enter your Password'
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('dont have an account'),
                      TextButton(onPressed: (){}, child: Text('Sign Up')),
                    ],
                  ),
                   SizedBox(
                    height: 10,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Center(
                        child: Container(
                          height: 60,
                          width: 150,
                          child: TextButton(onPressed: (){},
                           child: Text(
                             "SingIn",
                             style:
                             TextStyle(color: Colors.white,fontSize: 35),
                           )),
                           decoration: BoxDecoration(
                             color: Colors.blue,
                             borderRadius: BorderRadius.only(
                               topLeft: Radius.circular(25),
                               bottomLeft: Radius.circular(25),
                             ),
                           ),
                        ),
                      ),
                    ],
                  )

                ],), 
              ))
            ],
        )        
        ),
      ),
    );
  }
}