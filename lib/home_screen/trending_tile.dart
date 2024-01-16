import 'package:flutter/material.dart';

class TrendingTile extends StatelessWidget {
  final String description;
  final String logoPath;

  const TrendingTile(
      {super.key, required this.description, required this.logoPath});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 12),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Color.fromRGBO(224, 224, 224, 0.93),
      ),
      height: 200,
      width: 250,
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10.0),
              topRight: Radius.circular(10.0),
            ),
            child: Image.asset(
              'assets/courses-backgrounds/g2.jpg',
              height: 100,
              width: 250,
              fit: BoxFit.cover,
            ),
          ),
          Positioned(
            top: 65,
            left: 10,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(60),
                  child: Image.asset(
                    logoPath,
                    height: 65,
                    width: 65,
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  width: 150,
                  // margin: EdgeInsets.only(left: 10),
                  child: Text(
                    description,
                    style: const TextStyle(
                      fontSize: 19,
                    ),
                    softWrap: true,
                    overflow: TextOverflow.clip, // or TextOverflow.ellipsis
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
