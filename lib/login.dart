import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_splash_page/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class loginpage extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return SafeArea(
      child: Scaffold(
        body:Container(
          child:Column(children: [SizedBox(height: 15,),

            Text('LogIn_Page',style: TextStyle(fontSize: 40)),SizedBox(height: 15,),
  
            TextField(),SizedBox(height: 15,),

            ElevatedButton(onPressed: ()async{
              var dt=await SharedPreferences.getInstance();
              dt.setBool('login',true);
              
              Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => homepage())      );

            }, child: Text('Save'))


          ],)
        )
      ),
    );
  }
}
  
  
