import 'package:cinelyric/elements/appbar.dart';
import 'package:cinelyric/elements/bottombar.dart';
import 'package:cinelyric/screens/movie_home.dart';
import 'package:cinelyric/screens/music_home.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(),
      body: ListView(
        children: [
          const SizedBox(height: 20),
          const Text(
            'You prefer movies or music?',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.w600),
            textAlign: TextAlign.center,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MovieHome()),
              );
            },
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: const BoxDecoration(
                boxShadow: [
                  // BoxShadow(
                  //   color: Color.fromARGB(255, 245, 245, 245).withOpacity(0.5),
                  //   spreadRadius: 5,
                  //   blurRadius: 7,
                  //   offset: Offset(0, 3),
                  // ),
                ],
              ),
              child: Column(
                children: [
                  Image.asset('assets/movie_image.png', width: double.infinity),
                  const Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Movies',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        color: const Color.fromARGB(255, 0, 0, 0),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: 5,
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => MusicHome()),
              );
            },
            child: Container(
              margin: EdgeInsets.all(8),
              decoration: BoxDecoration(
                boxShadow: [
                  // BoxShadow(
                  //   spreadRadius: 5,
                  //   blurRadius: 7,
                  //   offset: Offset(0, 3),
                  // ),
                ],
              ),
              child: Column(
                children: [
                  Image.asset('assets/music_image.png', width: double.infinity),
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text(
                      'Music',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const Divider(
            color: Colors.black,
            thickness: 5,
          ),
          Container(
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                border: Border.all(color: Colors.black),
                borderRadius: BorderRadius.circular(10),
                //color: const Color.fromARGB(71, 255, 82, 82),
                color: Color.fromRGBO(
                  60,
                  104,
                  177,
                  0.5,
                )),
            child: Column(
              children: [
                const Divider(
                  color: Colors.black,
                  thickness: 2,
                ),
                ListTile(
                  title: const Text(
                    'Fun Facts',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                  trailing: GestureDetector(
                    onTap: () {
                      Navigator.pushNamed(context, '/funfact');
                    },
                    child: const Icon(
                      Icons.lightbulb_outline_sharp,
                      color: Colors.redAccent,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: MyAppBottomBar(),
    );
  }
}
