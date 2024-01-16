import 'package:flutter/material.dart';
import 'package:maharah_project/home_screen/most_taken_tile.dart';
import 'package:maharah_project/home_screen/trending_tile.dart';
import 'package:maharah_project/models/most_taken_model.dart';
import 'package:maharah_project/models/trending_models.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(255, 255, 255, 0.899),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 32),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    'Hello,\nSuhaib Fadl',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 36,
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(72),
                      color: Colors.white54,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Image.asset(
                        'assets/images/user_profile_image.png',
                        width: 45,
                        height: 45,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 42),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Trending',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  )
                ],
              ),
              SizedBox(height: 24),
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: trending_list.length, // Adjust as needed
                  itemBuilder: (context, index) {
                    return TrendingTile(
                      description: trending_list[index].description,
                      logoPath: trending_list[index].logoPath,
                    );
                  },
                ),
              ),
              const SizedBox(height: 42),
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Most Taken',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                    ),
                  ),
                  Text(
                    'See All',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 72, 166, 243),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 24),
              ...most_taken_list.map((course) {
                return MostTakenTile(
                  courseName: course.name,
                  backgroundPath: course.backgroundPath,
                );
              }),
              // ListView.builder(
              //   scrollDirection: Axis.horizontal,
              //   itemCount: most_taken_list.length, // Adjust as needed
              //   itemBuilder: (context, index) {
              //     return MostTakenTile(
              //       courseName: most_taken_list[index].name,
              //       backgroundPath: most_taken_list[index].backgroundPath,
              //     );
              //   },
              // ),
              // const MostTakenTile(
              //   courseName: 'UI/UX Visual Design',
              //   backgroundPath: 'assets/courses-backgrounds/batman.jpg',
              // ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        // shape:
        backgroundColor: Colors.blue,
        onPressed: () {
          // Add your onPressed logic here
          print('Floating Action Button Pressed');
        },
        child: const Icon(Icons.shopping_cart, color: Colors.white),
      ),
    );
  }
}

List<TrendingModel> trending_list = [
  TrendingModel(
    // 'HTML',
    'assets/courses-backgrounds/html.webp',
    'Chat with the smartest AI now',
  ),
  TrendingModel(
    // 'CSS',
    'assets/courses-backgrounds/css.png',
    'Chat with the smartest AI now',
  ),
  TrendingModel(
    // 'CSS',
    'assets/courses-backgrounds/js.webp',
    'Chat with the smartest AI now',
  ),
];
List<MostTakenModel> most_taken_list = [
  MostTakenModel('UI/UX Visual Design', 'assets/courses-backgrounds/UIUX.jpg'),
  MostTakenModel(
      'Photography Basics - 101', 'assets/courses-backgrounds/photography.jpg'),
  MostTakenModel('Basics of Logical Thinking',
      'assets/courses-backgrounds/logical-thinking.jpg'),
  MostTakenModel(
      'Space Science', 'assets/courses-backgrounds/space-science.jpg'),
];
