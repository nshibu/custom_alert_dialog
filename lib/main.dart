import 'package:custom_alert_dialog/custom_alert_dialog.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Custom Alert Dialog Demo',
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MaterialButton(
          color: Theme.of(context).primaryColor,
          onPressed: () {
            showDialog(
              barrierColor: Colors.black26,
              context: context,
              builder: (context) {
                return CustomAlertDialog(
                  title: "Popup Dialog Title",
                  description: "Custom Popup dialog Description.",
                );
              },
            );
          },
          child: Text("Click Button"),
        ),
      ),
    );
  }
}
