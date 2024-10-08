import 'package:flutter/material.dart';

import '../../../../core/theme.dart';

import '../wigets/feeling_button.dart';
import '../wigets/task_card.dart';

class MeditationScreen extends StatelessWidget {
  const MeditationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image.asset('assets/menu_burger.png'),
        actions: const [
          CircleAvatar(
            backgroundImage: AssetImage('assets/profile.png'),
          ),
          SizedBox(width: 16,)
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
          child: Column(
            children: [
               Text("Welcome back!", style: TextStyle(
                  color: Colors.black, fontSize: 34, fontWeight: FontWeight.bold
                ),),
        
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
              ),
              SizedBox(height: 10,),
              Text("Today's Task",
              style: TextStyle(
                color: Colors.black, fontSize: 18,
                fontWeight: FontWeight.w500
              ),),
              SizedBox(height: 16,),
              TaskCard(
                  title: 'Morning',
                  description: "Let's open up to the thing that matters among the module",
                  color: DefaultColors.task1
              ),

              SizedBox(height: 16,),
              TaskCard(
                  title: 'Noon',
                  description: "Let's open up to the thing that matters among the module",
                  color: DefaultColors.task2
              ),

              SizedBox(height: 16,),
              TaskCard(
                  title: 'Evening',
                  description: "Let's open up to the thing that matters among the module",
                  color: DefaultColors.task3
              ),

            ],
          ),
        ),
    );
  }
}
