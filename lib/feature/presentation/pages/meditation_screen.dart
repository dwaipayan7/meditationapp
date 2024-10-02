import 'package:flutter/material.dart';
import 'package:meditationapp/core/theme.dart';
import 'package:meditationapp/feature/presentation/wigets/feeling_button.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset('assets/menu_burger.png'),
        actions: [
          CircleAvatar(
            backgroundImage: AssetImage('assets/profile.png'),
          ),
          SizedBox(width: 16,)
        ],
      ),
      body:  SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 20),
              child: Text("Welcome back!", style: TextStyle(
                color: Colors.black, fontSize: 34, fontWeight: FontWeight.bold
              ),
              ),
            ),
            SizedBox(height: 32,),
            Text("How are you feeling today? ", style: TextStyle(
              color: Colors.black87, fontWeight: FontWeight.w500, fontSize: 16
            ),),
            SizedBox(height: 16,),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                FeelingButton(label: "Happy", image: 'assets/happy.png', color: DefaultColors.pink),
                FeelingButton(label: "Calm", image: 'assets/calm.png', color: DefaultColors.purple),
                FeelingButton(label: "Relax", image: 'assets/relax.png', color: DefaultColors.orange),
                FeelingButton(label: "Focus", image: 'assets/focus.png', color: DefaultColors.lightteal),
              ],
            )
          ],
        ),
      ),
    );
  }
}
