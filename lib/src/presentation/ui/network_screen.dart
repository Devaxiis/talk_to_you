import 'package:flutter/material.dart';


class NetworkScreen extends StatelessWidget {
  const NetworkScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Please check your internet"),
            SizedBox(height: 25),
            IconButton(
                onPressed: () {
                
                },
                icon: Icon(Icons.refresh)), 
            
          ],
        ),
      ),
    );
  }
}
