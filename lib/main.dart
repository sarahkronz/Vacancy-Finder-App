import 'package:flutter/material.dart';
import 'package:hirelink/screens/vacancy_list.dart';

void main() {
  runApp(const Hirelink());
}

class Hirelink extends StatelessWidget {
  const Hirelink({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'HireLink',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromARGB(255, 73, 143, 199),
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: const AppBarTheme(
          color: Color.fromARGB(255, 73, 143, 199),
          titleTextStyle: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      home: const VacancyListScreen(),
    );
  }
}
