import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("My Hobbies")),
        body: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              HobbyCard(
                title: "Travelling", 
                icon: Icons.public,
                backgroundcolor: Colors.green),
              HobbyCard(
                title: "Running", 
                icon: Icons.directions_run,
                backgroundcolor: Colors.blueGrey,),

            ],
          ),
        ),
      ),
    ),
  );
}

class HobbyCard extends StatelessWidget {
  final String title;
  final IconData icon;
  final Color backgroundcolor;

  const HobbyCard({
    super.key,
    required this.title,
    required this.icon,
    this.backgroundcolor = Colors.blue,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      height: 80,
      decoration: BoxDecoration(
        color: backgroundcolor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        children: [
          Icon(icon),
          SizedBox(width: 20),
          Text(
            title,
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
        ],
      ),
    );
  }
}
