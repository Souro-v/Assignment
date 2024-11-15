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
          title: const Text('My Profile') ,
          backgroundColor: Colors.amber,
          actions:<Widget> [
            IconButton(
              icon: const Icon(Icons.add),
              onPressed: () {},

            ),
            IconButton(
            icon: const Icon(Icons.settings),
             onPressed: () {},
            ),
            IconButton(
            icon: const Icon(Icons.call),
            onPressed: () {},
            ),
          ],
        ),
        body:  Column(
      mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ProfileItem(
             icon: Icons.icecream_rounded,
              text: 'Ice Cream is very delicious right?',
            ),
            ProfileItem(
              icon: Icons.code,
              text: "Programming is not boring if you love it",
            ),
           ProfileItem(
             icon: Icons.egg_alt_outlined,
             text: "If you submit code directly copy from chatgpt then mark will 0",
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
            radius: 80,
            backgroundColor: Colors.deepPurple.shade100,
            child: Icon(
                icon,
              size: 80,
              color: Colors.purple.shade900,
            ),
          ),
          SizedBox(height: 8),
          Text(
            text,
            textAlign:TextAlign.center,
            style: TextStyle(
                fontSize: 19
            ),
          )
        ],
      ),
    );
  }
}