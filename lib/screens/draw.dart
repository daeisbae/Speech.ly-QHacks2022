import 'package:draw_your_image/draw_your_image.dart';
import 'package:flutter/material.dart';

class DrawScreen extends StatefulWidget {
  @override
  _DrawScreenState createState() => _DrawScreenState();
}

class _DrawScreenState extends State<DrawScreen> {
  var _currentColor = Colors.black;
  var _currentWidth = 4.0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFBFFE2),
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Column(
          children: [
            const SizedBox(height: 120),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                child: Draw(
                  strokeColor: _currentColor,
                  strokeWidth: _currentWidth,
                ),
              ),
            ),
            const SizedBox(height: 22),
            Wrap(
              spacing: 16,
              children: [
                Colors.black,
                Colors.blue,
                Colors.red,
                Colors.green,
                Colors.yellow,
                Colors.white
              ].map(
                (color) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        _currentColor = color;
                      });
                      print(color);
                    },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Container(
                        width: 40,
                        height: 40,
                        color: color,
                        child: Center(
                          child: _currentColor == color
                              ? Icon(
                                  Icons.brush,
                                  color: Colors.white,
                                )
                              : SizedBox.shrink(),
                        ),
                      ),
                    ),
                  );
                },
              ).toList(),
            ),
            const SizedBox(height: 22),
            Slider(
              max: 40,
              min: 1,
              value: _currentWidth,
              onChanged: (value) {
                setState(() {
                  _currentWidth = value;
                });
              },
            ),
            const SizedBox(height: 40),
          ],
        ),
      ),
    );
  }
}
