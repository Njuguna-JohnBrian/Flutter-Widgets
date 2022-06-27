import 'package:flutter/material.dart';
import 'appbars/defaultAppBar.dart';
import 'themes/app_theme.dart';
import 'appbars/selectedAppBar.dart';

void main() => runApp(const TopNavBar());

class TopNavBar extends StatelessWidget {
  const TopNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Top Nav Demo',
      home: const HomePage(),
      theme: buildShrineTheme(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// Home Page
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: SelectedAppBar()
    );
  }
}
  

