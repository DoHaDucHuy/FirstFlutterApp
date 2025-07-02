import 'package:flutter/material.dart';

class SettingsScreen extends StatelessWidget {
  final void Function(int)? onTabChange;
  const SettingsScreen({this.onTabChange, super.key});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            Text("Settings Screen"),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Example action for the button
                if (onTabChange != null) {
                  onTabChange!(0); // Call the callback with an index
                }
              },
              child: Text("Go to Home"),
            ),
            ElevatedButton(
              onPressed: () {
                if (onTabChange != null) {
                  onTabChange!(2); // Call the callback with another index
                }
              },
              child: Text("Go to Info"),
            ),
          ],
        ),
      ),
    );
  }
}
