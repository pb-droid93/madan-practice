import 'package:flutter/material.dart';
import 'package:practice_flutter/forms/form.dart';
import 'package:practice_flutter/ui/visa_card_design.dart';
import 'package:practice_flutter/utils/colors.dart';
import 'package:practice_flutter/widget/drop_down_list.dart';
import 'package:practice_flutter/widget/image_picker_widet.dart';
import 'package:practice_flutter/widget/location.dart';
import 'package:practice_flutter/widget/stack.dart';
import 'package:practice_flutter/widget/tab_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        brightness: Brightness.light,
        primaryColor: AppColors.bgColor,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const LocationTest(),
    );
  }
}
