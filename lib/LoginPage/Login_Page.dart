import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override

  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 25),
              child: Row(
                children: [
                  Image(
                    image: AssetImage("Assest/image/taxi-modern-drip-chamber.png"),
                    height: 250,
                    width: 280,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 1, top: 10, bottom: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Welcome Back,",
                    style: TextStyle(
                        fontSize: 38,
                        fontWeight: FontWeight.w900,
                        letterSpacing: 1),
                  ),
                  Text(
                    "Make it Work,make it right,make it fast",
                    style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        letterSpacing: 1),
                  )
                ],
              ),
            ),
            SizedBox(height: 5,),
            Padding(
              padding: const EdgeInsets.only(left: 28,right: 28),
              child: TextField(
                style: TextStyle(fontSize: 20,),
                decoration: InputDecoration(
                  prefixIcon: Icon(
                    Icons.person_outline,
                    size: 30,
                  ),
                  hintText: "E-Mail",
                  hintStyle: TextStyle(
                    fontSize: 20,
                    height: 2.3
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black54,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 20,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 2
                    )
                  )
        
                ),
              ),
            ),
            SizedBox(height: 8,),
            Padding(
              padding: const EdgeInsets.only(left: 28,right: 28),
              child: TextField(
                obscureText: true,
                keyboardType: TextInputType.number,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(28.0),
                    child: Icon(Icons.remove_red_eye,size: 30,),
                  ),
                  prefixIcon: Icon(
                    Icons.fingerprint,
                    size: 30,
                  ),
                  hintText: "Password",
                  hintStyle: TextStyle(
                      fontSize: 20,
                      height: 1
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black54,
                      width: 3,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.black,
                        width: 20,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(
                            color: Colors.black,
                          width: 2
                        )
                    )
        
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 25,top: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text("Forget Password?",style: TextStyle(color: Colors.blue.shade500,fontSize: 18,fontWeight: FontWeight.w900),),
                ],
              ),
            ),
            SizedBox(height: 20,),
            Column(
              children: [
                Container(
                  height: 80,
                  width: 400,
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Center(child: Text("LOGIN",style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.w500),)),
                ),
                SizedBox(height: 5,),
                Text("OR",style: TextStyle(fontSize: 20,),),
                Container(
                  height: 80,
                  width: 400,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 3,
                      color: Colors.black,
                    )
                  ),
                  child: Center(child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image(image: AssetImage('Assest/image/google.png'),height: 30,),
                      Text("    Sign-In with Google",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w700,letterSpacing: 1),),
                    ],
                  )),
                ),
                SizedBox(height: 10,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an Account?",style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),),
                    Text(" Signup",style: TextStyle(color: Colors.blue,fontSize: 18,fontWeight: FontWeight.w700),)
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
