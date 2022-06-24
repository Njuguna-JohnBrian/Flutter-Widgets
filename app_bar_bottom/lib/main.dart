import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() => runApp(const BottomNavBar());

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Bottom Nav Bar Demo',
      theme: _buildShrineTheme(),
      home: Scaffold(
          bottomNavigationBar: BottomAppBar(
            child: Row(
              children: [
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.menu),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.search),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: const Icon(Icons.add),
            onPressed: () {},
          ),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          body: SafeArea(
            child: ListView(
              padding: const EdgeInsets.all(10.0),
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: const Text(
                        'Inbox',
                        style: TextStyle(
                          fontWeight: FontWeight.w300,
                          fontSize: 30.0,
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: const Text(
                        'Today',
                        style: TextStyle(
                          fontWeight: FontWeight.w400,
                          fontSize: 20.0,
                        ),
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    _buildList(
                        'https://i.pravatar.cc/150?u=1', 'Road Trip Today?', 1),
                    Divider(
                      color: Colors.grey.shade500,
                    ),
                    _buildList(
                        'https://i.pravatar.cc/150?u=2', 'Summber BBQ', 2),
                    Divider(
                      color: Colors.grey.shade500,
                    ),
                    _buildList('https://i.pravatar.cc/150?u=3',
                        'Recipe To Try Here', 3),
                    Divider(
                      color: Colors.grey.shade500,
                    ),
                    _buildList(
                        'https://i.pravatar.cc/150?u=4', 'Birthday Gift', 4),
                    Divider(
                      color: Colors.grey.shade500,
                    ),
                    _buildList(
                        'https://i.pravatar.cc/150?u=5', 'Baby Shower', 5),
                    Divider(
                      color: Colors.grey.shade500,
                    ),
                    _buildList(
                        'https://i.pravatar.cc/150?u=6', 'Game Night', 6),
                    Divider(
                      color: Colors.grey.shade500,
                    ),
                    _buildList(
                        'https://i.pravatar.cc/150?u=7', 'Feeling Well?', 7),
                    Divider(
                      color: Colors.grey.shade500,
                    ),
                    _buildList(
                        'https://i.pravatar.cc/150?u=8', 'Sunday Reminder', 8),
                    Divider(
                      color: Colors.grey.shade500,
                    ),
                    _buildList(
                        'https://i.pravatar.cc/150?u=9', 'Date Night', 9),
                    Divider(
                      color: Colors.grey.shade500,
                    ),
                    _buildList('https://i.pravatar.cc/150?u=10',
                        'Party at John\'s', 10),
                    Divider(
                      color: Colors.grey.shade500,
                    ),
                    _buildList('https://i.pravatar.cc/150?u=11',
                        'Music Policy Today?', 11),
                    Divider(
                      color: Colors.grey.shade500,
                    ),
                    _buildList(
                        'https://i.pravatar.cc/150?u=12', 'Phone Updates', 12),
                    Divider(
                      color: Colors.grey.shade500,
                    ),
                    _buildList('https://i.pravatar.cc/150?u=13',
                        'Tech Talk Fridays?', 13),
                    Divider(
                      color: Colors.grey.shade500,
                    ),
                    _buildList(
                        'https://i.pravatar.cc/150?u=14', 'Laptop Fixes', 14),
                    Divider(
                      color: Colors.grey.shade500,
                    ),
                    _buildList('https://i.pravatar.cc/150?u=15',
                        'Deployment Errors', 15),
                    Divider(
                      color: Colors.grey.shade500,
                    ),
                    _buildList(
                        'https://i.pravatar.cc/150?u=16', 'Boring JS', 16),
                    Divider(
                      color: Colors.grey.shade500,
                    ),
                    _buildList(
                        'https://i.pravatar.cc/150?u=17', 'Funny JS', 17),
                    Divider(
                      color: Colors.grey.shade500,
                    ),
                    _buildList(
                        'https://i.pravatar.cc/150?u=18', 'Binge Watching', 18),
                    Divider(
                      color: Colors.grey.shade500,
                    ),
                    _buildList(
                        'https://i.pravatar.cc/150?u=19', 'Out of options', 19),
                    Divider(
                      color: Colors.grey.shade500,
                    ),
                  ],
                )
              ],
            ),
          )),
    );
  }
}

Widget _buildList(
  String profile,
  String messageHeader,
  int messageIndex,
) {
  return Padding(
    padding: const EdgeInsets.all(1),
    child: Row(
      children: <Widget>[
        Container(
          height: 40.0,
          width: 40.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.red,
            image: DecorationImage(
              image: NetworkImage(
                profile,
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(messageHeader,
                style: TextStyle(fontSize: 10.0, fontWeight: FontWeight.w800)),
            const SizedBox(
              height: 3.0,
            ),
            Row(
              children: const [
                Text('John Brian'),
                SizedBox(width: 10),
                Text('---'),
                SizedBox(width: 7),
                Text('We will be having some awesome...')
              ],
            )
          ],
        ),
        Divider(
          color: Colors.grey.shade500,
        ),
      ],
    ),
  );
}

ThemeData _buildShrineTheme() {
  final ThemeData base = ThemeData.light();
  return base.copyWith(
    colorScheme: _shrineColorScheme,
    textTheme: _buildShrineTextTheme(base.textTheme),
  );
}

TextTheme _buildShrineTextTheme(TextTheme base) {
  return base
      .copyWith(
        caption: base.caption?.copyWith(
          fontWeight: FontWeight.w400,
          fontSize: 14,
          letterSpacing: defaultLetterSpacing,
        ),
        button: base.button?.copyWith(
            fontWeight: FontWeight.w500,
            fontSize: 14,
            letterSpacing: defaultLetterSpacing),
      )
      .apply(
        fontFamily: 'Rubik',
        bodyColor: shrineBrown900,
        displayColor: shrineBrown900,
      );
}

const ColorScheme _shrineColorScheme = ColorScheme(
  primary: shrinePink100,
  primaryVariant: shrineBrown900,
  secondary: shrinePink50,
  secondaryVariant: shrineBrown900,
  surface: shrineSurfaceWhite,
  background: shrineBackgroundWhite,
  error: shrineErrorRed,
  onPrimary: shrineBrown900,
  onSecondary: shrineBrown900,
  onSurface: shrineBrown900,
  onBackground: shrineBrown900,
  onError: shrineSurfaceWhite,
  brightness: Brightness.light,
);

const Color shrinePink50 = Color(0xFFFEEAE6);
const Color shrinePink100 = Color(0xFFFEDBD0);
const Color shrinePink300 = Color(0xFFFBB8AC);
const Color shrinePink400 = Color(0XFFEAA4A4);

const Color shrineBrown900 = Color(0xFF442B2D);
const Color shrineBrown600 = Color(0xFF7D4F52);

const Color shrineErrorRed = Color(0XFFC5032B);

const Color shrineSurfaceWhite = Color(0xFFFFFBFA);
const Color shrineBackgroundWhite = Colors.white;

const defaultLetterSpacing = 0.3;
