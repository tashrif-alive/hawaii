import 'package:flutter/material.dart';
import 'package:hawaii/utils/text_styles.dart';
import 'package:hawaii/utils/theme_app.dart';

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Default Styles Example'),
      ),
      body: Padding(
        padding: AppWidgets.defaultPadding,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Hello, World!',
              style: StyleText.textStyle,
            ),
            Container(
              margin: AppWidgets.defaultMargin,
              child: ElevatedButton(
                onPressed: () {},
                child: Text('Click me'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}