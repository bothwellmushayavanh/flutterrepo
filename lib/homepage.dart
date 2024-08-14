// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:app/login.dart';
import 'package:app/ma1.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.purple,
        title: Text('Soft-Quicktech Technologies',
        style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold,
          fontSize: 20,
        ),),
        leading: Builder(
          builder: (context) {
            return IconButton(
              onPressed: () 
              {
            Scaffold.of(context).openDrawer();
            
              }, 
              icon: const Icon(Icons.menu));
          }
        ),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            DrawerHeader(
              child: Text('Softquick Technologies', style: TextStyle(color: Colors.blue),),

              ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25.0),
             // child: Divider(
             //   color: Colors.grey,
             // ),
              ),
             GestureDetector(
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));
              },
               child: const Padding(
                  padding:  EdgeInsets.only(left:25.0 ),
                  child: ListTile(
                    leading: Icon(Icons.login),
                    title: Text('Login'),
                  ),
                  ),
             ),

                 const Padding(
                padding:  EdgeInsets.only(left:25.0 ),
                child: ListTile(
                  leading: Icon(Icons.info),
                  title: Text('About us'),
                ),
                ),

                 const Padding(
                padding:  EdgeInsets.only(left:25.0 ),
                child: ListTile(
                  leading: Icon(Icons.settings),
                  title: Text('Settings'),
                ),
                ),

                 GestureDetector(
                  onTap: () {
                    
                  },
                   child: const Padding(
                                   padding:  EdgeInsets.only(left:25.0 ),
                                   child: ListTile(
                    leading: Icon(Icons.person),
                    title: Text('Profile'),
                                   ),
                                   ),
                 ),
          ],
        ),
      ),
      body: SafeArea(
        child:Container(
          width: double.infinity,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.symmetric(horizontal: 30, vertical: 50),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Column(
                children: <Widget>[
                  Text('Welcome', 
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                  ),
                  SizedBox(height: 20,),

                  Text('Welcome to SoftQuick Technologies. SoftQiuick Technologies make life easlier',
                 textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,

                  ),
                  ),

                  
                ],

                
              ),
              Container(
                height: MediaQuery.of(context).size.height/3,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/welcome.png'),
                    ),
                ),
              ),
Column(
  children: [
    MaterialButton(
      minWidth: double.infinity,
      height: 60,
      onPressed: ()
      {
        Navigator.push(context, MaterialPageRoute(builder: (context)=>LoginPage()));

      },
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black
        ),
        borderRadius: BorderRadius.circular(50),

         ),
         child: Text('LOGIN',
         style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 18
         ),
         ),

      ),
      SizedBox(height: 20,),

      MaterialButton(
        minWidth: double.infinity,
        height: 60,

        onPressed: ()
        {
Navigator.push(context, MaterialPageRoute(builder: (context)=>CreateAccount()));

        },
        color: Color(0xff0095FF),
         shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Colors.black
        ),
        borderRadius: BorderRadius.circular(50),

         ),
         child: Text('SIGN UP',
         style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.w600,
          fontSize: 18
         ),
         ),

        )
  ],
)







            ],

          ),

          
          
        ),
        ),
    );
  }
}

