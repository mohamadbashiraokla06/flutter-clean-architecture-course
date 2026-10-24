import 'package:flutter/material.dart';

class CourseCard extends StatelessWidget {
 final String title;
  final String instructor;
  final double price;

  const CourseCard({
    Key? key,
    required this.title,
    required this.instructor,
    required this.price,
  }) : super(key: key);
@override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Card( // Material Widget
      elevation: 4,
      margin: const EdgeInsets.all(8.0),
      child: Container(
        width: screenWidth * 0.9, 
        padding: const EdgeInsets.all(16.0),
        child: Row(
          children: [
            const Icon(Icons.book, size: 40, color: Colors.blue), // Material Icon
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text('Instructor: $instructor', style: const TextStyle(color: Colors.grey)),
                ],
              ),
            ),
            Text('\$$price', style: const TextStyle(fontSize: 16, color: Colors.green)),
          ],
        ),
      ),
    );
  }
}