import 'package:todolist_app/daily.dart';
import 'package:todolist_app/monthly.dart';
import 'package:todolist_app/weekly.dart';
import 'package:flutter/material.dart';

class DashboardView extends StatefulWidget {
  const DashboardView({super.key});

  @override
  State<DashboardView> createState() => _DashboardViewState();
}

class _DashboardViewState extends State<DashboardView> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: 3,
        child: Scaffold(
          backgroundColor: const Color.fromARGB(255, 107, 121, 192),
          appBar: AppBar(
            title: const Text(
              'Dashboard',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25),
            ),
            backgroundColor: const Color.fromARGB(255, 107, 121, 192),
            actions: const [
              CircleAvatar(
                radius: 25,
                backgroundImage: AssetImage('assets/avatar.jpeg'),
              ),
              CircleAvatar(
                backgroundColor: Color.fromARGB(255, 107, 121, 192),
              )
            ],
            bottom: const TabBar(tabs: [
              Tab(text: "Today's Task"),
              Tab(text: "Weekly Task"),
              Tab(text: "Monthly Task"),
            ],),
          ),body: TabBarView(children: [
            DailyView(),
            const WeeklyView(),
            const MonthlyView()
          ]),
        ));
  }
}