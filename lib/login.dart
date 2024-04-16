// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _Ma1State();
}

class _Ma1State extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
     home: Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
        backgroundColor: Colors.purple,
         leading: IconButton(
          onPressed: ()
          {
            
Navigator.pop(context);

          },
           icon: Icon(Icons.arrow_back)),
        
      ),

      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 0),
            child: Text('Login to your Account', style: TextStyle(
              fontSize: 20,
              color: Colors.blue,
              fontWeight: FontWeight.bold,
            ),
            ),
          ),
          SizedBox(height: 30,),
Form(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: TextField(
          
          keyboardType: TextInputType.emailAddress,
          decoration: InputDecoration(
            labelText: 'Email',
            hintText: 'Enter your email address',
            prefixIcon: Icon(Icons.email),
            
             enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                )
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
        
              )
          ),
          
        onChanged: (String value) {
        
        },
        
        
        ),
      ),
SizedBox(height: 35,),

Padding(
  padding: const EdgeInsets.symmetric(horizontal: 15),
  child: TextField(
          obscureText: true,
          keyboardType: TextInputType.visiblePassword,
          decoration: InputDecoration(
            labelText: 'Password',
            hintText: 'Enter your password',
            prefixIcon: Icon(Icons.password),
  
             enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                )
              ),
              border: OutlineInputBorder(
                borderSide: BorderSide(color: Colors.grey),
  
              )
          ),
          
  onChanged: (String value) {
  
  },
  
  
        ),
),
      SizedBox(height: 25,),

      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: MaterialButton(
          height: 60,
          minWidth: double.infinity,
          
        child: Text('login'),
        color: Colors.blue,
        
        textColor: Colors.white,
        
        
          onPressed: ()
          {
        print('wakadziya');
          },
           shape: RoundedRectangleBorder(
            
        side: BorderSide(
          
        ),
        borderRadius: BorderRadius.circular(50),

         ),
          ),
      ),

        Container(
              padding: EdgeInsets.only(top: 100),
              height: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/login.jfif'),
                  fit: BoxFit.fitHeight,

          )
              ),

            )

      
    ],
  ),
)


        ],
      ),



     ),
      
    );
  }
}

