import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(app());
}
 class app extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
  return MaterialApp(
    debugShowCheckedModeBanner: false,
    title:'Hellow World',
    home: Home(),
  );
  }
 }

  class Home extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

      return Scaffold(

        appBar: AppBar(
        title:const Text('Need Blood'),
          centerTitle: true,
          backgroundColor: Colors.redAccent,
          actions:<Widget> [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},
            color: Colors.white,
            ),
          ],
        ),
        body:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
          children: [

            ProfileItem(
             icon: Icons.bloodtype,
              text: 'Donate Blood',

            ),
          ],
        ),
      );
        
  }
}

class ProfileItem extends StatelessWidget{
  final IconData icon;
  final String text;


   ProfileItem({required this.icon, required this.text});

  @override
  Widget build(BuildContext context) {
  return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Column(

        children: [
          CircleAvatar(
            radius: 120,
            backgroundColor: Colors.black45,
            child: Icon(
                icon,
              size: 200,
              color: Colors.red,
            ),
          ),
          SizedBox(height: 8),
          Text(
            text,
            textAlign:TextAlign.center,
            style: TextStyle(
                fontSize: 20

            ),
          )

        ],
      ),
    );
  }
}