

import 'package:coffee_shop/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'RegisterPage.dart';


class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    TextEditingController controller = TextEditingController();

    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 640,
              width: 360,
              color: const Color(0xff8C95FF),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    child:const Text("LOGIN",style: TextStyle(
                        fontSize: 40
                    ),),
                  ),

                  Container(

                    child: Column(
                      children: [
                        Container(
                          margin: const EdgeInsets.all(20),
                          child: TextField(
                            decoration: InputDecoration(
                              fillColor: const Color(0xffFFFFFF),
                              filled: true,
                              prefixIcon: const Icon(Icons.supervised_user_circle_rounded),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                              hintText: "User name",
                            ),
                            controller: controller,
                          ),
                        ),

                        Container(
                          margin: const EdgeInsets.only(left: 20,right: 20),
                          child:   TextField(
                            decoration: InputDecoration(
                              fillColor: const Color(0xffFFFFFF),
                              filled: true,
                              prefixIcon: const Icon(Icons.password_rounded),
                              border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                              hintText: "Password",
                            ),
                            controller: controller,
                          ),
                        ),
                      ],
                    ),
                  ),

                  Container(

                    child: Column(
                      children: [
                        RaisedButton(color: const Color(0xffC8F4F9), child: const Text("Login"), onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const HomeScreen();
                          }));
                        }),

                        RaisedButton( color: const Color(0xffC8F4F9),child: const Text("Register"), onPressed:(){
                          Navigator.push(context, MaterialPageRoute(builder: (context){
                            return const RegisterPage();
                          }));
                        },
                        ),
                      ],
                    ),
                  )

                ],
              ),
            ),

          ],
        ),
      ),
    );
  }
}

