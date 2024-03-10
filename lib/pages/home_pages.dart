import 'package:flutter/material.dart';
import 'package:stateemotion/utilities/emogis_faces.dart';
import 'package:stateemotion/utilities/exercises_tile.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blue[700],
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
            ),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.grid_view_rounded),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_rounded),
            label: '',
          )
        ],
      ),
      body: SafeArea(
        child: Column(children: [
          // Saludos y notifiacion
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'Hey, Hola bryan',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(
                          height: 8,
                        ),
                        Text(
                          '09 march, 2024',
                          style: TextStyle(
                            color: Colors.blue[100],
                          ),
                        )
                      ],
                    ),

                    // Notification
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12),
                      ),
                      padding: const EdgeInsets.all(10),
                      child: const Icon(
                        Icons.notifications,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),

                const SizedBox(
                  height: 25,
                ),

                // Search
                Container(
                  decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12),
                  ),
                  padding: const EdgeInsets.all(12),
                  child: const Row(
                    children: [
                      Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Search',
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                ),

                const SizedBox(
                  height: 25,
                ),

                // How do you feel
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'How do you feel?',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    )
                  ],
                ),

                const SizedBox(
                  height: 25,
                ),

                // diferents faces
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // bad
                    Column(
                      children: [
                        EmoticonFace(
                          emoticonFace: '😒',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Bad',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                    // fine
                    Column(
                      children: [
                        EmoticonFace(
                          emoticonFace: '😊',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Fine',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),

                    // well
                    Column(
                      children: [
                        EmoticonFace(
                          emoticonFace: '😄',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'well',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),

                    // excellent
                    Column(
                      children: [
                        EmoticonFace(
                          emoticonFace: '😎',
                        ),
                        SizedBox(
                          height: 8,
                        ),
                        Text(
                          'Excellent',
                          style: TextStyle(color: Colors.white),
                        )
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(25),
              color: Colors.grey[200],
              child: Center(
                child: Column(
                  children: [
                    // exercise heaging
                    const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Exercises',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        Icon(Icons.more_horiz),
                      ],
                    ),

                    const SizedBox(
                      height: 25,
                    ),

                    // list os exercises
                    Expanded(
                      child: ListView(
                        children: [
                          ExercisesTile(
                            icon: Icons.favorite,
                            exerciseName: 'Speaking Skills',
                            numberOfExercises: 16,
                            color: Colors.orange[400],
                          ),
                          ExercisesTile(
                            icon: Icons.person,
                            exerciseName: 'Reading Skills',
                            numberOfExercises: 8,
                            color: Colors.green[400],
                          ),
                          ExercisesTile(
                            icon: Icons.star,
                            exerciseName: 'Writing Skills',
                            numberOfExercises: 12,
                            color: Colors.pink[400],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
