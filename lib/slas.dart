import 'dart:async';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_splash_page/login.dart';
import 'package:login_splash_page/main.dart';
import 'package:shared_preferences/shared_preferences.dart';

class slaspage extends StatefulWidget
{
  @override
  State<StatefulWidget> createState() {
    return slasstate();
  }
}
class slasstate extends State<slaspage>
{
  void initState() {
    Timer(Duration(seconds: 4), (){
      getData();
    });
    super.initState();
  }
  void getData() async
  {
    var dt=await SharedPreferences.getInstance();
    bool? b=dt.getBool('login');
    if(b!=null)
    {
      if(b)
      {
              Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => homepage())      );
      }
      else
      {
              Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => loginpage())      );
      }

    }
    else
    {
      Navigator.pushReplacement(context, MaterialPageRoute(builder:(context) => loginpage())      );
    }
  }
  
  
  Widget build(BuildContext context)
  {
    return Scaffold(
      body:Container(height: 815,width: 450,color:Colors.green,
        child:Icon(Icons.home,size:150)
      )
    );
  }
}