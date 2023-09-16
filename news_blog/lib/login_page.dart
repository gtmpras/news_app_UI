import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:news_blog/drawer.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Text('Welcome to \n News Blog',
                style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
              ),
              SizedBox(height: 20,),
             TextFormField(
              decoration: InputDecoration(
                hintText: "Email Address",
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                fillColor: Color.fromARGB(255, 194, 213, 231),
                filled: true,
              ),
             ),
               SizedBox(height: 20,),
               TextFormField(
              decoration: InputDecoration(
                hintText: "Password",
                suffixIcon: Icon(Icons.remove_red_eye_sharp),  
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(20)),
                fillColor: Color.fromARGB(255, 194, 213, 231),
                filled: true,
              ),
             ),
             SizedBox(height: 10,),
             Align(
                alignment: Alignment.topRight,
               child: Container(
                height: 20,
                width:130,
                child: Text('Forget Password?',style: TextStyle(color: Colors.red,fontSize: 15,fontWeight: FontWeight.bold),),
               ),
             ),SizedBox(height: 20,),
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>DrawerSide()));
                }
                ,
                child: Container(
                  height: 50, 
                  width: double.infinity,  
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 235, 98, 7),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  child: Center(child: Text('Sign In',
                  style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)),
                ),
              ),
              SizedBox(height: 20,),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RichText(text: TextSpan(text: "Don't have an account?",style: TextStyle(color: Colors.black,fontWeight: FontWeight.bold))),
                    RichText(text: TextSpan(text: "Sign Up",style: TextStyle(color: Colors.red,fontWeight: FontWeight.bold))),
                  ],
                ),
              ), SizedBox(height: 100,),
              Divider(color: Colors.black,
              thickness: 1,),
             
            Align(
              alignment: Alignment.center,
              child: Container(
                child: Text('Or Sign in with',style: TextStyle(fontWeight: FontWeight.bold),),
              ),
            ),
           SizedBox(height: 20,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(color: Colors.blue,borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                  padding: EdgeInsets.all(8.0), // Optional: Add padding to the icon container
                  child: Icon(
                    Icons.facebook,
                    size: 40.0, // Optional: Adjust the size of the icon
                    color: Colors.white, // Optional: Adjust the color of the icon
                  ),
                ),
                     Container(
                  child: Text(
                    'Facebook',
                    style: TextStyle(
                      fontSize: 18.0,color: Colors.white // Optional: Adjust the font size of the text
                    ),
                  ),
                ),
                    ],
                  ),
                ),
                Container(
                  height: 50,
                  width: 150,
                  decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(20)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                  padding: EdgeInsets.all(8.0), // Optional: Add padding to the icon container
                  child: FaIcon(
                    FontAwesomeIcons.google,
                
                  ),
                ),
                     Container(
                  child: Text(
                    'Google',
                    style: TextStyle(
                      fontSize: 18.0,color: Colors.black // Optional: Adjust the font size of the text
                    ),
                  ),
                ),
                    ],
                  ),
                ),
              ],
            )
            ],
          ),
      ),
      ),
    );
  }
}