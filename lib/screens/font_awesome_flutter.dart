import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class FontAwesomeFlutterScreen extends StatelessWidget {
  const FontAwesomeFlutterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Font Awesome Flutter'),
      ),
      body: GridView.count(
        padding: const EdgeInsets.all(20),
        mainAxisSpacing: 10,
        crossAxisSpacing: 10,
        crossAxisCount: 3,
        children: const [
          FaIcon(
            FontAwesomeIcons.airbnb,
            color: Colors.amber,
            size: 20,
          ),
          FaIcon(
            FontAwesomeIcons.apple,
            color: Colors.red,
            size: 50,
          ),
          FaIcon(FontAwesomeIcons.bitbucket),
          FaIcon(
            FontAwesomeIcons.github,
            size: 100,
            semanticLabel: 'GitHub',
            shadows: [
              Shadow(color: Colors.cyan, blurRadius: 10),
            ],
          ),
          FaIcon(FontAwesomeIcons.gitlab),
          FaIcon(FontAwesomeIcons.google),
          FaIcon(FontAwesomeIcons.instagram),
          FaIcon(FontAwesomeIcons.jenkins),
          FaIcon(FontAwesomeIcons.linkedin),
          FaIcon(FontAwesomeIcons.microsoft, color: Colors.blue, size: 80),
        ],
      ),
    );
  }
}
