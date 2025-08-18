import 'package:flutter/material.dart';
import 'package:recipebook/screens/home_screen.dart';
void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Libro de las plantas",
      home: PlantsBook());
  }
}

class PlantsBook extends StatelessWidget {
  const PlantsBook({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber.shade300,
          title: const Text(
            "Medicina Natural",
            style: TextStyle(color: Color.fromARGB(255, 8, 8, 8)),
          ),
          bottom: const TabBar(
            indicatorColor: Colors.blue,
            labelColor: Colors.white,
            unselectedLabelColor: Colors.white,
            tabs: [
              Tab(
                icon: Icon(Icons.home),
                text: "Home",
              ),
              Tab(
                icon: Icon(Icons.question_mark),
                text: "Question",
              ),
              Tab(
                icon: Icon(Icons.people),
                text: "People",
              ),
              Tab(
                icon: Icon(Icons.info),
                text: "Info",
              )
            ],
          ),
        ),
        body: const TabBarView(children: [HomeScreen()]),
      ),
    );
  }
}