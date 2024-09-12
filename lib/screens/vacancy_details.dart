import 'package:flutter/material.dart';
import '../models/vacancy.dart';

class VacancyDetailsScreen extends StatelessWidget {
  final Vacancy vacancy;

  const VacancyDetailsScreen({super.key, required this.vacancy});

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final isPortrait =
        MediaQuery.of(context).orientation == Orientation.portrait;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 95, 157, 207),
        title: Text(
          vacancy.title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 24,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(isPortrait ? 16.0 : 32.0),
        child: ListView(
          children: [
            Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(12),
                child: Image.network(
                  vacancy.image_url,
                  height: isPortrait ? 150 : 100,
                  width: isPortrait ? 150 : 100,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 24),
            _buildDetailText('Company', vacancy.company, screenWidth),
            _buildDetailText('Location', vacancy.location, screenWidth),
            _buildDetailText('Description', vacancy.description, screenWidth),
            _buildDetailText('Salary', vacancy.salary, screenWidth),
            _buildDetailText('Date Posted', vacancy.date_posted, screenWidth),
            _buildDetailText(
                'Long Description', vacancy.long_description, screenWidth),
          ],
        ),
      ),
    );
  }

  Widget _buildDetailText(String label, String value, double screenWidth) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16.0),
      child: RichText(
        text: TextSpan(
          style: TextStyle(fontSize: screenWidth * 0.04, color: Colors.black),
          children: [
            TextSpan(
              text: '$label: ',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Color.fromARGB(255, 95, 157, 207),
              ),
            ),
            TextSpan(
              text: value,
              style: const TextStyle(
                fontWeight: FontWeight.normal,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
