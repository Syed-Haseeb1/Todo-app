import 'package:todolist_app/task.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 107, 121, 192),
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 107, 121, 192),
      ),
      body: Container(
        
        child: Center(
          child: Column(
            children: [
              const Text(
                'Manage Your \n Daily TO DO',
                style: TextStyle(fontSize: 25),
              ),
              SizedBox(height: 325, child: Image.asset("assets/ll.jpg")),
              const Text(
                'Without much worry just manage \n things as easy as piece of cake',
                style: TextStyle(fontSize: 20),
              ),
              ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.yellow,
                    foregroundColor: Colors.black,
                  ),
                  onPressed: () {
                    Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(builder: (context) => const TaskView()),
                    );
                  },
                  child: const Text('Start',style: TextStyle(fontWeight: FontWeight.bold),))
            ],
          ),
        ),
      ),
    );
  }
}