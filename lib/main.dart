import 'package:flutter/material.dart';

import 'Image_Picker/ImagePickerPage.dart';

void main() {
  runApp(const DayToTask());
}
class DayToTask extends StatelessWidget {
  const DayToTask({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:ImagePicker(),
    );
  }
}


