import 'package:flutter/material.dart';
import '../widgets/course_card.dart';

class CoursesPage extends StatefulWidget {
  const CoursesPage({Key? key}) : super(key: key);

  @override
  State<CoursesPage> createState() => _CoursesPageState();
}

class _CoursesPageState extends State<CoursesPage> {
  String searchQuery = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('التدريب والتطوير - الدورات'),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: const InputDecoration(
                hintText: 'ابحث عن دورة...',
                prefixIcon: Icon(Icons.search),
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  searchQuery = value;
                });
              },
            ),
          ),
          Expanded( 
            child: ListView(
              children: const [
                CourseCard(title: 'Flutter Clean Architecture', instructor: 'Bashir', price: 50.0),
                CourseCard(title: 'Cybersecurity Fundamentals', instructor: 'Ahmed', price: 30.0),
                CourseCard(title: 'Python for Security', instructor: 'Ali', price: 40.0),
              ],
            ),
          ),
        ],
      ),
    );
  }
}