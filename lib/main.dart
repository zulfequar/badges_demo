import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Badges Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool showBadge = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.deepPurple,
        foregroundColor: Colors.white,
        title: const Text('Badges Demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            badges.Badge(
              showBadge: showBadge,
              badgeContent: const Text('5'),
              child: const Icon(
                Icons.shopping_cart,
                color: Colors.indigo,
                size: 50.0,
              ),
            ),
            const SizedBox(height: 20),
            Wrap(
              spacing: 10,
              runSpacing: 10,
              children: [
                badges.Badge(
                  showBadge: showBadge,
                  badgeContent: const Text('5'),
                  position: badges.BadgePosition.topEnd(top: -2, end: -2),
                  badgeAnimation: const badges.BadgeAnimation.rotation(
                    animationDuration: Duration(seconds: 1),
                    loopAnimation: true,
                  ),
                  badgeStyle: badges.BadgeStyle(
                    shape: badges.BadgeShape.square,
                    borderRadius: BorderRadius.circular(5),
                    borderSide:
                        const BorderSide(color: Colors.indigo, width: 2),
                    borderGradient: const badges.BadgeGradient.linear(
                        colors: [Colors.white, Colors.blue, Colors.red]),
                    badgeGradient: const badges.BadgeGradient.linear(
                        colors: [Colors.red, Colors.greenAccent]),
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                  ),
                  child: const Icon(
                    Icons.shopping_bag,
                    color: Colors.black,
                    size: 50.0,
                  ),
                ),
                badges.Badge(
                  showBadge: showBadge,
                  badgeContent: const Text(
                    '20',
                    style: TextStyle(fontSize: 10),
                  ),
                  position: badges.BadgePosition.topEnd(top: -2, end: -2),
                  badgeAnimation: const badges.BadgeAnimation.slide(
                    animationDuration: Duration(seconds: 1),
                    loopAnimation: true,
                  ),
                  badgeStyle: const badges.BadgeStyle(
                    badgeColor: Colors.yellow,
                  ),
                  child: const Icon(
                    Icons.mail,
                    color: Colors.green,
                    size: 50.0,
                  ),
                ),
                badges.Badge(
                  showBadge: showBadge,
                  badgeContent: const Text(
                    '3',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  position: badges.BadgePosition.topEnd(top: -10, end: 0),
                  badgeAnimation: const badges.BadgeAnimation.fade(
                    animationDuration: Duration(seconds: 2),
                    disappearanceFadeAnimationDuration: Duration(seconds: 1),
                    loopAnimation: true,
                  ),
                  badgeStyle: const badges.BadgeStyle(
                    badgeColor: Colors.red,
                  ),
                  child: const Icon(
                    Icons.alarm,
                    color: Colors.blue,
                    size: 50.0,
                  ),
                ),
                badges.Badge(
                  showBadge: showBadge,
                  badgeContent: const Text(
                    '7',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  position: badges.BadgePosition.topEnd(top: -5, end: 2),
                  badgeAnimation: const badges.BadgeAnimation.scale(
                    animationDuration: Duration(seconds: 1),
                    loopAnimation: true,
                  ),
                  badgeStyle: const badges.BadgeStyle(
                    badgeColor: Colors.indigo,
                  ),
                  child: const Icon(
                    Icons.flight,
                    color: Colors.amber,
                    size: 50.0,
                  ),
                ),
                badges.Badge(
                  showBadge: showBadge,
                  badgeContent: const Text(
                    '4',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.white,
                    ),
                  ),
                  position: badges.BadgePosition.bottomEnd(bottom: 10, end: 0),
                  badgeAnimation: const badges.BadgeAnimation.size(
                    animationDuration: Duration(seconds: 1),
                    loopAnimation: true,
                  ),
                  badgeStyle: const badges.BadgeStyle(
                    badgeColor: Colors.teal,
                  ),
                  child: const Icon(
                    Icons.call,
                    color: Colors.indigo,
                    size: 50.0,
                  ),
                ),
                badges.Badge(
                  showBadge: showBadge,
                  badgeContent: const Icon(
                    Icons.check,
                    size: 15,
                    color: Colors.white,
                  ),
                  position: badges.BadgePosition.topEnd(top: -10, end: 0),
                  badgeAnimation: const badges.BadgeAnimation.scale(
                    animationDuration: Duration(seconds: 2),
                    loopAnimation: true,
                  ),
                  badgeStyle: const badges.BadgeStyle(
                    badgeColor: Colors.pink,
                    shape: badges.BadgeShape.twitter,
                  ),
                  child: const Icon(
                    Icons.account_circle,
                    color: Colors.blue,
                    size: 50.0,
                  ),
                ),
                badges.Badge(
                  showBadge: showBadge,
                  badgeContent: const Icon(
                    Icons.check,
                    size: 15,
                    color: Colors.white,
                  ),
                  position: badges.BadgePosition.topEnd(top: -10, end: 0),
                  badgeStyle: const badges.BadgeStyle(
                    badgeColor: Colors.blue,
                    shape: badges.BadgeShape.instagram,
                  ),
                  child: const Icon(
                    Icons.account_circle,
                    color: Colors.lightBlueAccent,
                    size: 50.0,
                  ),
                ),
                badges.Badge(
                  showBadge: showBadge,
                  badgeContent: const Icon(
                    Icons.check,
                    size: 15,
                    color: Colors.white,
                  ),
                  position: badges.BadgePosition.topEnd(top: -10, end: 0),
                  badgeStyle: const badges.BadgeStyle(
                    badgeColor: Colors.blue,
                    shape: badges.BadgeShape.twitter,
                  ),
                  child: const Icon(
                    Icons.account_circle,
                    color: Colors.pink,
                    size: 50.0,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                setState(() {
                  showBadge = !showBadge;
                });
              },
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const Text('Show badges '),
                  Switch(
                    value: showBadge,
                    onChanged: (newValue) {
                      setState(() {
                        showBadge = newValue;
                      });
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
