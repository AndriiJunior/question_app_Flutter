import 'package:flutter/material.dart';
import './game_page.dart';

class HomePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _HomePageState();
  }
}

class _HomePageState extends State<HomePage> {
  double _currentSliderValue = 0;
  List<String> _labelName = ["Easy", "Medium", "Hard"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          mainAxisSize: MainAxisSize.max,
          children: [
            Column(
              children: [
                Text(
                  "Quize App",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 55,
                      fontWeight: FontWeight.w500),
                ),
                Text(
                  _labelName[_currentSliderValue.toInt()],
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w500),
                ),
              ],
            ),
            _dificaltySlider(),
            _startButton(),
          ],
        ),
      ),
    );
  }

  Widget _dificaltySlider() {
    return Slider(
      value: _currentSliderValue,
      onChanged: (double value) {
        setState(
          () {
            _currentSliderValue = value;
          },
        );
      },
      max: 2,
      divisions: 2,
      label: _labelName[_currentSliderValue.toInt()],
    );
  }

  Widget _startButton() {
    return ElevatedButton(
        onPressed: () {
          Navigator.push(context,
              MaterialPageRoute(builder: (BuildContext _context) {
            return GamePage(
              diffciultyLevel:
                  _labelName[_currentSliderValue.toInt()].toLowerCase(),
            );
          }));
        },
        child: Text(
          "Start",
          style: TextStyle(
            color: Colors.white,
            fontSize: 30,
          ),
        ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(350, 50),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(18)),
        ));
  }
}
