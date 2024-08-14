// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      resizeToAvoidBottomInset: false,

      appBar: AppBar(
        elevation: 0,
        
        title: Text('Login'),
        backgroundColor: Colors.purple,
        leading: IconButton(
          onPressed: ()
          {
            
Navigator.pop(context);

          },
           icon: Icon(Icons.arrow_back)),
        
        ),
       

body: SingleChildScrollView(
  child: Container(
    padding: EdgeInsets.symmetric(horizontal: 40),
    height: MediaQuery.of(context).size.height,
    width: double.infinity,
    child:  Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[

        Column(
          children: <Widget>[
            Text('Sign up',style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),),
SizedBox(height: 20,),

Text('Create your Account!!', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold, color: Colors.green),),
          ],
        ),

         Container(
            padding: EdgeInsets.only(top: 30, left: 3),
             decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
               border: Border(
                  bottom: BorderSide(color: Colors.black),
                top: BorderSide(color: Colors.black),
                 right: BorderSide(color: Colors.black),
                 left: BorderSide(color: Colors.black),
               )
            ),
              child: MaterialButton(
                minWidth:double.infinity ,
               height: 60,
              
                onPressed: ()
               {

               },
               color: Color(0xff0099FF),
                elevation: 0,
               
               child:Text('Sign up',
               style: TextStyle(
                  fontWeight: FontWeight.w600,
                 fontSize: 18,
                 color: Colors.white,
               ),) ,

               ),
           ), 

Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Text('Already have an account ?'),
    Text('Login', style: TextStyle(
      fontWeight: FontWeight.w600,
      fontSize: 18,
    ),)  ],
),


        Column(
          children: <Widget>[

            inputFile(label: 'Username'),
                inputFile(label: 'Email'),
                    inputFile(label: 'Password', obscure: true),
                        inputFile(label: 'Confirm Password', obscure: true),  
          ],
        ),
        Container(
           padding: EdgeInsets.symmetric(),
        )



         
      ],
      
        ),
  ),
),


    );
  }

 Widget inputFile({label,obscure= false })
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(

          label,
          style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w600,
            color: Colors.black,
          ),
        ),

        SizedBox(height: 5,),
        TextField(
          obscureText: obscure,
          decoration: InputDecoration(
            contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: 10),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              )
            ),
            border: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),

            )
          ),
    

        ),
        SizedBox(height: 10,),

      ],
        

    );
  }






}