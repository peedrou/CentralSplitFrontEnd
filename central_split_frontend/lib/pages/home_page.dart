import 'package:central_split_frontend/util/emoticon_face.dart';
import 'package:central_split_frontend/util/exercise_tile.dart';
import 'package:flutter/material.dart';

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
      bottomNavigationBar: BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.message), label: ''),
        BottomNavigationBarItem(icon: Icon(Icons.person), label: ''),
      ]),
      body: SafeArea(
        child: Column(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hi, Jared!",
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "23 Jan, 2021",
                        style: TextStyle(color: Colors.blue[100]),
                      )
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.blue[600],
                        borderRadius: BorderRadius.circular(12)),
                    padding: EdgeInsets.all(12),
                    child: Icon(
                      Icons.notifications,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                decoration: BoxDecoration(
                    color: Colors.blue[600],
                    borderRadius: BorderRadius.circular(12)),
                padding: EdgeInsets.all(12),
                child: Row(
                  children: [
                    Icon(
                      Icons.search,
                      color: Colors.white,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(color: Colors.white),
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "How do you feel?",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.bold),
                  ),
                  Icon(
                    Icons.more_horiz,
                    color: Colors.white,
                  ),
                ],
              ),
              SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      EmoticonFace(emoticon_face: '😔'),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Bad",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      EmoticonFace(emoticon_face: '😐'),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Okay",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      EmoticonFace(emoticon_face: '😃'),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Happy",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                  Column(
                    children: [
                      EmoticonFace(emoticon_face: '🤩'),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "Joyous",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  )
                ],
              ),
            ]),
          ),
          SizedBox(
            height: 25,
          ),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(25),
              color: Colors.grey[200],
              child: Center(
                  child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Exercises",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                    Icon(Icons.more_horiz),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Expanded(
                    child: ListView(
                  children: [
                    ExerciseTile(
                      icon: Icons.favorite,
                      exerciseName: "Speaking Skills",
                      numberOfExercises: 15,
                      color: Colors.orange,
                    ),
                    ExerciseTile(
                      icon: Icons.person,
                      exerciseName: "Reading Skills",
                      numberOfExercises: 8,
                      color: Colors.green,
                    ),
                    ExerciseTile(
                      icon: Icons.book,
                      exerciseName: "Writing Skills",
                      numberOfExercises: 20,
                      color: const Color.fromARGB(255, 235, 124, 161),
                    ),
                  ],
                ))
              ])),
            ),
          )
        ]),
      ),
    );
  }
}
