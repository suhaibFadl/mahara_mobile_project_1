import 'package:flutter/material.dart';

class MostTakenTile extends StatelessWidget {
  final String courseName;
  final String backgroundPath;
  const MostTakenTile({
    super.key,
    required this.courseName,
    required this.backgroundPath,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: Row(
        children: [
          Container(
            height: 80,
            width: 120,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Image.asset(
                backgroundPath,
                fit: BoxFit.cover, // Adjust the fit as needed
              ),
            ),
          ),
          const SizedBox(width: 12),
          Text(
            courseName,
            style: const TextStyle(
              fontSize: 20,
            ),
          ),
        ],
      ),
    );
  }
}
