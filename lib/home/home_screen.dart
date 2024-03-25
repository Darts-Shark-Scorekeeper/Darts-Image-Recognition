import 'package:darts_ai_scoreboard/camera/navigation.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  void _newGame() {
    setState(() {

    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xff132433),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround, // Space evenly between top and bottom
        children: <Widget>[
          // Top section for text and logo
          Container(
            alignment: Alignment.center, // Center text within container
            child: const Text(
              'DartShark',
              style: TextStyle(
                fontFamily: 'Eden Mills',
                fontSize: 48,
                color: Colors.white,
              ),
            ),
          ),

          // Buttons section
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Space buttons evenly
              children: <Widget>[
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context, // Pass current context
                      MaterialPageRoute(builder: (context) => const BottomNavigationBarExample()), // Define the route to push
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(250.0, 75.0), // Set minimum width and height
                    backgroundColor: Color(0xff0E9C36)
                  ),
                  child: Text('New Game',
                    style: TextStyle(
                      fontFamily: 'Eden Mills',
                      fontSize: 36,
                      color: Colors.white
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                ElevatedButton(
                  onPressed: _newGame,
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(250.0, 75.0), // Set minimum width and height
                    backgroundColor: Color(0xffF30000)
                  ),
                  child: Text('Online',
                    style: TextStyle(
                      fontFamily: 'Eden Mills',
                      fontSize: 36,
                      color: Colors.white
                    ),
                  ),
                ),
                SizedBox(height: 25.0),
                ElevatedButton(
                  onPressed: _newGame,
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(250.0, 75.0), // Set minimum width and height
                    backgroundColor: Color(0xff0E9C36)
                  ),
                  child: Text('Account',
                    style: TextStyle(
                      fontFamily: 'Eden Mills',
                      fontSize: 36,
                      color: Colors.white
                    ),
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


