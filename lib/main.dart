import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_splash_page/login.dart';
import 'package:login_splash_page/slas.dart';

void main()
{
  runApp(Apple());
}
class Apple extends StatelessWidget
{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow
      ),home:slaspage()
    );
  }
}
class homepage extends StatelessWidget
{
  Widget build(BuildContext context)
  {
    return Scaffold(
      body:Container(color:Colors.orange,height: double.infinity,width: double.infinity,
      child:Center(child: Text('Home_Page',style: TextStyle(fontSize: 40),))
      )
    );
  }
}